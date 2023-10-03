
import SwiftUI

struct GalleryView: View {
    
    @State var photos = [String]()
    var dataService = DataService()
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            
            GeometryReader{ proxy in
                ScrollView (showsIndicators: false){
                    LazyVGrid(columns: [
                        GridItem(spacing: 10),
                        GridItem(spacing: 10),
                        GridItem(spacing: 10)],
                              spacing: 10){
                        ForEach(photos, id: \.self){ p in
                            Image(p)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: (proxy.size.width - 20) / 3)
                                .clipped()
                        }
                    }
                }

            }
            
        }
        .padding(.horizontal)
        .onAppear{
            photos = dataService.getPhotos()
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
