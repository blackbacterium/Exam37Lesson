//
//  NestedTypes.swift
//  Exam37Lesson
//
//  Created by Black Bacterium on 17.06.2026.
//

import Foundation

struct TeaModel {
    let nameTea: String
    let teaDetail: String
    let teaFullDetail: String
}

struct TeaSection {
    let title: String
    let teas: [TeaModel]
}
