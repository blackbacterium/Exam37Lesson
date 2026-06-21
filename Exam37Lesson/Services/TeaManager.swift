//
//  TeaManager.swift
//  Exam37Lesson
//
//  Created by Black Bacterium on 20.06.2026.
//

import Foundation

protocol ITeaManager {
    func addTeas(_ teas: [TeaSection])
    func getAllTeas() -> [TeaSection]
}

class TeaManager {
    
    private var teas = [TeaSection]()
}

extension TeaManager: ITeaManager {
    func addTeas(_ teas: [TeaSection]) {
        self.teas.append(contentsOf: teas)
    }
    
    func getAllTeas() -> [TeaSection] {
        teas
    }
}
