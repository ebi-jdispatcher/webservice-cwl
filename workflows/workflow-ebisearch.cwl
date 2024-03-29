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
class: Workflow

inputs:
  method: string
  domain: string
  query: string
  fields: string
  outformat: string

outputs:
  ebeye_output:
    type: File
    outputSource: ebeye_step/ebeye_out

  ebeye_API_output:
    type: File
    outputSource: ebeye_API_step/ebeye_API_out

steps:
# search for tax IDs using the EBI search perl client
  ebeye_step:
    run: 'ebeye.cwl'
    in:
      method: method
      domain: domain
      query: query
      fields: fields
    out: [ebeye_out]

  ebeye_API_step:
# search for tax IDs using the EBI search API 
    run: 'ebeye_API.cwl'
    in:
      domain: domain
      query: query
      fields: fields
      outformat: outformat
    out: [ebeye_API_out]
