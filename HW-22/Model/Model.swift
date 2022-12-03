//
//  Model.swift
//  HW-22
//
//  Created by Илья on 01.12.2022.
//

import Foundation
import CoreData

protocol ModelData: AnyObject {
    func detData()
    func deleteData()
    func addData(name: String)
}

final class Model: ModelData {
    
    var persistentContainer: NSPersistentContainer = {
            
        let container = NSPersistentContainer(name: "CoreDataTest")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            print("storeDescription = \(storeDescription)")
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    } ()
    
    func detData() {
        
    }
    
    func deleteData() {
        
    }
    
    func addData(name: String) {
        
    }
}
