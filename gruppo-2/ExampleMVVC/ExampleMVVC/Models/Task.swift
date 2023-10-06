//
//  Task.swift
//  ExampleMVVC
//
//  Created by mr on 06/10/23.
//

import Foundation


struct Task: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted: Bool = false
}
