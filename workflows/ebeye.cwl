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
class: CommandLineTool
baseCommand: sh


inputs:

  command:
    type: File
    inputBinding:
      position: 0
    default:
      class: File
      location: 'ebeye.sh'

  perl:
    type: File
    inputBinding:
      position: 1
    default:
      class: File
      location: ../../webservice-clients/perl/lwp/ebeye_lwp.pl

  method:
    type: string
    inputBinding:
      position: 2
    default: 'getReferencedEnteries'

  domain:
    type: string?
    inputBinding:
      position: 3
    default: 'uniprot'

  query:
    type: string?
    inputBinding:
      position: 7

  fields:
    type: string?
    inputBinding:
      position: 6
    default: 'id,acc'

  entryids:
    type: string?
    inputBinding:
      position: 4
    default: 'mgst1_human'

  referencedDomain:
    type: string?
    inputBinding:
      position: 5
    default: 'pdb'

  targetedDomain:
    type: string?
    inputBinding:
      position: 7

  term:
    type: string?
    inputBinding:
      position: 9


outputs:
  ebeye_out:
    type: stdout
