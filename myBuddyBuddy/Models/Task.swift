import Foundation
import CoreData

@objc(Task)
public class Task: NSManagedObject, Identifiable { 

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var createDate: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var isCompleted: Bool
    @NSManaged public var modifyDate: Date?
    @NSManaged public var title: String?

}
