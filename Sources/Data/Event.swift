import Foundation

struct Event: Identifiable {
    let id = UUID()
    /// 행사 이름
    let name: String
    /// "6월 9일~13일"
    let when: String
    ///
    let location: Location
    /// "https://wwdc.kr/winnersnight/2025"
    let link: String
}

extension Event {
    enum Location {
        case online
        case inPerson(address: String)
        case both(address: String)
    }
}

extension Event {
    static let allEvents: [Event] = [
        .wwdc, .kwdc
    ]
    
    static let wwdc = Event(
        name: "WWDC25",
        when: "6월 9일~13일",
        location: .both(address: "Apple Park, Cupertino, CA, USA"),
        link: "https://developer.apple.com/kr/wwdc25"
    )
    
    static let kwdc = Event(
        name: "KWDC",
        when: "9월 5일",
        location: .inPerson(address: "서울 양재 aT센터"),
        link: "https://kwdc.dev"
    )
}
