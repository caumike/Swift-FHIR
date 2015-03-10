//
//  DeviceTests.swift
//  DeviceTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DeviceTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Device {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Device {
		let instance = Device(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDevice1() {
		let instance = testDevice1_impl()
		testDevice1_impl(json: instance.asJSON())
	}
	
	func testDevice1_impl(json: JSONDictionary? = nil) -> Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "device-example-f001-feedingtube.json")
		
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "25062003")
		XCTAssertEqual(inst.type!.coding![0].display!, "Feeding tube, device")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testDevice2() {
		let instance = testDevice2_impl()
		testDevice2_impl(json: instance.asJSON())
	}
	
	func testDevice2_impl(json: JSONDictionary? = nil) -> Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "device-example-ihe-pcd.json")
		
		XCTAssertEqual(inst.id!, "ihe-pcd")
		XCTAssertEqual(inst.identifier![0].label!, "serialNumber")
		XCTAssertEqual(inst.identifier![0].value!, "AMID-123-456")
		XCTAssertEqual(inst.lotNumber!, "12345")
		XCTAssertEqual(inst.manufacturer!, "Acme Devices, Inc")
		XCTAssertEqual(inst.model!, "A.1.1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.text!, "Vital Signs Monitor")
		
		return inst
	}
	
	func testDevice3() {
		let instance = testDevice3_impl()
		testDevice3_impl(json: instance.asJSON())
	}
	
	func testDevice3_impl(json: JSONDictionary? = nil) -> Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "device-example.json")
		
		XCTAssertEqual(inst.contact![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].value!, "ext 4352")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://goodcare.org/devices/id")
		XCTAssertEqual(inst.identifier![0].value!, "345675")
		XCTAssertEqual(inst.identifier![1].label!, "Serial Number")
		XCTAssertEqual(inst.identifier![1].value!, "AMID-342135-8464")
		XCTAssertEqual(inst.lotNumber!, "43453424")
		XCTAssertEqual(inst.manufacturer!, "Acme Devices, Inc")
		XCTAssertEqual(inst.model!, "AB 45-J")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "86184003")
		XCTAssertEqual(inst.type!.coding![0].display!, "Electrocardiographic monitor and recorder")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.text!, "ECG")
		
		return inst
	}
}
