import SwiftUI

@main
struct myBuddyBuddyApp: App {
    let coreDataManager = CoreDataManager.shared

    var body: some Scene {
        WindowGroup {
            LoginView()
                .environment(\.managedObjectContext, coreDataManager.viewContext)
        }
    }
}
