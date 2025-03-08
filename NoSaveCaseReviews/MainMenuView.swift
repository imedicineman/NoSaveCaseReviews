//
//  TestUIView.swift
//  NoSave
//
//  Created by Robert Delikat on 3/6/25.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        @Environment(\.dismiss) var dismiss
//        let loginSuccessful: Bool = false
        
        //        if loginSuccessful {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.white, .black, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            //TODO: Eventually eliminate test data below
            let topicToSelect = ["Keynote Tutorials",
                                 "Case Reviews by Selection",
                                 "Case Reviews Randomly Chosen",
                                 "Program Utilities",
                                 "Exit the Program"]
            NavigationStack {
                List {
                    ForEach(topicToSelect, id: \.self) { selected in
                        NavigationLink {
                            if selected == "Program Utilities" {
                                UtilitiesView(passedValue: "\(selected)")
                            } else if selected == "Exit the Program" {
                                ExitProgramView(passedValue: "\(selected)")
                            } else {
                                ListOfTopicsView(passedValue: "\(selected)")
                            }
                            
                        } label: {
                            Text(selected)
                        }
                    }
                }
                .navigationTitle("MainMenuView")
                .navigationBarTitleDisplayMode(.automatic)
                .font(.system(.headline))
            }
        }
        //        else {
        //       loginSuccessful = false
        //           Text("Login Failed")
        //        }
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
