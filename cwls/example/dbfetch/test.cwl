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
      location: dbfetch_lwp.pl 
  method:
    type: string
    inputBinding:
      position: 4
    default: 'fetchData'
  outformat:
    type: string
    doc: Format of the output
    inputBinding:
      position: 6
    default: 'ena_sequence:AE014292'
  outstyle:
    type: string
    doc: Style of the output
    inputBinding:
      position: 7
    default: 'fasta'

outputs:
  aligned_sequences:
    type: stdout
