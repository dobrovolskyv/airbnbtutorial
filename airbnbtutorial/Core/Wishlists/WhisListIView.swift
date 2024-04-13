//
//  WhisListIView.swift
//  airbnbtutorial
//
//  Created by Vladislav on 12/04/2024.
//

import SwiftUI

struct WhisListIView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 32){
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Log in view your wishlists")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists once you've logged in!")
                        .font(.footnote)
                }
                
                
                LogInButtonView(title: "Log in")
                
                
                
                Spacer()
            }
            .padding()
            .navigationTitle("Wisglists")
        }
    }
}


#Preview {
    WhisListIView()
}

