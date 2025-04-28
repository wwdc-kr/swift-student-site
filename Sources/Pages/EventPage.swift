//
//  EventPage.swift
//  KoreanSwiftStudentSite
//
//  Created by 이재성 on 4/28/25.
//

import Ignite

struct EventPage: StaticPage {
    var title = "이벤트"
    var isEventOpened: Bool { false }
    
    var body: some HTML {
        Grid(alignment: .center, spacing: 48) {
            Text("현재 예정된 행사가 없습니다")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.black)
                .margin(.top, .percent(Percentage(10)))
            
            Text("🌉 다음 행사를 준비 중 입니다 🌉")
                .font(.lead)
                .fontWeight(.medium)
                .foregroundStyle(.black)
            
            Text("연례행사로 위너스데이, 위너스나잇 행사들을 진행하고 있습니다. 행사가 예정되면 이 페이지에서 안내 됩니다.")
                .font(.body)
                .fontWeight(.regular)
                .foregroundStyle(.black)
            
            if isEventOpened {
                Link("이벤트 참가신청", target: URL(string: "https://wwdc.kr")!)
                    .linkStyle(.button)
                    .target(.newWindow)
                    .role(.dark)
            } else {
                Text {
                    Button("이벤트 참가신청") {
                        ShowAlert(message: "신청 기간이 아닙니다.")
                    }
                    .role(.dark)
                }
            }
            
            EventTable()
                .padding(48)
        }
        .columns(1)
        .horizontalAlignment(.center)
        .padding()
    }
}
