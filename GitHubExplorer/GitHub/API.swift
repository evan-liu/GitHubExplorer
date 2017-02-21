import Foundation
import WebAPIKit

final class GitHubAPI: StubbableProvider {
    let baseURL = URL(string: "https://api.github.com")!
    let requireAuthentication = true
    var authentication: WebAPIAuthentication?
    
    var plugins = PluginHub()
        .addRequestProcessor(RequestHeaderSetter(key: .accept, value: "application/vnd.github.v3+json"))
        .addResponseProcessor(ResponseStatusValidator())
    
    var httpClient: HTTPClient?
}

struct GitHub {
    static let api = GitHubAPI()
}
