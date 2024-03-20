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
      location: ../../webservice-clients/perl/hmmer3_phmmer.pl

# Required inputs
  email:
    type: string
    doc: "Submitter's email"
    inputBinding:
      prefix: --email

  sequence:
    type: File?
    inputBinding:
      prefix: --sequence

  database:
    type: string?
    inputBinding:
      prefix: --database

# Optional inputs
  alignView:
    type: string?
    inputBinding:
      prefix: --alignView

  dE:
    type: double?
    inputBinding:
      prefix: --E

  domE:
    type: double?
    inputBinding:
      prefix: --domE

  incE:
    type: double?
    inputBinding:
      prefix: --incE

  incdomE:
    type: double?
    inputBinding:
      prefix: --incdomE

  incT:
    type: double?
    inputBinding:
      prefix: --incT

  incdomT:
    type: double?
    inputBinding:
      prefix: --incdomT

  dT:
    type: double?
    inputBinding:
      prefix: --T

  domT:
    type: double?
    inputBinding:
      prefix: --domT

  popen:
    type: double?
    inputBinding:
      prefix: --popen

  pextend:
    type: double?
    inputBinding:
      prefix: --pextend

  mx:
    type: string?
    inputBinding:
      prefix: --mx

  nobias:
    type: string?
    inputBinding:
      prefix: --nobias

# General Options
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

  paramdetails:
    type: string?
    inputBinding:
      prefix: --paramDetail

  multifasta:
    type: string?
    inputBinding:
      prefix: --multifasta

  useSeqId:
    type: string?
    inputBinding:
      prefix: --useSeqId

  maxJobs:
    type: string?
    inputBinding:
      prefix: --maxJobs


outputs:
  phmmer_ids:
    type: File
    outputBinding:
      glob: "*.ids.*"
