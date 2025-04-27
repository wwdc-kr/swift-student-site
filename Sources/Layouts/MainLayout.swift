import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some HTML {
        Body {
            content
                .background(Color(hex: "#F4F2F0"))
        }
        .ignorePageGutters()
    }
}
