import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 1

    var body: some View {
        TabView(selection: $selectedTab,
                content:  {
            HomeTabView().tabItem {
                Image(systemName: selectedTab == 1 ? "house.fill" : "house")
                    .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
            }
            .tag(1)

            FindTabView().tabItem { Image(systemName: "magnifyingglass") }
                .tag(2)

            TaskListView(viewModel: TaskViewModel(context: CoreDataManager.shared.viewContext)).tabItem { Image(systemName: "plus") }
                .tag(3)

            FollowTabView().tabItem {
                Image(systemName: selectedTab == 4 ? "heart.fill" : "heart")
                    .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
            }
            .tag(4)


            ProfileTabView(viewModel: ProfileViewModel()).tabItem {
                Image(systemName: selectedTab == 5 ? "person.fill" : "person")
                    .environment(\.symbolVariants, selectedTab == 5 ? .fill : .none)
            }
            .tag(5)
            
        })
        .tint(Color.green)
    }
}


#Preview {
    MainTabView().environment(\.managedObjectContext, CoreDataManager.shared.viewContext)
}
