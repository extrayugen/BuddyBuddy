import SwiftUI
import CoreData

struct TaskListView: View {
    @ObservedObject var viewModel: TaskViewModel

    init(viewModel: TaskViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.tasks) { task in
                    Text(task.title ?? "Untitled")
                }
                .onDelete(perform: deleteTask)
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(trailing: addButton)
        }
    }

    var addButton: some View {
        Button(action: {
            viewModel.addTask(title: "New Task")
        }) {
            Image(systemName: "plus")
        }
    }

    func deleteTask(at offsets: IndexSet) {
        for index in offsets {
            viewModel.deleteTask(viewModel.tasks[index])
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView(viewModel: TaskViewModel(context: PersistenceController.shared.container.viewContext))
    }
}
