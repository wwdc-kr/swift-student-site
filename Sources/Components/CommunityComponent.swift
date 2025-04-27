import Ignite
import Foundation

struct CommunityComponent: HTML {
    let urlLink: URLLink
    let size: (width: Int, height: Int)
    
    var body: some HTML {
        var image: any InlineElement {
            Image(decorative: urlLink.iconPath)
                .resizable()
                .frame(maxWidth: size.width, maxHeight: size.height)
                .margin(.bottom, .px(16))
        }
        Link(image, target: urlLink.urlString)
            .target(.newWindow)
    }
}
