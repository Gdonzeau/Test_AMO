import Foundation

protocol URLProvider {
    func getUUIDsURL() -> URL?
    func postUUIDsURL() -> URL?
    func getUsersURL() -> URL?
    func getUsersDataURL() -> URL?
}

class DefaultURLProvider: URLProvider {
    func getUUIDsURL() -> URL? {
        return URL(string: ApiData.apiBLE_UUID + ApiData.apiKey)
    }
    
    func postUUIDsURL() -> URL? {
        return URL(string: ApiData.apiBLE_UUID + ApiData.apiKey)
    }
    
    func getUsersURL() -> URL? {
        return URL(string: ApiData.apiUsers + ApiData.apiKey)
    }
    
    func getUsersDataURL() -> URL? {
        return URL(string: ApiData.apiUser_data + ApiData.apiKey)
    }
}
