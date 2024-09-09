import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                        .foregroundColor(Color("buttonColor"))
                    Text("Home")
                    
                }
            
            MySearchView()
                .tabItem {
                    Image(systemName: "location")
                    Text("Explore")
                }
            
            MyFavoritesView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Booking")
                }
            
            MyProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }.accentColor(Color("buttonColor"))
    }
}

// Placeholder views for other tabs
struct MySearchView: View {
    var body: some View {
        Text("Search Tab")
    }
}

struct MyFavoritesView: View {
    var body: some View {
        Text("Favorites Tab")
    }
}

struct MyProfileView: View {
    var body: some View {
        Text("Profile Tab")
    }
}

#Preview {
    TabBar()
}

