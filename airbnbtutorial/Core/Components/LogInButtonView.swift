//
//  LogInButtonView.swift
//  airbnbtutorial
//
//  Created by Vladislav on 12/04/2024.
//

import SwiftUI

struct LogInButtonView: View {
    let title: String
    var body: some View {
        Button{
            print(title)
        } label: {
            Text(title)
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    LogInButtonView(title: "logi in")
}
