import SwiftUI
import AVFoundation

@main
struct myBuddyBuddyApp: App {
    let coreDataManager = CoreDataManger.shared

    var body: some Scene {
        WindowGroup {
            LoginView()
                .environment(\.managedObjectContext, coreDataManager.persistentContainer.viewContext)
        }
    }
}
