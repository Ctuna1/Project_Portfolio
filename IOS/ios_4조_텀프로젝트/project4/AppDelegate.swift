//
//  AppDelegate.swift
//  project4
//
//  Created by 502-24 on 2022/12/05.
//

import UIKit
import SQLite3
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    var dbName: String = ""
    var dbPath: String = ""
    var dbData: Array<NCData> = []
    var isFirstAccess: Bool = false


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        isFirstAccess = true
        
        dbName = "criminalList.db"
        dbPath = "/Users/a502-25/Downloads/criminalList.db"
        
        readNCDataFromDB()
        
        return true
    }
    
    func readNCDataFromDB() {
        var database: OpaquePointer? = nil
        
        if isFirstAccess == true {
            dbData = []
            isFirstAccess = false
            
        } else {
            dbData.removeAll()
        }
        if sqlite3_open(dbPath, &database) == SQLITE_OK {
            let sqlStatement: String = "SELECT * FROM tblList ORDER BY NC_INDEX DESC"
            var compiledStatement: OpaquePointer? = nil
            if sqlite3_prepare_v2(database, sqlStatement, EOF, &compiledStatement, nil) == SQLITE_OK {
                while sqlite3_step(compiledStatement) == SQLITE_ROW {
                    let aIndex = Int(sqlite3_column_int(compiledStatement, 0))
                    let aName = String(cString: sqlite3_column_text(compiledStatement, 1))
                    let aNo = String(cString: sqlite3_column_text(compiledStatement, 2))
                    let aAddr = String(cString: sqlite3_column_text(compiledStatement, 3))
                    let ncData: NCData = NCData(pIndex: aIndex, pName: aName, pNo: aNo, pAddr: aAddr)
                    dbData.append(ncData)
                    print(aIndex, aName, aNo, aAddr) // for debug
                }
            } else {
                print ("could not prepare statement \(String(describing: sqlite3_errmsg(database)))")
            }
            sqlite3_finalize(compiledStatement)
        }
        sqlite3_close(database)
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

