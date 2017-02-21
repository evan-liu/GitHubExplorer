import Foundation
import Result
import WebAPIKit
import Marshal

struct User: ResponseJSONData {
    
    var login: String
    var id: Int
    var avatarURL: String
    var type: String
    var name: String?
    var company: String?
    var blog: String?
    var location: String?
    var email: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var followers: Int
    var following: Int
    
    init(json: MarshalDictionary) throws {
        login = try json.value(for: "login")
        id = try json.value(for: "id")
        avatarURL = try json.value(for: "avatar_url")
        type = try json.value(for: "type")
        name = try json.value(for: "name")
        company = try json.value(for: "company")
        blog = try json.value(for: "blog")
        location = try json.value(for: "location")
        email = try json.value(for: "email")
        bio = try json.value(for: "bio")
        publicRepos = try json.value(for: "public_repos")
        publicGists = try json.value(for: "public_gists")
        followers = try json.value(for: "followers")
        following = try json.value(for: "following")
    }
    
}

extension GitHubAPI {
    
    @discardableResult
    func getUser(login: String, handler: @escaping (Result<User, WebAPIError>) -> Void) -> Cancelable {
        return makeRequest(path: "users/\(login)").setRequireAuthentication(false).send {
            handler(User.map($0))
        }
    }
    
}
