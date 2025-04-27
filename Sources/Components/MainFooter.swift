import Ignite
import Foundation

struct MainFooter: DocumentElement {
    var body: some HTML {
        Column {
            Text("©2020 WWDC Scholars Korea")
                .horizontalAlignment(.center)
                .font(.body)
                .foregroundStyle(.black)
                .fontWeight(.light)
        }
    }
}
