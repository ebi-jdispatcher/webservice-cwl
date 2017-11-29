cwlVersion: v1.0
class: CommandLineTool
baseCommand: test.sh

requirements:
  SchemaDefRequirement:
    types:
      - $import: MyTypes.yaml

inputs:
  applications:
    # Only works in this way:
    # type: MyTypes.yaml#opt[]
    type: MyTypes.yaml#opt
    inputBinding:
      prefix: --applications

outputs:
  annotations:
    type: File
    outputBinding:
      glob: $(inputs.proteinFile.nameroot).i5_annotations
