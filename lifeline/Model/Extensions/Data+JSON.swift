//
//  Data+JSON.swift
//  lifeline
//
//

import Foundation

extension Data {
    public func decodeJson<T>(_ type: T.Type) -> T? where T: Decodable {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        if let response = try? JSONDecoder().decode(type, from: self) {
            return response
        }
        
        return nil
    }
}
