#!/usr/bin/env cwl-runner

# Copyright (C) 2018 - 2024 EMBL - European Bioinformatics Institute
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#      http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

cwlVersion: v1.0
class: Workflow

inputs:
  sequence: string
  email: string
  program: string
  database: string
  type: string
  method: string
  stype: string

outputs:
  workflow_output:
    type: File
    outputSource: phylogeny_step/tree

steps:
  ncbiblast_step:
    run: 'ncbiblast.cwl'
    in:
      sequence_string: sequence
      email: email
      program: program
      database: database
      type: type
    out: [blast_ids]

  dbfetch:
    run: 'dbfetch.cwl'
    in:
      accessions-file: ncbiblast_step/blast_ids
      method: method
    out: [sequences]

  clustalo_step:
    run: 'clustalo.cwl'
    in:
      sequences: dbfetch/sequences
      email: email
      stype: stype
    out: [clustalo_out]

  phylogeny_step:
    run: 'simple_phylogeny.cwl'
    in:
      alignment: clustalo_step/clustalo_out
    out: [tree]
