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
  sequence: File

outputs:
  pepinfo_output:
    type: File
    outputSource: pepinfo_step/pepinfo_out

  cpgplot_output:
    type: File
    outputSource: cpgplot_step/cpgplot_out

steps:
  pepinfo_step:
    run: 'emboss_pepinfo.cwl'
    in:
      email: email
      sequence: sequence
    out: [pepinfo_out]

  backtranseq_step:
    run: 'emboss_backtranseq.cwl'
    in:
      email: email
      sequence: sequence
    out: [backtranseq_out]

  cpgplot_step:
    run: 'emboss_cpgplot.cwl'
    in:
      email: email
      sequence: backtranseq_step/backtranseq_out
    out: [cpgplot_out]
