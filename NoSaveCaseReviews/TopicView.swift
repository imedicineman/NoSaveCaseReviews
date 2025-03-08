//
//  TopicView.swift
//  NoSave
//
//  Created by Robert Delikat on 3/6/25.
//

import SwiftUI

struct TopicView: View {
    var passedValue: String //Do not initialize; it will be passed from ListOfTopics
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        
        Text("Topic Selected was \(passedValue)\n and this is the Topic View")
            .font(.title2)
        Spacer()
    }
}

struct TopicView_Previews: PreviewProvider {
    static var previews: some View {
        TopicView(passedValue: "")
    }
}
