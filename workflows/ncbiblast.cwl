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
baseCommand: ncbiblast.pl
hints:
  DockerRequirement:
    dockerPull: ebiwp/webservice-clients

inputs:
  email:
    type: string
    doc: Submitter's email.
    inputBinding:
      prefix: --email
    default: 'youremail@ebi.ac.uk'
  program:
    type: string
    inputBinding:
      prefix: --program
    default: 'blastp'
  database:
    type: string
    inputBinding:
      prefix: --database
    default: 'uniprotkb_swissprot'
  type:
    type: string
    inputBinding:
      prefix: --stype
    default: 'protein'
  sequence:
    type: string
    inputBinding:
      prefix: --sequence
    default: 'uniprot:ph4h_human'
  alignments:
    type: int
    inputBinding:
      prefix: --alignments
    default: 10
  scores:
    type: int
    inputBinding:
      prefix: --scores
    default: 10
  outformat:
    type: string
    inputBinding:
      prefix: --outformat
    default: 'ids'
  outfile:
    type: string
    inputBinding:
      prefix: --outfile
    default: '-'

outputs:
  ids:
    type: stdout
