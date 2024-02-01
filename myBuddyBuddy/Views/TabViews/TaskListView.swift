import SwiftUI
import CoreData

struct TaskListView: View {
    @ObservedObject var viewModel: TaskViewModel

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.tasks) { task in
                    Text(task.title ?? "Untitled")
                        .onTapGesture {
                            // Task를 탭했을 때 수정 동작 실행
                            viewModel.updateTask(task)
                        }
                }
                .onDelete(perform: deleteTask)
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(trailing: addButton)
        }
    }

    var addButton: some View {
        Button(action: {
            viewModel.addTask()
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


#Preview {
    TaskListView(viewModel: TaskViewModel(context: CoreDataManager.shared.viewContext))
}
