Profile: PDPatient
Parent: Patient
Id: PDPatient
Description: "Profile for Patient Main Demographic Information."


//Alias: $icd = http://hl7.org/fhir/sid/icd-10-cm

* name 1..* MS   //"Patient's full name"
* gender 1..1 MS   //"Patient's gender"
* birthDate 1..1 MS   //"Patient's date of birth"
* address 0..*  //"Patient's address information"
* telecom 0..*   //"Patient's contact details"


// Example Instance
Instance: PD-ExamplePatient1
InstanceOf: PDPatient
Description: "Example instance for patient details."
* name[0].family = "Hamil"
* name[0].given[0] = "Mark"
* gender = #male
* birthDate = "1961-12-22"

// this is the sample patient profile for patient with Parkinson's disease.

Instance: PD-ExamplePatient2
InstanceOf: PDPatient
Description: "Example instance for patient details."
* name[0].family = "Doe"
* name[0].given[0] = "Jane"
* gender = #female
* birthDate = "1949-08-11"
