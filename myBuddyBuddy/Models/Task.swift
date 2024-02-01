//
//  Task+CoreDataClass.swift
//  myBuddyBuddy
//
//  Created by t2023-m0031 on 1/29/24.
//
//

import Foundation
import CoreData

@objc(Task)
public class Task: NSManagedObject {

}

extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var createDate: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var isCompleted: Bool
    @NSManaged public var modifyDate: Date?
    @NSManaged public var title: String?

}

extension Task : Identifiable {

}
