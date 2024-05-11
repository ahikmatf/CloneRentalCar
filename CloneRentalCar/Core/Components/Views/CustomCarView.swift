//
//  CustomCarView.swift
//  CloneRentalCar
//
//  Created by Asep Hikmat Fatahillah on 11/05/24.
//

import SwiftUI

struct CustomCarView: View {
    @StateObject private var viewModel: ExploreViewModel
    private var index: Int
    @State private var isFavorite: Bool
    
    init(viewModel: ExploreViewModel, index: Int) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        self.index = index
        self.isFavorite = viewModel.cars[index].isFavorite
    }
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .frame(height: 120)
                .overlay {
                    HStack(spacing: 10) {
                        Image(viewModel.cars[index].mainImageName)
                            .resizable()
                            .frame(width: 80, height: 50)
                        VStack(alignment: .leading, spacing: 12) {
                            Text(viewModel.cars[index].carName)
                                .font(.headline)
                                .fontWeight(.semibold)
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.orange)
                                Text(String(format: "%.1f", viewModel.cars[index].rating))
                            }
                            Text("By \(viewModel.cars[index].hostName)")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                        Button(action: {
                            isFavorite.toggle()
                        }, label: {
                            Image(systemName: isFavorite ? "heart.fill" : "heart")
                                .foregroundStyle(.red)
                        })
                    }
                    .padding(.horizontal)
                }
        }
    }
}

#Preview {
    CustomCarView(viewModel: ExploreViewModel(), index: 0)
}
