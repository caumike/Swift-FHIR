//
//  CarePlanTests.swift
//  CarePlanTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class CarePlanTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> CarePlan {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> CarePlan {
		let instance = CarePlan(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCarePlan1() {
		let instance = testCarePlan1_impl()
		testCarePlan1_impl(json: instance.asJSON())
	}
	
	func testCarePlan1_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f001-heart.json")
		
		XCTAssertTrue(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "64915003")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Operation on heart")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].display!, "P. Voigt")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].reference!, "Practitioner/f002")
		XCTAssertEqual(inst.activity![0].simple!.scheduledString!, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "?????")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f201")
		XCTAssertEqual(inst.goal![0].description_fhir!, "recovery surgery on heart of patient")
		XCTAssertEqual(inst.goal![0].notes!, "goal accomplished without complications")
		XCTAssertEqual(inst.goal![0].status!, "achieved")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/careplans")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "CP2903")
		XCTAssertEqual(inst.modified!.description, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.participant![0].member!.display!, "P. Voigt")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f002")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.period!.end!.description, "2011-06-27")
		XCTAssertEqual(inst.period!.start!.description, "2011-06-26")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan2() {
		let instance = testCarePlan2_impl()
		testCarePlan2_impl(json: instance.asJSON())
	}
	
	func testCarePlan2_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f002-lung.json")
		
		XCTAssertTrue(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "359615001")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Partial lobectomy of lung")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].display!, "M.I.M. Versteegh")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].reference!, "Practitioner/f003")
		XCTAssertEqual(inst.activity![0].simple!.scheduledString!, "2011-07-07T09:30:10+01:00")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "?????")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f201")
		XCTAssertEqual(inst.goal![0].description_fhir!, "succesful surgery on lung of patient")
		XCTAssertEqual(inst.goal![0].notes!, "goal accomplished with minor complications")
		XCTAssertEqual(inst.goal![0].status!, "achieved")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/careplans")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "CP2934")
		XCTAssertEqual(inst.modified!.description, "2011-07-07T09:30:10+01:00")
		XCTAssertEqual(inst.participant![0].member!.display!, "M.I.M. Versteegh")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f003")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.period!.end!.description, "2013-07-07")
		XCTAssertEqual(inst.period!.start!.description, "2011-07-06")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan3() {
		let instance = testCarePlan3_impl()
		testCarePlan3_impl(json: instance.asJSON())
	}
	
	func testCarePlan3_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f003-pharynx.json")
		
		XCTAssertTrue(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "172960003")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Incision of retropharyngeal abscess")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].display!, "E.M. van den broek")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].reference!, "Practitioner/f001")
		XCTAssertEqual(inst.activity![0].simple!.scheduledString!, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "?????")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f201")
		XCTAssertEqual(inst.goal![0].description_fhir!, "Retropharyngeal abscess removal")
		XCTAssertEqual(inst.goal![0].notes!, "goal accomplished without complications")
		XCTAssertEqual(inst.goal![0].status!, "achieved")
		XCTAssertEqual(inst.id!, "f003")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/careplans")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "CP3953")
		XCTAssertEqual(inst.modified!.description, "2013-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.participant![0].member!.display!, "E.M. van den broek")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f001")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.period!.end!.description, "2013-03-08T09:30:10+01:00")
		XCTAssertEqual(inst.period!.start!.description, "2013-03-08T09:00:10+01:00")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan4() {
		let instance = testCarePlan4_impl()
		testCarePlan4_impl(json: instance.asJSON())
	}
	
	func testCarePlan4_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f201-renal.json")
		
		XCTAssertFalse(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "diet")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "284093001")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Potassium supplementation")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.dailyAmount!.code!, "258718000")
		XCTAssertEqual(inst.activity![0].simple!.dailyAmount!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.dailyAmount!.units!, "mmol")
		XCTAssertEqual(inst.activity![0].simple!.dailyAmount!.value!, NSDecimalNumber(string: "80"))
		XCTAssertEqual(inst.activity![0].simple!.product!.display!, "Potassium")
		XCTAssertEqual(inst.activity![0].simple!.product!.reference!, "Substance/f203")
		XCTAssertEqual(inst.activity![0].simple!.scheduledString!, "daily")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertFalse(inst.activity![1].prohibited!)
		XCTAssertEqual(inst.activity![1].simple!.category!, "observation")
		XCTAssertEqual(inst.activity![1].simple!.code!.coding![0].code!, "306005")
		XCTAssertEqual(inst.activity![1].simple!.code!.coding![0].display!, "Echography of kidney")
		XCTAssertEqual(inst.activity![1].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![1].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "Roel's renal insufficiency")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f204")
		XCTAssertEqual(inst.goal![0].description_fhir!, "Re-established renal function with at least healthy nutrients.")
		XCTAssertEqual(inst.goal![0].status!, "achieved")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.modified!.description, "2013-03-11")
		XCTAssertEqual(inst.participant![0].member!.display!, "Dokter Bronsig")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.participant![0].role!.coding![0].code!, "425268008")
		XCTAssertEqual(inst.participant![0].role!.coding![0].display!, "Review of care plan")
		XCTAssertEqual(inst.participant![0].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.participant![1].member!.display!, "Nurse Carla Espinosa")
		XCTAssertEqual(inst.participant![1].member!.reference!, "Practitioner/f204")
		XCTAssertEqual(inst.participant![1].role!.coding![0].code!, "229774002")
		XCTAssertEqual(inst.participant![1].role!.coding![0].display!, "Carer")
		XCTAssertEqual(inst.participant![1].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.period!.end!.description, "2013-03-13")
		XCTAssertEqual(inst.period!.start!.description, "2013-03-11")
		XCTAssertEqual(inst.status!, "planned")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan5() {
		let instance = testCarePlan5_impl()
		testCarePlan5_impl(json: instance.asJSON())
	}
	
	func testCarePlan5_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f202-malignancy.json")
		
		XCTAssertEqual(inst.activity![0].actionResulting![0].display!, "Roel's Chemotherapy")
		XCTAssertEqual(inst.activity![0].actionResulting![0].reference!, "Procedure/f201")
		XCTAssertFalse(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "367336001")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Chemotherapy")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.product!.reference!, "#tpf")
		XCTAssertEqual(inst.activity![0].status!, "in-progress")
		XCTAssertEqual(inst.concern![0].display!, "Roel's head-neck tumor")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f202")
		XCTAssertEqual(inst.goal![0].description_fhir!, "Elimination of the spenoid bone tumor")
		XCTAssertEqual(inst.goal![0].status!, "in-progress")
		XCTAssertEqual(inst.id!, "f202")
		XCTAssertEqual(inst.participant![0].member!.display!, "Dokter Bronsig")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.participant![0].role!.coding![0].code!, "28995006")
		XCTAssertEqual(inst.participant![0].role!.coding![0].display!, "Treated with")
		XCTAssertEqual(inst.participant![0].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan6() {
		let instance = testCarePlan6_impl()
		testCarePlan6_impl(json: instance.asJSON())
	}
	
	func testCarePlan6_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f203-sepsis.json")
		
		XCTAssertFalse(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "observation")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "241541005")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "High resolution computed tomography of lungs")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].status!, "not-started")
		XCTAssertEqual(inst.concern![0].display!, "Roel's sepsis")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f203")
		XCTAssertEqual(inst.goal![0].description_fhir!, "Check whether further treatment of sepsis/pulmonary abcess is required")
		XCTAssertEqual(inst.goal![0].status!, "cancelled")
		XCTAssertEqual(inst.id!, "f203")
		XCTAssertEqual(inst.modified!.description, "2013-03-11")
		XCTAssertEqual(inst.participant![0].member!.display!, "Dokter Bronsig")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.participant![0].role!.coding![0].code!, "425268008")
		XCTAssertEqual(inst.participant![0].role!.coding![0].display!, "Review of care plan")
		XCTAssertEqual(inst.participant![0].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.participant![1].member!.display!, "Luigi Maas")
		XCTAssertEqual(inst.participant![1].member!.reference!, "Practitioner/f202")
		XCTAssertEqual(inst.participant![1].role!.coding![0].code!, "278110001")
		XCTAssertEqual(inst.participant![1].role!.coding![0].display!, "Radiographic imaging")
		XCTAssertEqual(inst.participant![1].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.period!.end!.description, "2013-04-21")
		XCTAssertEqual(inst.period!.start!.description, "2013-04-14")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan7() {
		let instance = testCarePlan7_impl()
		testCarePlan7_impl(json: instance.asJSON())
	}
	
	func testCarePlan7_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-GPVisit.json")
		
		XCTAssertEqual(inst.activity![0].actionResulting![0].reference!, "Encounter/example")
		XCTAssertFalse(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "encounter")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "nursecon")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "local")
		XCTAssertEqual(inst.activity![0].simple!.code!.text!, "Nurse Consultation")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].display!, "Nurse Nancy")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].reference!, "Practitioner/13")
		XCTAssertEqual(inst.activity![0].simple!.scheduledPeriod!.end!.description, "2013-01-01T10:50:00+00:00")
		XCTAssertEqual(inst.activity![0].simple!.scheduledPeriod!.start!.description, "2013-01-01T10:38:00+00:00")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertFalse(inst.activity![1].prohibited!)
		XCTAssertEqual(inst.activity![1].simple!.category!, "encounter")
		XCTAssertEqual(inst.activity![1].simple!.code!.coding![0].code!, "doccon")
		XCTAssertEqual(inst.activity![1].simple!.code!.coding![0].system!.absoluteString!, "local")
		XCTAssertEqual(inst.activity![1].simple!.code!.text!, "Doctor Consultation")
		XCTAssertEqual(inst.activity![1].simple!.performer![0].display!, "Doctor Dave")
		XCTAssertEqual(inst.activity![1].simple!.performer![0].reference!, "Practitioner/14")
		XCTAssertEqual(inst.activity![1].status!, "scheduled")
		XCTAssertEqual(inst.concern![0].display!, "obesity")
		XCTAssertEqual(inst.concern![0].reference!, "#p1")
		XCTAssertEqual(inst.goal![0].description_fhir!, "Complete consultation")
		XCTAssertEqual(inst.id!, "gpvisit")
		XCTAssertEqual(inst.participant![0].id!, "part1")
		XCTAssertEqual(inst.participant![0].member!.display!, "Nurse Nancy")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/13")
		XCTAssertEqual(inst.participant![0].role!.coding![0].code!, "nur")
		XCTAssertEqual(inst.participant![0].role!.coding![0].system!.absoluteString!, "local")
		XCTAssertEqual(inst.participant![0].role!.text!, "nurse")
		XCTAssertEqual(inst.participant![1].id!, "part2")
		XCTAssertEqual(inst.participant![1].member!.display!, "Doctor Dave")
		XCTAssertEqual(inst.participant![1].member!.reference!, "Practitioner/14")
		XCTAssertEqual(inst.participant![1].role!.coding![0].code!, "doc")
		XCTAssertEqual(inst.participant![1].role!.coding![0].system!.absoluteString!, "local")
		XCTAssertEqual(inst.participant![1].role!.text!, "doctor")
		XCTAssertEqual(inst.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.patient!.reference!, "Patient/100")
		XCTAssertEqual(inst.period!.start!.description, "2013-01-01T10:30:00+00:00")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
	
	func testCarePlan8() {
		let instance = testCarePlan8_impl()
		testCarePlan8_impl(json: instance.asJSON())
	}
	
	func testCarePlan8_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-integrated.json")
		
		XCTAssertEqual(inst.activity![0].notes!, "9/10/12 Eve eats one meal a day with her parents")
		XCTAssertFalse(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "other")
		XCTAssertEqual(inst.activity![0].simple!.details!, "Eve will review photos of high and low density foods and share with her parents")
		XCTAssertEqual(inst.activity![0].simple!.scheduledPeriod!.start!.description, "2012-09-10")
		XCTAssertEqual(inst.activity![0].status!, "not-started")
		XCTAssertEqual(inst.activity![1].notes!, "9/10/12 Eve will sleep in her bed more often than the couch")
		XCTAssertFalse(inst.activity![1].prohibited!)
		XCTAssertEqual(inst.activity![1].simple!.category!, "other")
		XCTAssertEqual(inst.activity![1].simple!.details!, "Eve will ask her dad to asist her to put the head of her bed on blocks")
		XCTAssertEqual(inst.activity![1].simple!.scheduledPeriod!.start!.description, "2012-09-10")
		XCTAssertEqual(inst.activity![1].status!, "not-started")
		XCTAssertFalse(inst.activity![2].prohibited!)
		XCTAssertEqual(inst.activity![2].simple!.category!, "other")
		XCTAssertEqual(inst.activity![2].simple!.details!, "Eve will reduce her intake of coffee and chocolate")
		XCTAssertEqual(inst.activity![2].simple!.scheduledPeriod!.start!.description, "2012-09-10")
		XCTAssertEqual(inst.activity![2].status!, "in-progress")
		XCTAssertEqual(inst.activity![3].notes!, "8/27/12 Eve would like to try for 5 days a week.  9/10/12 Eve is still walking the dogs.")
		XCTAssertFalse(inst.activity![3].prohibited!)
		XCTAssertEqual(inst.activity![3].simple!.category!, "other")
		XCTAssertEqual(inst.activity![3].simple!.details!, "Eve will walk her friend's dog up and down a big hill 15-30 minutes 3 days a week")
		XCTAssertEqual(inst.activity![3].simple!.scheduledPeriod!.start!.description, "2012-08-27")
		XCTAssertEqual(inst.activity![3].status!, "in-progress")
		XCTAssertEqual(inst.activity![4].notes!, "8/13/12 Eve walked 4 times the last week.  9/10/12 Eve did not walk to her parents the last week, but has plans to start again")
		XCTAssertFalse(inst.activity![4].prohibited!)
		XCTAssertEqual(inst.activity![4].simple!.category!, "other")
		XCTAssertEqual(inst.activity![4].simple!.details!, "Eve will walk 3 blocks to her parents house twice a week")
		XCTAssertEqual(inst.activity![4].simple!.scheduledPeriod!.start!.description, "2012-07-23")
		XCTAssertEqual(inst.activity![4].status!, "in-progress")
		XCTAssertFalse(inst.activity![5].prohibited!)
		XCTAssertEqual(inst.activity![5].simple!.category!, "other")
		XCTAssertEqual(inst.activity![5].simple!.details!, "Eve will us a calendar to check off after medications are taken")
		XCTAssertEqual(inst.activity![5].simple!.scheduledPeriod!.start!.description, "2012-07-23")
		XCTAssertEqual(inst.activity![5].status!, "in-progress")
		XCTAssertFalse(inst.activity![6].prohibited!)
		XCTAssertEqual(inst.activity![6].simple!.category!, "other")
		XCTAssertEqual(inst.activity![6].simple!.details!, "Eve will use her lights MWF after her shower for 3 minutes")
		XCTAssertEqual(inst.activity![6].simple!.scheduledPeriod!.start!.description, "2012-07-23")
		XCTAssertEqual(inst.activity![6].status!, "in-progress")
		XCTAssertEqual(inst.activity![7].notes!, "7/23/12 Eve created a chart as a reminer to take the medications that do not fit in her pill box")
		XCTAssertFalse(inst.activity![7].prohibited!)
		XCTAssertEqual(inst.activity![7].simple!.category!, "other")
		XCTAssertEqual(inst.activity![7].simple!.details!, "Eve will use a calendar of a chart to help her remember when to take her medications")
		XCTAssertEqual(inst.activity![7].simple!.scheduledPeriod!.start!.description, "2012-07-10")
		XCTAssertEqual(inst.activity![7].status!, "in-progress")
		XCTAssertEqual(inst.activity![8].notes!, "7/30/12 will be able to esume exercise.  8/13/12 Eve prefers to focus on walking at this time")
		XCTAssertFalse(inst.activity![8].prohibited!)
		XCTAssertEqual(inst.activity![8].simple!.category!, "other")
		XCTAssertEqual(inst.activity![8].simple!.details!, "Eve will start using stretch bands and one step 2 days a week Mon/Wed 6-7am and maybe Friday afternoon")
		XCTAssertEqual(inst.activity![8].simple!.scheduledPeriod!.start!.description, "2012-07-23")
		XCTAssertEqual(inst.activity![8].status!, "on-hold")
		XCTAssertFalse(inst.activity![9].prohibited!)
		XCTAssertEqual(inst.activity![9].simple!.category!, "other")
		XCTAssertEqual(inst.activity![9].simple!.details!, "Eve will match a printed medication worksheet with the medication bottles at home")
		XCTAssertEqual(inst.activity![9].simple!.scheduledPeriod!.start!.description, "2012-07-10")
		XCTAssertEqual(inst.activity![9].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "GERDS")
		XCTAssertEqual(inst.concern![0].reference!, "#p1")
		XCTAssertEqual(inst.concern![1].display!, "Obesity")
		XCTAssertEqual(inst.concern![1].reference!, "#p2")
		XCTAssertEqual(inst.concern![2].display!, "Psoriasis")
		XCTAssertEqual(inst.concern![2].reference!, "#p3")
		XCTAssertEqual(inst.goal![0].description_fhir!, "Eve will lose weight and reduce her GERDS symptoms by improving her diet")
		XCTAssertEqual(inst.goal![0].id!, "g1")
		XCTAssertEqual(inst.goal![0].status!, "in-progress")
		XCTAssertEqual(inst.goal![1].description_fhir!, "Eve will improve her GERDS symptoms")
		XCTAssertEqual(inst.goal![1].id!, "g2")
		XCTAssertEqual(inst.goal![1].status!, "in-progress")
		XCTAssertEqual(inst.goal![2].description_fhir!, "Eve will increase her energy by being more active")
		XCTAssertEqual(inst.goal![2].id!, "g3")
		XCTAssertEqual(inst.goal![2].status!, "in-progress")
		XCTAssertEqual(inst.goal![3].description_fhir!, "Eve will set up her medications and take as prescribed")
		XCTAssertEqual(inst.goal![3].id!, "g4")
		XCTAssertEqual(inst.goal![3].status!, "in-progress")
		XCTAssertEqual(inst.goal![4].description_fhir!, "Eve will restart her light treatments")
		XCTAssertEqual(inst.goal![4].id!, "g5")
		XCTAssertEqual(inst.goal![4].status!, "in-progress")
		XCTAssertEqual(inst.id!, "integrate")
		XCTAssertEqual(inst.modified!.description, "2012-09-10")
		XCTAssertEqual(inst.notes!, "Patient family is not ready to commit to goal setting at this time.  Goal setting will be addressed in the future")
		XCTAssertEqual(inst.patient!.display!, "Eve Everywoman")
		XCTAssertEqual(inst.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan9() {
		let instance = testCarePlan9_impl()
		testCarePlan9_impl(json: instance.asJSON())
	}
	
	func testCarePlan9_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-pregnancy.json")
		
		XCTAssertFalse(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "encounter")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "1an")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "mySystem")
		XCTAssertEqual(inst.activity![0].simple!.code!.text!, "First Antenatal encounter")
		XCTAssertEqual(inst.activity![0].simple!.details!, "The first antenatal encounter. This is where a detailed physical examination is performed.             and the pregnanacy discussed with the mother-to-be.")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].display!, "Mavis Midwife")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].reference!, "#pr1")
		XCTAssertEqual(inst.activity![0].simple!.scheduledTiming!.event![0].end!.description, "2013-02-28")
		XCTAssertEqual(inst.activity![0].simple!.scheduledTiming!.event![0].start!.description, "2013-02-14")
		XCTAssertEqual(inst.activity![0].status!, "scheduled")
		XCTAssertFalse(inst.activity![1].prohibited!)
		XCTAssertEqual(inst.activity![1].simple!.category!, "encounter")
		XCTAssertEqual(inst.activity![1].simple!.code!.coding![0].code!, "an")
		XCTAssertEqual(inst.activity![1].simple!.code!.coding![0].system!.absoluteString!, "mySystem")
		XCTAssertEqual(inst.activity![1].simple!.code!.text!, "Follow-up Antenatal encounter")
		XCTAssertEqual(inst.activity![1].simple!.details!, "The second antenatal encounter. Discuss any issues that arose from the first antenatal encounter")
		XCTAssertEqual(inst.activity![1].simple!.performer![0].display!, "Mavis Midwife")
		XCTAssertEqual(inst.activity![1].simple!.performer![0].reference!, "#pr1")
		XCTAssertEqual(inst.activity![1].simple!.scheduledTiming!.event![0].end!.description, "2013-03-14")
		XCTAssertEqual(inst.activity![1].simple!.scheduledTiming!.event![0].start!.description, "2013-03-01")
		XCTAssertEqual(inst.activity![1].status!, "not-started")
		XCTAssertFalse(inst.activity![2].prohibited!)
		XCTAssertEqual(inst.activity![2].simple!.category!, "encounter")
		XCTAssertEqual(inst.activity![2].simple!.code!.coding![0].code!, "del")
		XCTAssertEqual(inst.activity![2].simple!.code!.coding![0].system!.absoluteString!, "mySystem")
		XCTAssertEqual(inst.activity![2].simple!.code!.text!, "Delivery")
		XCTAssertEqual(inst.activity![2].simple!.details!, "The delivery.")
		XCTAssertEqual(inst.activity![2].simple!.performer![0].display!, "Mavis Midwife")
		XCTAssertEqual(inst.activity![2].simple!.performer![0].reference!, "#pr1")
		XCTAssertEqual(inst.activity![2].simple!.scheduledTiming!.event![0].end!.description, "2013-09-14")
		XCTAssertEqual(inst.activity![2].simple!.scheduledTiming!.event![0].start!.description, "2013-09-01")
		XCTAssertEqual(inst.activity![2].status!, "not-started")
		XCTAssertEqual(inst.concern![0].display!, "pregnancy")
		XCTAssertEqual(inst.concern![0].reference!, "#p1")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://example.org/DoNotUse/careplan#lmp")
		XCTAssertEqual(inst.extension_fhir![0].valueDateTime!.description, "2013-01-01")
		XCTAssertEqual(inst.goal![0].description_fhir!, "Maintain a womans health throughout pregnancy and ensure a healthy child")
		XCTAssertEqual(inst.id!, "preg")
		XCTAssertEqual(inst.participant![0].member!.display!, "Mavis Midwife")
		XCTAssertEqual(inst.participant![0].member!.reference!, "#pr1")
		XCTAssertEqual(inst.participant![0].role!.coding![0].code!, "lmc")
		XCTAssertEqual(inst.participant![0].role!.coding![0].system!.absoluteString!, "mySys")
		XCTAssertEqual(inst.participant![0].role!.text!, "Midwife")
		XCTAssertEqual(inst.participant![1].member!.display!, "Oscar Obstetrician")
		XCTAssertEqual(inst.participant![1].member!.reference!, "#pr2")
		XCTAssertEqual(inst.participant![1].role!.coding![0].code!, "obs")
		XCTAssertEqual(inst.participant![1].role!.coding![0].system!.absoluteString!, "mySys")
		XCTAssertEqual(inst.participant![1].role!.text!, "Obstretitian")
		XCTAssertEqual(inst.patient!.display!, "Eve Everywoman")
		XCTAssertEqual(inst.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst.period!.end!.description, "2013-10-01")
		XCTAssertEqual(inst.period!.start!.description, "2013-01-01")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
	
	func testCarePlan10() {
		let instance = testCarePlan10_impl()
		testCarePlan10_impl(json: instance.asJSON())
	}
	
	func testCarePlan10_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example.json")
		
		XCTAssertFalse(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "observation")
		XCTAssertEqual(inst.activity![0].simple!.code!.text!, "a code for weight measurement")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].display!, "Peter James Chalmers")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].reference!, "Patient/example")
		XCTAssertEqual(inst.activity![0].simple!.scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.activity![0].simple!.scheduledTiming!.repeat!.frequency!, 1)
		XCTAssertEqual(inst.activity![0].simple!.scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst.concern![0].display!, "obesity")
		XCTAssertEqual(inst.concern![0].reference!, "#p1")
		XCTAssertEqual(inst.goal![0].description_fhir!, "Target weight is 80 kg. Note: be nice if this could be coded")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.participant![0].member!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Patient/example")
		XCTAssertEqual(inst.participant![0].role!.text!, "responsiblePerson")
		XCTAssertEqual(inst.participant![1].member!.display!, "Dorothy Dietition")
		XCTAssertEqual(inst.participant![1].member!.reference!, "#pr1")
		XCTAssertEqual(inst.participant![1].role!.text!, "adviser")
		XCTAssertEqual(inst.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.period!.end!.description, "2013-01-01")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
}
