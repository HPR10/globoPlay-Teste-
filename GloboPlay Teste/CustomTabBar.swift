import SwiftUI

struct CustomTabBar: View {

    @State var selectTab = "2"

    init() {
        UITabBar.appearance().isHidden = true
    }

    var body: some View {


        ZStack(alignment: .bottom) {
            TabView(selection: $selectTab) {
                Text("Inicio")
                    .tag("1")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Inicio")

                    }
                Text("Minha Lista")
                    .tag("2")
                    .tabItem {
                        Image(systemName: "star")
                        Text("Minha Lista")
                }
            }
            HStack {
                Button {
                    selectTab = "1"
                } label: {
                    VStack {
                        Image(systemName: "house")
                        Text("Inicio")
                    }
                }


                Button {
                    selectTab = "2"
                } label: {
                    VStack {
                        Image(systemName: "star")
                        Text("Minha Lista")
                    }
                }
            }
            .padding(.vertical, 20)
            .frame(maxWidth: .infinity)
            .background(.black)
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
