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
class: CommandLineTool
baseCommand: sh

# depending on whether you are using a File or string input you need to change position values, currently set for string input. For file input give accessions position 1, numberAccessions 2, perl position 3 etc
# additionally you need change to use dbfetch-file.sh rather than dbfetch-string.sh

inputs:

  command:
    type: File
    inputBinding:
      position: 0
    default:
      class: File
      location: 'dbfetch-file.sh'

  accessions:
    type: File?
    inputBinding:
      position: 1

  numberAccessions:
    type: string?
    inputBinding:
      position: 2
    default: '15'

  perl:
    type: File
    inputBinding:
      position: 3
    default:
      class: File
      location: ../../webservice-clients/perl/dbfetch.pl

  method:
    type: string
    inputBinding:
      position: 4
    default: 'fetchBatch'

  database:
    type: string
    doc: Database to be searched.
    inputBinding:
      position: 5
    default: 'uniprot'

  outformat:
    type: string
    doc: Format of the output
    inputBinding:
      position: 6
    default: 'fasta'

  outstyle:
    type: string
    doc: Style of the output
    inputBinding:
      position: 7
    default: 'raw'

outputs:
  sequences:
    type: stdout
