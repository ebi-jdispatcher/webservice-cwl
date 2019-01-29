#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: ExpressionTool

requirements: { InlineJavascriptRequirement: {} }

inputs:
  idFile:
    type: File
    inputBinding:
      loadContents: true

expression: |
  ${ return { "idstring": inputs.idFile.contents.replace(/SP:/g, "").replace(/(\r\n|\n|\r)/g,",").replace(/,$/, "").trim()}; }
# .replace needs to be altered depending on database searched. For example PDB would be .replace(/PDB:/g,"").replace(/_./g, "").replace(/(\r\n|\n|\r)/g,",").replace(/,$/, "").trim()}; }

outputs:
  idstring: string
