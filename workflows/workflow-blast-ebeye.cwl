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
class: Workflow

inputs:
  email: string
  sequence: string
  program: string
  database: string
  type: string
  method: string
  domain: string
  referencedDomain: string
  fields: string

outputs:
  workflow_output:
    type: File
    outputSource: ebeye_step/ebeye_out

steps:
  ncbiblast_step:
    run: 'ncbiblast.cwl'
    in:
      email: email
      sequence: sequence
      program: program
      database: database
      type: type
    out: [ids]

  conversion_step:
    run: 'conversion.cwl'
    in:
      idFile: ncbiblast_step/ids
    out: [idstring]

  ebeye_step:
    run: 'ebeye.cwl'
    in:
      method: method
      domain: domain
      entryids: conversion_step/idstring
      referencedDomain: referencedDomain
      fields: fields
    out: [ebeye_out]
