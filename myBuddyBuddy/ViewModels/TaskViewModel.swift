import SwiftUI
import CoreData

class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    let context: NSManagedObjectContext
    var formattedDate: String = ""


    init(context: NSManagedObjectContext) {
        self.context = context
        fetchTasks()
    }

    func fetchTasks() {
        do {
            let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
            tasks = try context.fetch(fetchRequest)
        } catch let error as NSError {
            print("Error fetching tasks: \(error.localizedDescription)")
            tasks = []
        }
    }

    func addTask() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let currentDateTime = Date()
        formattedDate = dateFormatter.string(from: currentDateTime)

        let newTask = Task(context: context)
        newTask.title = formattedDate
        newTask.createDate = currentDateTime
        newTask.id = UUID()
        newTask.isCompleted = false
        newTask.modifyDate = currentDateTime

        saveContext()
    }


    func updateTask(_ task: Task) {
        task.modifyDate = Date()
        saveContext()
    }

    func deleteTask(_ task: Task) {
        context.delete(task)
        saveContext()
    }

    private func saveContext() {
        do {
            try context.save()
            fetchTasks() // 업데이트된 데이터를 즉시 반영
            
        } catch {
            print("Error saving context: \(error.localizedDescription)")
        }
    }
}
