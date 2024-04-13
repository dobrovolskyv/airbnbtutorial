//
//  ProfileIView.swift
//  airbnbtutorial
//
//  Created by Vladislav on 12/04/2024.
//

import SwiftUI

struct ProfileIView: View {
    var body: some View {
        VStack {
            //view profile log
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading, spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip")
                }
                
                LogInButtonView(title: "Log in")
                
                HStack{
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            VStack(spacing: 24){
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "visit the help center")
            }
            .padding()
        }
        
       
        
    }
}

#Preview {
    ProfileIView()
}
