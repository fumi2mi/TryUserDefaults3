//
//  Answer.swift
//  TryUserDefaults3
//
//  Created by Fumitaka Imamura on 2021/11/11.
//

import Foundation

struct Answer: Encodable, Decodable {
    var text: String
    var isCorrect: Bool
}
