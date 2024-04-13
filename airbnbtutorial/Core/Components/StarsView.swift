//
//  StarsView.swift
//  airbnbtutorial
//
//  Created by Vladislav on 09/04/2024.
//

import SwiftUI

struct StarsView: View {
    
    var text = "4.86 ! !"
    
    var body: some View {
        HStack(spacing: 2){
            Image(systemName: "star.fill")
            
            Text(text)
        }
        .foregroundColor(.black)
    }
}

#Preview {
    StarsView(text: String())
}
