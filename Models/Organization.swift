//
//  Organization.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/Organization) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A grouping of people or organizations with a common purpose.
 *
 *  A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some
 *  form of collective action.  Includes companies, institutions, corporations, departments, community groups,
 *  healthcare practice groups, etc.
 */
public class Organization: DomainResource
{
	override public class var resourceName: String {
		get { return "Organization" }
	}
	
	/// Whether the organization's record is still in active use
	public var active: Bool?
	
	/// An address for the organization
	public var address: [Address]?
	
	/// Contact for the organization for a certain purpose
	public var contact: [OrganizationContact]?
	
	/// Identifies this organization  across multiple systems
	public var identifier: [Identifier]?
	
	/// Location(s) the organization uses to provide services
	public var location: [Reference]?
	
	/// Name used for the organization
	public var name: String?
	
	/// The organization of which this organization forms a part
	public var partOf: Reference?
	
	/// A contact detail for the organization
	public var telecom: [ContactPoint]?
	
	/// Kind of organization
	public var type: CodeableConcept?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["active"] as? Bool {
				self.active = val
			}
			if let val = js["address"] as? [JSONDictionary] {
				self.address = Address.from(val, owner: self) as? [Address]
			}
			if let val = js["contact"] as? [JSONDictionary] {
				self.contact = OrganizationContact.from(val, owner: self) as? [OrganizationContact]
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["location"] as? [JSONDictionary] {
				self.location = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["partOf"] as? JSONDictionary {
				self.partOf = Reference(json: val, owner: self)
			}
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let address = self.address {
			json["address"] = Address.asJSONArray(address)
		}
		if let contact = self.contact {
			json["contact"] = OrganizationContact.asJSONArray(contact)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let location = self.location {
			json["location"] = Reference.asJSONArray(location)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let partOf = self.partOf {
			json["partOf"] = partOf.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact for the organization for a certain purpose.
 */
public class OrganizationContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "OrganizationContact" }
	}
	
	/// Visiting or postal addresses for the contact
	public var address: Address?
	
	/// male | female | other | unknown
	public var gender: String?
	
	/// A name associated with the contact
	public var name: HumanName?
	
	/// The type of contact
	public var purpose: CodeableConcept?
	
	/// Contact details (telephone, email, etc)  for a contact
	public var telecom: [ContactPoint]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? JSONDictionary {
				self.address = Address(json: val, owner: self)
			}
			if let val = js["gender"] as? String {
				self.gender = val
			}
			if let val = js["name"] as? JSONDictionary {
				self.name = HumanName(json: val, owner: self)
			}
			if let val = js["purpose"] as? JSONDictionary {
				self.purpose = CodeableConcept(json: val, owner: self)
			}
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let address = self.address {
			json["address"] = address.asJSON()
		}
		if let gender = self.gender {
			json["gender"] = gender.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}

