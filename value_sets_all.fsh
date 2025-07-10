// Define a ValueSet for Age (65+)
ValueSet: Age65PlusVS
Id: age-65-plus
Title: "Age 65+"
Description: "ValueSet for patient age restricted to 65 and above."
* include codes from system http://terminology.hl7.org/CodeSystem/v3-NullFlavor where concept = #65+ "65 years and older"
//

ValueSet: ParkinsonsVS
Id: PD-vs
Title: "Pakinsons Conditions  value set"
Description: "All the value sets for the conditions needed to be evaluated for Parkinson's disease."
* $ICD10CM#G20  "Parkinson disease"
* $ICD10CM#E11.9  "Type 2 diabetes mellitus without complications"
* $ICD10CM#I51.9  "Heart disease, unspecified"

// Define a ValueSet for Gender
ValueSet: GenderVS
Id: gender-values
Title: "Gender Values"
Description: "ValueSet for gender including Male, Female, and Other."
* ^compose.include.system = "http://hl7.org/fhir/ValueSet/administrative-gender"
* ^expansion.contains[0].system = "http://hl7.org/fhir/administrative-gender"
* ^expansion.contains[=].code = #male 
* ^expansion.contains[=].display = "Male"
* ^expansion.contains[+].system = "http://hl7.org/fhir/administrative-gender"
* ^expansion.contains[=].code = #female
* ^expansion.contains[=].display = "Female"
* ^expansion.contains[+].system = "http://hl7.org/fhir/administrative-gender"
* ^expansion.contains[=].code = #other
* ^expansion.contains[=].display = "Other"



// Define a ValueSet for Parkinson Stage (Hoehn & Yahr 1-3)
ValueSet: ParkinsonStageVS
Id: parkinson-stage
Title: "Parkinson Hoehn & Yahr Stages"
Description: "ValueSet for Parkinson’s Disease staging using Hoehn & Yahr scale (1-3)."
* ^compose.include.system = "http://example.org/fhir/CodeSystem/parkinson-stage"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #409774005
* ^expansion.contains[=].display = "Hoehn & Yahr Stage 1: Early Stage"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #409775006
* ^expansion.contains[=].display = "Hoehn & Yahr Stage 2: Complicated stage"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #409776007
* ^expansion.contains[=].display = "Hoehn & Yahr Stage 3: Late Stage"


// Define a ValueSet for Cardiovascular Diseases (Boolean)
ValueSet: CardiovascularDiseasesVS
Id: cardiovascular-diseases
Title: "Cardiovascular Diseases History"
Description: "True/False ValueSet for the history of cardiovascular diseases."
* ^compose.include.system = "http://hl7.org/fhir/StructureDefinition/boolean"
* ^expansion.contains[+].system = "http://hl7.org/fhir/StructureDefinition/boolean"
* ^expansion.contains[=].code = #true 
* ^expansion.contains[=].display = "The patient has the history of cardiovascular diseases"
* ^expansion.contains[+].system = "http://hl7.org/fhir/StructureDefinition/boolean"
* ^expansion.contains[=].code = #false
* ^expansion.contains[=].display = "The patient doe not have the history of cardiovascular diseases"


// Define a ValueSet for Diabetes (Boolean)
ValueSet: DiabetesVS
Id: diabetes-values
Title: "Diabetes History"
Description: "True/False ValueSet for the history of diabetes."
* ^compose.include.system = "http://hl7.org/fhir/StructureDefinition/boolean"
* ^expansion.contains[+].system = "http://hl7.org/fhir/StructureDefinition/boolean"
* ^expansion.contains[=].code = #true 
* ^expansion.contains[=].display = "The patient has the history of diabetes"
* ^expansion.contains[+].system = "http://hl7.org/fhir/StructureDefinition/boolean"
* ^expansion.contains[=].code = #false
* ^expansion.contains[=].display = "The patient doe not have the history of diabetes"

// Define a ValueSet for Previous Falls 
ValueSet: PreviousFallsVS
Id: previous-falls
Title: "Previous Falls"
Description: "ValueSet representing number of previous falls."
* ^compose.include.system = "http://hl7.org/fhir/ValueSet/adverse-event-type"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1912002 
* ^expansion.contains[=].display = "Fall"


// Define a ValueSet for Type of Physical Activity
ValueSet: PhysicalActivityTypeVS
Id: physical-activity-type
Title: "Physical Activity Types"
Description: "ValueSet for type of physical activity including Yoga and Walking."
* ^compose.include.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* ^expansion.contains[=].code = #yoga 
* ^expansion.contains[=].display = "Yoga"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* ^expansion.contains[=].code = #walking 
* ^expansion.contains[=].display = "Walking"

