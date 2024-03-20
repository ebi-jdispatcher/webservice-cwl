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
baseCommand: sh

inputs:

  command:
    type: File
    inputBinding:
      position: 0
    default:
      class: File
      location: 'pdbe.sh'

  ids:
    type: File
    inputBinding:
      position: 1


outputs:
  pdbe_info:
    type:
      type: array
      items: File
    outputBinding:
      glob: "*.txt"
