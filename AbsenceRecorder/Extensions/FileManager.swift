//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Okuyama-Smith, Sean (NA) on 16/02/2022.
//

import Foundation

extension FileManager {
    
    func getPath() -> URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }

    func save<T: Codable>(to filePath: String, object: T) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(object) {
            if let json = String(data: encoded, encoding: .utf8){
                let url = getPath().appendingPathComponent(filePath)
                do {
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    func load<T: Codable>(from filePath: String) -> T? {
        let url = getPath().appendingPathComponent(filePath)
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode(T.self, from: data){
                return loaded
            } else {
                return nil
            }
        } else {
            print("error message here")
            return nil
        }
    }
}
