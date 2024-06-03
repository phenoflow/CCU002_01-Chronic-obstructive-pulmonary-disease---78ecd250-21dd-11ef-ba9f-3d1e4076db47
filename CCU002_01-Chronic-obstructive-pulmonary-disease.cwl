cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_01-chronic-obstructive-pulmonary-disease-copd-tracheobronchitis---secondary:
    run: ccu002_01-chronic-obstructive-pulmonary-disease-copd-tracheobronchitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  other-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: other-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-obstructive-pulmonary-disease-copd-tracheobronchitis---secondary/output
  ccu002_01-chronic-obstructive-pulmonary-disease-copd-emphysema---secondary:
    run: ccu002_01-chronic-obstructive-pulmonary-disease-copd-emphysema---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: other-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-obstructive-pulmonary-disease-copd-emphysema---secondary/output
  unilateral-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: unilateral-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  chemical-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: chemical-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: unilateral-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  ccu002_01-chronic-obstructive-pulmonary-disease-copd-obliteran---secondary:
    run: ccu002_01-chronic-obstructive-pulmonary-disease-copd-obliteran---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: chemical-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  zonal-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: zonal-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-obstructive-pulmonary-disease-copd-obliteran---secondary/output
  obliterative-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: obliterative-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: zonal-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  severe-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: severe-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: obliterative-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  toxic-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: toxic-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: severe-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  segmental-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: segmental-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: toxic-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  vesicular-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: vesicular-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: segmental-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  bullous-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: bullous-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: vesicular-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  giant-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: giant-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: bullous-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  ccu002_01-chronic-obstructive-pulmonary-disease-copd-stage---secondary:
    run: ccu002_01-chronic-obstructive-pulmonary-disease-copd-stage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: giant-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  ccu002_01-chronic-obstructive-pulmonary-disease-copd-collapse---secondary:
    run: ccu002_01-chronic-obstructive-pulmonary-disease-copd-collapse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-obstructive-pulmonary-disease-copd-stage---secondary/output
  moderate-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: moderate-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-obstructive-pulmonary-disease-copd-collapse---secondary/output
  asthmatic-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: asthmatic-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: moderate-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  mixed-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: mixed-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: asthmatic-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  atrophic-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: atrophic-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: mixed-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  ccu002_01-chronic-obstructive-pulmonary-disease-copd-specified---secondary:
    run: ccu002_01-chronic-obstructive-pulmonary-disease-copd-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: atrophic-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  ccu002_01-chronic-obstructive-pulmonary-disease-copd-exacerbation---secondary:
    run: ccu002_01-chronic-obstructive-pulmonary-disease-copd-exacerbation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-obstructive-pulmonary-disease-copd-specified---secondary/output
  acute-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary:
    run: acute-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-obstructive-pulmonary-disease-copd-exacerbation---secondary/output
  ccu002_01-chronic-obstructive-pulmonary-disease-copd-airway---secondary:
    run: ccu002_01-chronic-obstructive-pulmonary-disease-copd-airway---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: acute-ccu002_01-chronic-obstructive-pulmonary-disease-copd---secondary/output
  chronic---secondary:
    run: chronic---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu002_01-chronic-obstructive-pulmonary-disease-copd-airway---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: chronic---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
