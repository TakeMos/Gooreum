//
//  GooreumGooreumApp.swift
//  GooreumGooreum
//
//  Created by kim kanghyeok on 4/15/24.
//

import SwiftUI

@main
struct GooreumGooreumApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
