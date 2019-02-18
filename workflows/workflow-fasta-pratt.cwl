#!/usr/bin/env cwl-runner

# Copyright (C) 2018 EMBL - European Bioinformatics Institute
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
  email: string
  sequence: File
  program: string
  database: string
  stype: string
  numberAccessions: string
  method: string

outputs:
  workflow_output:
    type: File
    outputSource: pratt_step/pratt_out

steps:
  fasta_step:
    run: 'fasta.cwl'
    in:
      email: email
      sequence: sequence
      program: program
      database: database
      stype: stype
    out: [fasta_ids]

  dbfetch_step:
    run: 'dbfetch.cwl'
    in:
      accessions-file: fasta_step/fasta_ids
      numberAccessions: numberAccessions
      method: method
    out: [sequences]

  pratt_step:
    run: 'pratt.cwl'
    in:
      sequence: dbfetch_step/sequences
      email: email
      stype: stype
    out: [pratt_out]
