//
//  DataManager.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 22/12/25.
//

import Foundation
import SwiftUI

class DataManager {
    private init() {}
    
    static let shared = DataManager()
    @AppStorage(UserDefaultKeys.appContainer) var appContainer: Data?
    @AppStorage(UserDefaultKeys.isSignedin) var isSignedin: Bool?
    
    func saveData(_ appstorage: AppStorageContainer) {
        let data = try? JSONEncoder().encode(appstorage)
        appContainer = data
    }
    
    func getData(_ key: String) -> AppStorageContainer? {
        guard let appContainer = appContainer else { return nil }
        return try? JSONDecoder().decode(AppStorageContainer.self, from: appContainer)
    }
    
    func logout() {
        appContainer = nil
        isSignedin = nil
    }
}


enum UserDefaultKeys  {
    static let appContainer = "appContainer"
    static let isSignedin = "isSignedin"
}
