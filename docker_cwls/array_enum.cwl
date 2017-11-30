cwlVersion: v1.0
class: CommandLineTool
baseCommand: test.sh

inputs:
  applications:
    type:
        - type: array
          items:
              type: enum
              symbols:
                  - a
                  - b
    inputBinding:
      itemSeparator: ","
      prefix: --applications

outputs:
  annotations:
    type: File
    outputBinding:
      glob: "*"
