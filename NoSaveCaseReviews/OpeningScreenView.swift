//
//  SplashScreenView.swift
//  NoSaveCaseReviews
//
//  Created by Robert Delikat on 3/6/25.
//

import SwiftUI

struct OpeningScreenView: View {
    var loginSuccessful: Bool = true //Do not initialize; it will be passed from SplashScreen
    var body: some View {
        
        //        ZStack {
        //            LinearGradient(gradient: Gradient(colors: [.white, .black, .white]),
        //                           startPoint: .topLeading,
        //                           endPoint: .bottomTrailing)
        //            .edgesIgnoringSafeArea(.all)
        ZStack {
            NavigationStack {
                VStack {
                    NavigationLink {
                        Text("This will be Login Screen")
                    } label: {
                        Text("Login")
                            .foregroundColor(.black)
                    }
                    .font(.title)
                    .padding()
                    
                    Image("SplashScreen")
                        .resizable()
                    //.aspectRatio(contentMode: .fit)
                    //.scaledToFit()
                        .padding()
                        .scaledToFit()
                    Group {
                        Text("Tutorials")
                        Text("&")
                        Text("Case Reviews")
                    }
                    .font(.system(size: 40, weight: .medium, design: .default))
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}
struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        OpeningScreenView()
    }
}
