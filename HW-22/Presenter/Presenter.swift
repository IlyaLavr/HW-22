//
//  Presenter.swift
//  HW-22
//
//  Created by Илья on 01.12.2022.
//

import Foundation

protocol MainScreen: AnyObject {
    func detData()
    func deleteData()
    func addData(name: String)
    
    init(view: ViewController)
}

