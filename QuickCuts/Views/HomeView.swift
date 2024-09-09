import SwiftUI

struct HomeView: View {
    @State var searchText: String = ""
    let gridItems = [GridItem(.flexible(minimum: 240, maximum: 260))]
    
    var body: some View {
        NavigationView {
            VStack {
                // Custom Search Bar
                CustomSearchBar(searchText: $searchText, placeholder: "Search for salons")
                    .padding(.top, 20)
                
                ScrollView (showsIndicators: false) {
                    VStack (spacing: 15) {
                        // Top Salons Section
                        Text("Top Salons")
                            .font(.custom("Poppins-Bold", size: 26))
                            .foregroundColor(.init("textColor"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: gridItems, spacing: 15) {
                                ForEach (0...5, id: \.self) { _ in
                                    SalonCard()
                                }
                            }
                        }
                        
                        // Nearby Salons Section
                        Text("Nearby Salons")
                            .font(.custom("Poppins-Bold", size: 26))
                            .foregroundColor(.init("textColor"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: gridItems, spacing: 15) {
                                ForEach (0...5, id: \.self) { _ in
                                    SalonCard()
                                }
                            }
                        }
                    }
                    .padding(.top, 10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal, 16)
            }
            .background(Color(.systemBackground))
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    HomeView()
}

