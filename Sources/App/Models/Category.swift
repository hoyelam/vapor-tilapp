import Vapor
import FluentPostgreSQL

final class Category: Codable {
    var id: Int?
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

extension Category {
    var acronyms: Siblings<Category, Acronym, AcronymCategoryPivot> {
        return siblings()
    }
}

extension Category  : PostgreSQLModel   {}
extension Category  : Content           {}
extension Category  : Migration         {}
extension Category  : Parameter         {}
