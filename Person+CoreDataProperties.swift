//
//  Person+CoreDataProperties.swift
//  HW-22
//
//  Created by Илья on 01.12.2022.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var date: Date?
    @NSManaged public var genger: String?

}

extension Person : Identifiable {

}
