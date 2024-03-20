#!/usr/bin/env cwl-runner

# Copyright (C) 2019 - 2024 EMBL - European Bioinformatics Institute
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
class: CommandLineTool
baseCommand: python
inputs:

  command:
    type: File
    inputBinding:
      position: 0
    default:
      class: File
      location: ../../webservice-clients/python/dbfetch.py

  method:
    type: string
    doc: Type of command-line interface.
    inputBinding:
      position: 4
    default: 'fetchData'

  dbName:
    type: string
    doc: Database to be searched.
    inputBinding:
      position: 5
    default: 'uniprot'

  idList:
    type: string
    doc: fetching idList
    inputBinding:
      position: 6
    default: 'WAP_RAT'

  outFormat:
    type: string
    doc: Format of the output
    inputBinding:
      position: 7
    default: 'fasta'

outputs:
  cwl_out:
    type: stdout