// Define a ValueSet for Weekly Frequency of Activity (0 to 7 Days)
ValueSet: PhysicalActivityDaysVS
Id: physical-activity-days
Title: "Weekly Physical Activity Frequency"
Description: "ValueSet for frequency of physical activity per week."
* ^compose.include.system = "http://hl7.org/fhir/us/physical-activity/ValueSet/pa-observation-code-evs"
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].code = #89555-7 
* ^expansion.contains[=].display = "How many days per week did you engage in moderate to strenuous physical activity in the last 30 days"


// Define a ValueSet for Weekly duration of physical activity (minutes)
ValueSet: WeeklyActivityVS
Id: weekly-activity-duration
Title: "Weekly Physical Activity weekly Duaration"
Description: "ValueSet for duration of physical activity per week."
* ^expansion.contains[+].system = "http://loinc.org"
* ^expansion.contains[=].code = #68516-4
* ^expansion.contains[=].display = "On those days that you engage in moderate to strenuous exercise, how many minutes, on average, do you exercise"



//* ^compose.include.concept[+].code = #0 "No activity"
//* ^compose.include.concept[+].code = #1 "one a week - Light activity"
//* ^compose.include.concept[+].code = #2 "Twice a week - Moderate activity"
//* ^compose.include.concept[+].code = #3 "Three times a week - often active"
//* ^compose.include.concept[+].code = #4 "Four times a week - Active"
//* ^compose.include.concept[+].code = #5 "Five times a week - Very active"
//* ^compose.include.concept[+].code = #6 "Six times a week - Extremely active"
//* ^compose.include.concept[+].code = #7 "Every day - Daily activity"



// Define a ValueSet for Duration of Physical Activity (0 to 300 minutes)
//ValueSet: PhysicalActivityDurationVS
//Id: physical-activity-duration
//Title: "Physical Activity Duration"
//Description: "ValueSet for duration of physical activity per session (0 to 300 minutes)."
//* ^compose.include.system = "http://example.org/fhir/CodeSystem/physical-activity-duration"
//* ^compose.include.concept[+].code = #0 "No activity"
//* ^compose.include.concept[+].code = #30 "30 minutes"
//* ^compose.include.concept[+].code = #60 "1 hour"
//* ^compose.include.concept[+].code = #90 "1.5 hours"
//* ^compose.include.concept[+].code = #120 "2 hours"
//* ^compose.include.concept[+].code = #150 "2.5 hours"
//* ^compose.include.concept[+].code = #180 "3 hours"
//* ^compose.include.concept[+].code = #210 "3.5 hours"
//* ^compose.include.concept[+].code = #240 "4 hours"
//* ^compose.include.concept[+].code = #270 "4.5 hours"
//* ^compose.include.concept[+].code = #300 "5 hours"

// Define a ValueSet for Muscular Strength (Good, Moderate, Poor)
ValueSet: MuscularStrengthVS
Id: MuscularStrength
Title: "Muscular Strength value set"
Description: "ValueSet for muscular strength assessment (Good, Moderate, Poor)."
* ^compose.include.system = "http://example.org/fhir/CodeSystem/MuscularStrength"
* ^expansion.contains[+].system = "http://example.org/fhir/CodeSystem/MuscularStrength"
* ^expansion.contains[=].code = #good
* ^expansion.contains[=].display = "Good Muscular Strength"
* ^expansion.contains[+].system = "http://example.org/fhir/CodeSystem/MuscularStrength"
* ^expansion.contains[=].code = #moderate
* ^expansion.contains[=].display = "Moderate Muscular Strength"
* ^expansion.contains[+].system = "http://example.org/fhir/CodeSystem/MuscularStrength"
* ^expansion.contains[=].code = #poor
* ^expansion.contains[=].display = "Poor Muscular Strength"


// Define a ValueSet for Balance (Good, Moderate, Poor)
ValueSet: BalanceVS
Id: balance
Title: "Balance value set"
Description: "ValueSet for balance assessment (Good, Moderate, Poor)."
* ^compose.include.system = "http://example.org/fhir/CodeSystem/balance"
* ^expansion.contains[+].system = "http://example.org/fhir/CodeSystem/balance"
* ^expansion.contains[=].code = #good
* ^expansion.contains[=].display = "Good Balance"
* ^expansion.contains[+].system = "http://example.org/fhir/CodeSystem/balance"
* ^expansion.contains[=].code = #moderate
* ^expansion.contains[=].display = "Moderate Balance"
* ^expansion.contains[+].system = "http://example.org/fhir/CodeSystem/balance"
* ^expansion.contains[=].code = #poor
* ^expansion.contains[=].display = "Poor balance"


