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
baseCommand: iprscan5_lwp.pl
hints:
  DockerRequirement:
    dockerPull: ebiwp/webservice-clients

inputs:

  # Web Service Clients: Common Entries
  email:
    type: string
    doc: "Submitter's email"
    inputBinding:
      prefix: --email

  title:
    type: string?
    inputBinding:
      prefix: --title

  jobid:
    type: string?
    inputBinding:
      prefix: --jobid

  polljob:
    type: boolean?
    inputBinding:
      prefix: --polljob

  outformat:
    type: string?
    inputBinding:
      prefix: --outformat

  pollfreq:
    type: int?
    inputBinding:
      prefix: --pollFreq

  params:
    type: boolean?
    inputBinding:
      prefix: --params
      position: 1

  paramdetails:
    type: string?
    inputBinding:
      prefix: --paramDetail

  # Web Service Clients: Different Entries
  sequence:
    type: string?
    inputBinding:
      prefix: --sequence

  goterms:
    type: boolean?
    inputBinding:
      prefix: --goterms

  pathways:
    type: boolean?
    inputBinding:
      prefix: --pathways

  appl:
    # This supposes to allow multiple appl options:
    # --a Coils --a CDD -> should results in --appl Coils,CDD
    # However, it doesn't: [issue reported](https://github.com/common-workflow-language/cwltool/issues/576)
    type:
        - "null"
        - type: array
          items:
              type: enum
              symbols:
                - PrositePatterns
                - SuperFamily
                - SignalP
                - TMHMM
                - Panther
                - Gene3d
                - Phobius
                - Coils
                - CDD
                - SFLD
          inputBinding:
            itemSeparator: ","
            prefix: --appl

  input-file:
    type: File?
    inputBinding:
      position: 1


outputs:
  all-out:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*"

  out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.out.txt"

  log:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.log.txt"

  tsv:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.tsv.txt"

  xml:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.xml.xml"

  htmltarball:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.htmltarball.html.tar.gz"

  gff:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.gff.txt"

  svg:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.svg.svg"

  sequence-out:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.sequence.txt"

  json:
    type: File?
    streamable: true
    outputBinding:
      glob: "*.json.txt"


$schemas:
  - http://schema.org/docs/schema_org_rdfa.html

$namespaces:
  s: http://schema.org/

s:license:
  - https://www.apache.org/licenses/LICENSE-2.0
  - https://spdx.org/licenses/Apache-2.0

s:copyrightHolder: "European Bioinformatics Institute (EMBL-EBI), Web Production"
