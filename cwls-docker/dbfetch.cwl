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
baseCommand: dbfetch.pl
hints:
  DockerRequirement:
    dockerPull: ebiwp/webservice-clients

inputs:

  method:
    type:
        type: enum
        symbols:
          - fetchData
          - fetchBatch
    doc: Type of command-line interface.
    inputBinding:
      position: 0

  dbName:
    type: string?
    doc: Database to be searched.
    inputBinding:
      position: 1

  idList:
    type: string[]
    doc: fetching idList
    inputBinding:
      itemSeparator: ","
      position: 2

  outFormat:
    type: string?
    doc: Format of the output
    inputBinding:
      position: 3

outputs:
  out:
    type: stdout


$schemas:
  - http://schema.org/docs/schema_org_rdfa.html

$namespaces:
  s: http://schema.org/

s:license:
  - https://www.apache.org/licenses/LICENSE-2.0
  - https://spdx.org/licenses/Apache-2.0

s:copyrightHolder: "European Bioinformatics Institute (EMBL-EBI), Web Production"
