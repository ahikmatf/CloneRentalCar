//
//  ExploreViewModel.swift
//  CloneRentalCar
//
//  Created by Asep Hikmat Fatahillah on 11/05/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var brands: [Brand] = [
        .init(id: UUID().uuidString, brandName: "Mercedes", imageName: "mercedes", carIds: []),
        .init(id: UUID().uuidString, brandName: "BMW", imageName: "bmw", carIds: []),
        .init(id: UUID().uuidString, brandName: "Jaguar", imageName: "jaguar", carIds: []),
        .init(id: UUID().uuidString, brandName: "Audi", imageName: "audi", carIds: [])
    ]
}
