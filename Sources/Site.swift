import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = SimpleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct SimpleSite: Site {
    var name = "Korean Swift Students"
    var titleSuffix = " - 🇰🇷 Swift Students"
    var description: String? = "WWDC Scholars & Swift Student Challenge Winners in South Korea 🇰🇷"
    
    var language: Language = .korean
    
    var url = URL(static: "https://wwdc.kr")
    var homePage = HomePage()
    var layout = MainLayout()
    var favicon = URL(string: "/images/favicon.png")
    
    var staticPages: [any StaticPage] {
        HomePage()
        
        EventPage()
    }
}
