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
baseCommand: perl

inputs:

  command:
    type: File
    inputBinding:
      position: 0

    default:
      class: File
      location: ../../webservice-clients/perl/iprscan5.pl

  email:
    type: string
    inputBinding:
      prefix: --email

  sequence:
    type: File
    inputBinding:
      prefix: --sequence

  title:
    type: string?
    inputBinding:
      prefix: --title

  goterms:
    type: boolean?
    inputBinding:
      prefix: --goterms


  pathways:
    type: boolean?
    inputBinding:
      prefix: --pathways

  appl:
    type: string?
    inputBinding:
      prefix: --appl

  outformat:
    type: string?
    inputBinding:
      prefix: --outformat
    default: 'json'

outputs:
  iprscan5_out:
    type: File
    outputBinding:
      glob: "*.json.*"
