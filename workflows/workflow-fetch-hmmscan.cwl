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
  accessions: string
  method: string
  email: string
  outformat: string
  database: string


outputs:
  workflow_output:
    type: File
    outputSource: hmmscan_step/hmmscan_ids

steps:
  dbfetch_step:
    run: 'dbfetch.cwl'
    in:
      accessions-string: accessions
      method: method
      outformat: outformat
    out: [sequences]

  hmmscan_step:
    run: 'hmmer3_hmmscan.cwl'
    in:
      sequence: dbfetch_step/sequences
      email: email
      database: database
    out: [hmmscan_ids]
