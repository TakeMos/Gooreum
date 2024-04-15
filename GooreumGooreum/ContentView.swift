//
//  ContentView.swift
//  GooreumGooreum
//
//  Created by kim kanghyeok on 4/15/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello man!")
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
