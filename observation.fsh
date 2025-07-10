Profile: PDObservationProfile
Parent: Observation
Id: PDObservationProfile
Title: "PD-Observation Profile"
Description: "Profile for recording multiple observations in Parkinsons patient."

// elements

* code 1..1 MS
* status 1..1 MS
* subject 1..1 MS




// Life Style
Extension: LifeStyle
Id: LifeStyle
Title: "Life Style"
Description: "Extension for recording the patient's life style."
* extension contains
    physical-activity-type 0..1 MS and
    physical-activity-days 0..1 MS and
    weekly-activity-duration 0..1 
* extension[physical-activity-type].valueString
* extension[physical-activity-days].valueString
* extension[weekly-activity-duration].valueString

// Health Monitoring

Extension: HealthMonitoring
Id: health-monitoring
Title: "Health Monitoring"
Description: "Extension for recording health monitoring data."
* extension contains
    balance 1..1 MS and //assessment of patient balance
    MuscularStrength 1..1 //assessment of patient muscular strength
* extension[balance].valueString
* extension[MuscularStrength].valueString


// add to profile
* extension contains
    LifeStyle 0..1 MS and
    HealthMonitoring 0..1 MS



// Example Instance

Instance: PDObservationExample
InstanceOf: PDObservationProfile
Description: "Example instance for multiple observations related to a Parkinson's patient."
* identifier[0].system = "http://hospital.example.org/Observation-ids"
* identifier[0].value = "COND123456"
* subject.reference = "Patient/ExamplePatient"
* status = #final
* code.coding[0].system = "http://loinc.org"
* extension[LifeStyle].extension[physical-activity-type].valueString = "Walking"
* extension[LifeStyle].extension[physical-activity-days].valueString = "2 days"
* extension[LifeStyle].extension[weekly-activity-duration].valueString = "45 minutes"
* extension[HealthMonitoring].extension[balance].valueString = "Moderate"
* extension[HealthMonitoring].extension[MuscularStrength].valueString = "Poor"
     