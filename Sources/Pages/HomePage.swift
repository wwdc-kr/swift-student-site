import Ignite
import Foundation

struct HomePage: StaticPage {
    var title = ""
    
    let logoImagePath = "/images/logo.png"
    let logoLength = 160
    let buttonLength = 48

    var body: some HTML {
        Grid(alignment: .center) {
            CenterAlignedGrid(
                [
                    logoImagePath, 
                    "👋 WWDC 한국 장학생, 챌린지 위너 여러분들,",
                    "그리고 iOS를 공부하시는 국내 학생분들 모두 환영합니다."
                ],
                columns: 1
            ) { string in
                if string == logoImagePath {
                    Image(decorative: string)
                        .resizable()
                        .frame(maxHeight: logoLength)
                        .margin(.vertical, 96)
                } else {
                    Text(string)
                        .font(.lead)
                        .fontWeight(.regular)
                        .horizontalAlignment(.center)
                        .foregroundStyle(.black)
                }
            }
            .margin(.bottom, .px(100))
            
            Text {
                ForEach(URLLink.allCases) { urlLink in
                    CommunityComponent(
                        urlLink: urlLink,
                        size: (width: buttonLength, height: buttonLength)
                    )
                }
            }
            
            MainFooter()
                .margin(.top, .px(160))
        }
        .columns(1)
        .padding()
        .horizontalAlignment(.center)
    }
}
