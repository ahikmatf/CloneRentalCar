//
//  FavoriteView.swift
//  CloneRentalCar
//
//  Created by Asep Hikmat Fatahillah on 11/05/24.
//

import SwiftUI

struct FavoriteView: View {
    @StateObject private var viewModel: ExploreViewModel
    private var favoritedCars: [Car]
    
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        self.favoritedCars = viewModel.cars.filter { $0.isFavorite }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                ForEach(favoritedCars) { car in
                    let index = viewModel.cars.firstIndex(where: { $0 == car }) ?? 0
                    CustomCarView(viewModel: viewModel, index: index)
                }
                Spacer()
            }
            .background(Color(.systemGray6))
            .navigationTitle("Favorites")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FavoriteView(viewModel: ExploreViewModel())
}
