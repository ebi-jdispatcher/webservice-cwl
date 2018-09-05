cwlVersion: v1.0
class: CommandLineTool
baseCommand: cat

inputs:
  file:
    type: File
    inputBinding:
        position: 1
    default:
      class: File
      path: ../howto.md

outputs:
    type: stdout
