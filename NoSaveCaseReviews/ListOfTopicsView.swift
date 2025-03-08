//
//  ListOfTopicsView.swift
//  NoSaveCaseReviews
//
//  Created by Robert Delikat on 3/6/25.
//

import SwiftUI

struct ListOfTopicsView: View {
    var passedValue: String //Do not initialize; it will be passed from ListOfTopics
    @Environment(\.dismiss) private var dismiss
    
    //TODO: Eventually eliminate test data below
    var topicToSelect = ["Cardiac",
                         "Respiratory",
                         "Shock",
                         "Trauma"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(topicToSelect, id: \.self) { selected in
                    NavigationLink {
                        TopicView(passedValue: "\(selected)")
                    } label: {
                        Text(selected)
                    }
                }
            }
            .navigationTitle("ListOfTopics View")
            .navigationBarTitleDisplayMode(.automatic)
            .font(.system(.headline))
        }
    }
}
struct ListOfTopicsView_Previews: PreviewProvider {
    static var previews: some View {
        ListOfTopicsView(passedValue: "")
    }
}
