//
//  Coding.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/Coding) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A reference to a code defined by a terminology system.
 */
public class Coding: FHIRElement
{
	override public class var resourceName: String {
		get { return "Coding" }
	}
	
	/// Symbol in syntax defined by the system
	public var code: String?
	
	/// Representation defined by the system
	public var display: String?
	
	/// If this code was chosen directly by the user
	public var primary: Bool?
	
	/// Identity of the terminology system
	public var system: NSURL?
	
	/// Set this coding was chosen from
	public var valueSet: Reference?
	
	/// Version of the system - if relevant
	public var version: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["primary"] as? Bool {
				self.primary = val
			}
			if let val = js["system"] as? String {
				self.system = NSURL(string: val)
			}
			if let val = js["valueSet"] as? JSONDictionary {
				self.valueSet = Reference(json: val, owner: self)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let primary = self.primary {
			json["primary"] = primary.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let valueSet = self.valueSet {
			json["valueSet"] = valueSet.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

