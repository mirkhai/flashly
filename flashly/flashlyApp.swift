//
//  flashlyApp.swift
//  flashly
//
//  Created by Mirta Khairunnisa on 22/07/22.
//

import SwiftUI

@main
struct flashlyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
