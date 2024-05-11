//
//  Brand.swift
//  CloneRentalCar
//
//  Created by Asep Hikmat Fatahillah on 09/05/24.
//

import Foundation

struct Brand: Identifiable, Hashable, Codable {
    let id: String
    let brandName: String
    let imageName: String
    var carIds: [String]
}
