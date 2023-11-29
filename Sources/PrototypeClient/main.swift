import Prototype
import SwiftUI

@Prototype(style: .labeled, kinds: .form, .view)
struct Author {
    let name: String
}

@Prototype(style: .inline, kinds: .form, .view)
struct Article {
    var title: String
    var content: String
    @Field(.secure) var password: String
    
    @Section("metadata")
    
    @Field(.readonly) var isPublished: Bool
    @Field(.hidden) let views: Int
    let author: Author
}

@Prototype(style: .inline, kinds: .settings)
struct General {
    var boolValue: Bool = false
    var intValue: Int = 0
    var doubleValue: Double = 0
    var stringValue: String = ""
    var optionalBoolValue: Bool?
    var optionalIntValue: Int?
    var optionalDoubleValue: Double?
    var optionalStringValue: String?
}
