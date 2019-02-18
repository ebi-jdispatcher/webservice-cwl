#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: ExpressionTool

requirements: { InlineJavascriptRequirement: {} }

inputs:
  idFile:
    type: File
    inputBinding:
      loadContents: true
# This file is used as part of the Blast-ebeye-pdbe workflow
# This file is currently set to convert uniprotkb_swissprot IDs obtaied by NCBI BLAST into a usable format for EBI Search
# Therefore this file needs to be altered if you are using a differnet database
expression: |
  ${ return { "idstring": inputs.idFile.contents.replace(/.+:/g, "").replace(/(\r\n|\n|\r)/g,",").replace(/,$/, "").trim()}; }
# For example, if you had obtained PDB IDs you need:
#  ${ return { "idstring": inputs.idFile.contents.replace(/.+:/g, "").replace(/_./g, "").replace(/(\r\n|\n|\r)/g,",").replace(/,$/, "").trim()}; }

outputs:
  idstring: string
