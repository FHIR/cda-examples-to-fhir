# Translating the agreed CDA examples to FHIR

## Installation
```
  git clone https://github.com/FHIR/cda-examples-to-fhir
  cd cda-examples-to-fhir
  git submodule update # to load smart-platform sample_ccdas
```

## Description

Source of examples: http://wiki.hl7.org/index.php?title=CDA_Template_Example_Task_Force

What does it involve? Well, I think:
* tracking the CDA Example task force output
* creating FHIR equivalents
* adding them to the spec directly, or sending them on to one of the editors (e.g. Me, Lloyd, Ewout) to add



## File tree description

* cda folder is loaded automaticaly by script - load_cda.rb (add more sources to script file)
* fhir translation files created automaticaly so you should just fill them with valid content
* sample_ccdas - contains https://github.com/chb/sample_ccdas repository
