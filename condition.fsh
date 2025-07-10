Profile: PDConditionProfile
Parent: Condition
Id: PDConditionProfile
Title: "PD-Condition Profile"
Description: "Profile for recording multiple conditions including Parkinson's, diabetes, and cardiovascular diseases."

// elements
* identifier 1..* MS              
* subject 1..1 MS                
* onsetDateTime 0..1             
* recordedDate 0..1               
* recorder 0..1                   
* clinicalStatus 1..1 MS          
* verificationStatus 1..1 MS     

// Medical History
Extension: MedicalHistory
Id: MedicalHistory
Title: "Medical History"
Description: "Extension for recording the patient's medical history, including Parkinson's diagnosis, and history of diabetes and cardiovasular diseases."
* extension contains
    PDDiagnosis 1..1 MS and
    PDStage 1..1 and
    DiabetesDiagnosis 0..1 and
    CardiovascularDiseasesDiagnosis 0..1 and
    PreviousFalls 0..1
* extension[PDDiagnosis].valueString
* extension[PDStage].valueString
* extension[DiabetesDiagnosis].valueString
* extension[CardiovascularDiseasesDiagnosis].valueString
* extension[PreviousFalls].valueString



// Add extensions to profile
* extension contains
    MedicalHistory 0..1 MS


// Example Instance

Instance: PDConditionExample
InstanceOf: PDConditionProfile
Description: "Example instance for multiple conditions related to a Parkinson's patient."
* identifier[0].system = "http://hospital.example.org/condition-ids"
* identifier[0].value = "COND123456"
* subject.reference = "Patient/ExamplePatient"
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active
* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed
* category[0] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* severity = http://snomed.info/sct#24484000 // Severe
* code = http://snomed.info/sct#64859006 // Osteoporosis
* subject.reference = "Patient/ExamplePatient"
* onsetDateTime = "2020-01-01"
* recordedDate = "2020-01-02"
* extension[MedicalHistory].extension[PDDiagnosis].valueString = "Diagnosed with Parkinson's in 2018."
* extension[MedicalHistory].extension[PDStage].valueString = "Stage 2"
* extension[MedicalHistory].extension[DiabetesDiagnosis].valueString = "Diagnosed with diabetes in 2015."
* extension[MedicalHistory].extension[CardiovascularDiseasesDiagnosis].valueString = "Diagnosed with diabetes in 2015."
* extension[MedicalHistory].extension[PreviousFalls].valueString = "2 falls"
 
 
