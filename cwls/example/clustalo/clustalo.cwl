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
baseCommand: clustalo_lwp.pl
hints:
  DockerRequirement:
    dockerPull: ebiwp/webservice-clients

inputs:
  email:
    type: string
    inputBinding:
      prefix: --email
    default: 'youremail@ebi.ac.uk'
  outformat:
    type: string
    inputBinding:
      prefix: --outformat
    default: 'aln-clustal_num'
  outfile:
    type: string
    inputBinding:
      prefix: --outfile
    default: '-'
  sequences:
    type: File
    inputBinding:
      prefix: --sequence

outputs:
  clustalo_out:
    type: stdout
