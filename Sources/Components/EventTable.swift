import Ignite

struct EventTable: HTML {
    var body: some HTML {
        Table(Event.allEvents, filterTitle: "이벤트 검색하기") { event in
            Row {
                event.name
                
                event.when
                
                switch event.location {
                case let .both(address: address):
                    address
                case let .inPerson(address: address):
                    address
                case .online:
                    "온라인"
                }
                
                Link("🔗", target: URL(string: event.link)!)
                    .linkStyle(.button)
                    .target(.newWindow)
                    .role(.light)
            }
        } header: {
            "이름"
            "날짜"
            "장소"
            "더 알아보기"
        }
        .background(.clear)
        .margin(.bottom, .xLarge)
    }
}
