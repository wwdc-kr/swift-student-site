import Foundation

enum URLLink: CaseIterable {
    case instagram
    case discord
    case github
    
    var urlString: String {
        switch self {
        case .instagram:
            "https://instagram.com/wwdc_scholars_kr"
        case .discord:
            "https://discord.com/invite/AES2GmPMc7"
        case .github:
            "https://github.com/wwdc-kr"
        }
    }
    
    var iconPath: String {
        switch self {
        case .instagram:
            "/images/instagram.svg"
        case .discord:
            "/images/discord.svg"
        case .github:
            "/images/github.svg"
        }
    }
}
