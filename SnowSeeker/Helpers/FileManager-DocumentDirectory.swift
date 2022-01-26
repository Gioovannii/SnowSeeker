//
//  FileManager-DocumentDirectory.swift
//  SnowSeeker
//
//  Created by Giovanni Gaffé on 2022/1/26.
//

import Foundation

extension FileManager {
    static var documentDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
