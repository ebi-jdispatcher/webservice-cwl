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
      location: ../../webservice-clients/perl/hmmer3_hmmscan.pl

  # required Inputs
  email:
    type: string?
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

# Tool specific optional inputs
  alignView:
    type: string?
    inputBinding:
      prefix: --alignView

  dE:
    type: double?
    inputBinding:
      prefix: --E

  incE:
    type: double?
    inputBinding:
      prefix: --incE

  domE:
    type: double?
    inputBinding:
      prefix: --domE

  incdomE:
    type: double?
    inputBinding:
      prefix: --incdomE

  dT:
    type: double?
    inputBinding:
      prefix: --T

  incT:
    type: double?
    inputBinding:
      prefix: --incT

  domT:
    type: double?
    inputBinding:
      prefix: --domT

  incdomT:
    type: double?
    inputBinding:
      prefix: --incdomT

  cut_ga:
    type: string?
    inputBinding:
      prefix: --cut_ga

  nobias:
    type: string?
    inputBinding:
      prefix: --nobias

# General options
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


outputs:
  hmmscan_ids:
    type: File
    outputBinding:
      glob: "*.ids.*"
