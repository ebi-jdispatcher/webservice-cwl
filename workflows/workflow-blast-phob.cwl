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
  sequence: string
  program: string
  database: string
  type: string
  outformat: string

outputs:
  workflow_output:
    type: File
    outputSource: phobius_step/out

steps:
  ncbiblast_step:
    run: 'ncbiblast.cwl'
    in:
      sequence: sequence
      email: email
      program: program
      database: database
      type: type
      outformat: outformat
    out: [protein_sequence]

  phobius_step:
    run: 'phobius.cwl'
    in:
      sequence: ncbiblast_step/protein_sequence
      email: email
    out: [out]
