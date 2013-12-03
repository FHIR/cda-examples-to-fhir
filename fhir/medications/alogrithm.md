# Questions

* What is container for "History of medication use" in FHIR?
* Do we map medications from medication section to MedicationStatment/MedicationPrescription/MedicationAdministration?
* Do we need track identifier from cda, if so - what system?
* How to extract text from cda for concrete medication
* Do translate inline resources - like prescriber or medication? What about nested nested resources (like organization in medication)?

## Steps

* Map medication section LOINC(10160=0) to set of medication statments


## substanceAdministration => MedicationPrescription

SA = entry/substanceAdministration
MP = MedicationPrescription

* SA/id => MP.identifier
* ? => dateWritten
* SA/statusCode => MP.status
* SA/entryRelationship[@typeCode="REFR"]/supply/author[@typeCode="AUT"] => MP.prescriber
* SA/entryRelationship[@typeCode="RSON"] => MP.reasonForPrescribing

* SA/entryRelationship[@typeCode="REFR"/supply/product => MP.medication

## author => Practitioner

* telecom => telecom
* addr => address

## SA/entryRelationship/supply/product => medication

