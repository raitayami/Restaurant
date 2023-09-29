
import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            Text(item.name)
                .bold()
            
            Spacer()
            
            Text("$" + item.price)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color(.brown).opacity(0.1))
    }
}

struct MenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuListRow(item: MenuItem(name: "Test", price: "$te.sst", imageName: "tako-sushi"))
    }
}
