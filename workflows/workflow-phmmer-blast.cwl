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
  database: string

  method: string
  outformat: string
  db: string

  program: string
  type: string
  multifasta: string
  useSeqId: string
  outf: string

outputs:
  workflow_output:
    type:
      type: array
      items: File
    outputSource: ncbiblast_step/blast_array_accs

steps:
  phmmer_step:
    run: 'hmmer3_phmmer.cwl'
    in:
      sequence: sequence
      email: email
      database: database
    out: [phmmer_ids]

  dbfetch_step:
    run: 'dbfetch.cwl'
    in:
      accessions-file: phmmer_step/phmmer_ids
      method: method
      outformat: outformat
      database: db
    out: [sequences]

  ncbiblast_step:
    run: 'ncbiblast.cwl'
    in:
      sequence_file: dbfetch_step/sequences
      email: email
      database: db
      program: program
      type: type
      multifasta: multifasta
      useSeqId: useSeqId
      outformat: outf
    out: [blast_array_accs]
