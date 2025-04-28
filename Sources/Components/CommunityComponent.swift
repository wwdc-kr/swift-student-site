import Ignite
import Foundation

struct CommunityComponent: InlineElement {
    let urlLink: URLLink
    let size: (width: Int, height: Int)
    
    var body: some HTML {
        Link(target: urlLink.urlString) {
            Image(decorative: urlLink.iconPath)
                .resizable()
                .frame(maxWidth: size.width, maxHeight: size.height)
                .margin(.bottom, .px(16))
        }
        .target(.newWindow)
        .relationship(.noOpener, .noReferrer)
        .margin(.horizontal, 24)
    }
}
