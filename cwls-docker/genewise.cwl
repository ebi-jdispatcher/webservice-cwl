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
label: "Genewise"
id: "genewise"
baseCommand: genewise.py

hints:
  DockerRequirement:
    dockerPull: ebiwp/webservice-clients

inputs:
  # Web Service Clients: Common Entries
  email:
    type: string?
    doc: "E-mail address"
    inputBinding:
      prefix: --email
      position: 2

  title:
    type: string?
    doc: "Job title"
    inputBinding:
      prefix: --title
      position: 3

  jobid:
    type: string?
    doc: "Job identifier"
    inputBinding:
      prefix: --jobid
      position: 1

  polljob:
    type: boolean?
    doc: "Get job result"
    inputBinding:
      prefix: --polljob
      position: 2

  outfile:
    type: string?
    doc: "File name for results"
    inputBinding:
      prefix: --outfile
      position: 4

  outformat:
    type: string?
    doc: "Output format for results"
    inputBinding:
      prefix: --outformat
      position: 5

  pollfreq:
    type: int?
    doc: "Poll frequency in seconds (default 3s)"
    inputBinding:
      prefix: --pollFreq
      position: 6

  params:
    type: boolean?
    doc: "List input parameters"
    inputBinding:
      prefix: --params
      position: 1

  paramdetails:
    type: string?
    doc: "Get details for parameter"
    inputBinding:
      prefix: --paramDetail
      position: 1

  resultTypes:
    type: string?
    doc: "Get result types"
    inputBinding:
      prefix: --resultTypes
      position: 1

  asyncjob:
    type: boolean?
    doc: "Asynchronous mode"
    inputBinding:
      prefix: --asyncjob
      position: 2

  status:
    type: boolean?
    doc: "Get job status"
    inputBinding:
      prefix: --status
      position: 2

  version:
    type: boolean?
    doc: "Prints out the version of the Client and exit"
    inputBinding:
      prefix: --version
      position: 1

  baseUrl:
    type: string?
    doc: "Base URL for service"
    inputBinding:
      prefix: --baseUrl
      position: 7



  # Web Service Clients: Different Entries
  asequence:
    type: string?
    label: "Input sequence A"
    doc: "Sequence filename or ID"
    inputBinding:
      prefix: --asequence
      position: 8

  bsequence:
    type: string?
    label: "Input sequence B"
    doc: "Sequence filename or ID"
    inputBinding:
      prefix: --bsequence
      position: 9

  para:
    type: string?
    label: Show parameters in alignment
    doc: "Show parameters in the output alignmment, as in genewise."
    inputBinding:
      prefix: --para
      position: 10
    default: "true"

  pretty:
    type: string?
    label: Pretty ASCII view
    doc: "Show pretty ASCII alignment viewing, as in genewise."
    inputBinding:
      prefix: --pretty
      position: 11
    default: "true"

  genes:
    type: string?
    label: Gene Structure
    doc: "Show gene structure, as in genewise"
    inputBinding:
      prefix: --genes
      position: 12
    default: "true"

  trans:
    type: string?
    label: Protein Translation
    doc: "Show protein translation, breaking at frameshifts."
    inputBinding:
      prefix: --trans
      position: 13
    default: "true"

  cdna:
    type: string?
    label: cDNA
    doc: "Show cDNA, as in genewise."
    inputBinding:
      prefix: --cdna
      position: 14
    default: "true"

  embl:
    type: string?
    label: EMBL Feature.
    doc: "EMBL feature table format with CDS key."
    inputBinding:
      prefix: --embl
      position: 15
    default: "true"

  ace:
    type: string?
    label: Ace file gene structure
    doc: "Show Ace file gene structure, as in genewise."
    inputBinding:
      prefix: --ace
      position: 16
    default: "true"

  gff:
    type: string?
    label: GFF output
    doc: "Show Gene Feature Format file, as in genewise."
    inputBinding:
      prefix: --gff
      position: 17
    default: "true"

  diana:
    type: string?
    label: EMBL Feature for diana
    doc: "Show EMBL FT format suitable for diana."
    inputBinding:
      prefix: --diana
      position: 18
    default: "true"

  init:
    type: string?
    label: Local/Global mode
    doc: "Model in local/global mode. You should only put the model in global mode if you expect your protein homolog to have homology from start to end to the gene in the DNA sequence."
    inputBinding:
      prefix: --init
      position: 19
    default: "local"

  splice:
    type: string?
    label: Splice site
    doc: "Using splice model or GT/AG? Use the full blown model for splice sites, or a simplistic GT/AG. Generally if you are using a DNA sequence which is from human or worm, then leave this on. If you are using a very different (eg plant) species, switch it off."
    inputBinding:
      prefix: --splice
      position: 20
    default: "flat"

  random:
    type: string?
    label: Random (Null) Model
    doc: "The probability of the model has to compared to an alternative model (in fact to all alternative models which are possible) to allow proper Bayesian inference. This causes considerable difficulty in these algorithms because from a algorithmical point of view we would probably like to use an alternative model which is a single state, like the random model in profile-HMMs, where we can simply 'log-odd' the scored model, whereas from a biological point of view we probably want to use a full gene predicting alternative model.
			In addition we need to account for the fact that the protein HMM or protein homolog probably does not extend over all the gene sequence, nor in fact does the gene have to be the only gene in the DNA sequence. This means that there are very good splice sites/poly-pyrimidine tracts outside of the 'matched' alignment can severely de-rail the alignment."
    inputBinding:
      prefix: --random
      position: 21
    default: "syn"

  alg:
    type: string?
    label: Algorithm
    doc: "The solutions is different in the genewise21:93 compared to the genewise 6:23 algorithms. 
			(1) In 6:23 we force the external match portions of the homology model to be identical to the alternative model, thus cancelling each other out. This is a pretty gross approximation and is sort of equivalent to the intron tie'ing. It makes things algorithmically easier... However this means a) 6:23 is nowhere near a probabilistic model and b) you really have to used a tied intron model in 6:23 otherwise very bad edge effects (final introns being ridiculously long) occur.
			(2) In 21:93 we have a full probabilistic model on each side of the homology segment. This is not reported in the -pretty output but you can see it in the -alb output if you like. Do not trust the gene model outside of the homology segment however. By having these external gene model parts we can use all the gene model features safe in the knowledge that if the homology segments do not justify the match then the external part of the model will soak up the additional intron/py-tract/splice site biases.
			"
    inputBinding:
      prefix: --alg
      position: 22
    default: "623"


outputs:
  all:
    type: File[]
    streamable: true
    outputBinding:
      glob: "*"


$schemas:
  - https://schema.org/version/latest/schemaorg-current-https.rdf

$namespaces:
  s: http://schema.org/
  edam: http://edamontology.org/

s:author:
  - class: s:Person
    s:identifier: https://orcid.org/0000-0001-8728-9449
    s:email: mailto:www-prod@ebi.ac.uk
    s:name: Fábio Madeira (Web Production)
    s:worksFor:
    - class: s:Organization
      s:name: EMBL - European Bioinformatics Institute
      s:location: Hinxton, Cambridgeshire, CB10 1SD, UK
      s:department:
      - class: s:Organization
        s:name: Web Production

# s:citation: https://dx.doi.org/10.6084/m9.figshare.3115156.v2
# s:codeRepository: https://github.com/common-workflow-language/common-workflow-language
s:dateCreated: "2018-08-03"

# s:license:
s:license:
  - https://www.apache.org/licenses/LICENSE-2.0
  - https://spdx.org/licenses/Apache-2.0

s:copyrightHolder: "EMBL - European Bioinformatics Institute"
