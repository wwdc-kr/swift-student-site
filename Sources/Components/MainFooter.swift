import Ignite
import Foundation

struct MainFooter: DocumentElement {
    var body: some HTML {
        Column {
            Text("©2020 WWDC Scholars Korea")
                .horizontalAlignment(.center)
                .font(.body)
                .fontWeight(.light)
                .foregroundStyle(.black.opacity(0.7))
            
            Text {
                Link("Created in Swift with Ignite", target: "https://github.com/twostraws/Ignite")
                    .target(.newWindow)
                    .role(.none)
            }
            .font(.body)
            .fontWeight(.light)
            .foregroundStyle(.black.opacity(0.7))
        }
    }
}
