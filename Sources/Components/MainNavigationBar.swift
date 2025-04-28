import Ignite

struct MainNavigationBar: HTML {
    var body: some HTML {
        NavigationBar(logo: Image(decorative: "/images/navigationbar.logo.png").frame(height: 32)) {
            Link("이벤트", target: EventPage())
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.light)
        .background(Color(hex: "#F4F2F0"))
        .position(.stickyTop)
    }
}
