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
baseCommand: perl

inputs:

  command:
    type: File
    inputBinding:
      position: 0

    default:
      class: File
      location: ../../webservice-clients/perl/clustalo.pl


  email:
    type: string
    inputBinding:
      prefix: --email
    default: 'test@ebi.ac.uk'

  sequences:
    type: File
    inputBinding:
      prefix: --sequence

  stype:
    type: string
    inputBinding:
      prefix: --stype

  outfile:
    type: string
    inputBinding:
      prefix: --outfile
    default: 'clustalo_out'

  outformat:
    type: string
    inputBinding:
      prefix: --outformat
    default: 'aln-clustal_num'

outputs:
  clustalo_out:
    type: File
    outputBinding:
      glob: "*clustalo_out.aln-clustal_num*"
