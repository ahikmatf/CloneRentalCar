//
//  TopViewModel.swift
//  CloneRentalCar
//
//  Created by Asep Hikmat Fatahillah on 11/05/24.
//

import SwiftUI

struct TopViewModel: View {
    @StateObject private var viewModel: ExploreViewModel
    
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Top Cars :flame:")
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
            }
            
            ForEach(viewModel.cars) { car in
                let index = viewModel.cars.firstIndex { $0 == car } ?? 0
                CustomCarView(viewModel: viewModel, index: index)
                    .padding(.bottom)
            }
        }
        .padding()
    }
}

#Preview {
    TopViewModel(viewModel: ExploreViewModel())
}
