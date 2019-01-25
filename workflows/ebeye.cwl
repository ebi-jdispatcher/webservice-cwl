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


inputs:

  command:
    type: File
    inputBinding:
      position: 0
    default:
      class: File
      location: 'ebeye.sh'

# use positions to make the request properly, each part needs to be in the correct order for ebi search to work correctly use -- help for ebeye perl client to know what order you need
# current state is to correctly run getReferenced
  perl:
    type: File
    inputBinding:
      position: 1
    default:
      class: File
      location: ../../webservice-clients/perl/ebeye_lwp.pl

  method:
    type: string
    inputBinding:
      position: 2
    default: 'getDomainHierarchy'

  domain:
    type: string?
    inputBinding:
      position: 3
    default: 'uniprot'

  query:
    type: string?
    inputBinding:

  entryid:
    type: string?
    inputBinding:

  entryids:
    type: string?
    inputBinding:
      position: 4

  fields:
    type: string?
    inputBinding:
      position: 6

  referencedDomain:
    type: string?
    inputBinding:
      position: 5

  targetedDomain:
    type: string?
    inputBinding:


  term:
    type: string?
    inputBinding:


outputs:
  ebeye_out:
    type: stdout
