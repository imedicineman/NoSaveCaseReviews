//
//  UtilitiesView.swift
//  NoSave
//
//  Created by Robert Delikat on 3/7/25.
//

import SwiftUI

struct UtilitiesView: View {
    var passedValue: String //Do not initialize; it will be passed from ListOfTopics
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        
        Text("The program is in the \(passedValue) View")
            .font(.title2)
    }
}

struct UtilitiesView_Previews: PreviewProvider {
    static var previews: some View {
        UtilitiesView(passedValue: "")
    }
}
