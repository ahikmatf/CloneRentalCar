//
//  ExploreView.swift
//  CloneRentalCar
//
//  Created by Asep Hikmat Fatahillah on 09/05/24.
//

import SwiftUI

struct ExploreView: View {
    @StateObject private var viewModel: ExploreViewModel
    
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    GradientColorBackground()
                    VStack {
                        Spacer().frame(height: 150)
                        CustomSearchBar()
                        Spacer().frame(height: 60)
                        PopularBrandsView(viewModel: viewModel)
                        TopViewModel(viewModel: viewModel)
                    }
                }
            }
            .navigationStackModifier()
        }
    }
}

#Preview {
    ExploreView(viewModel: ExploreViewModel())
}

struct GradientColorBackground: View {
    var body: some View {
        VStack {
            LinearGradient(colors: [.gray, .blue], startPoint: .top, endPoint: .bottom)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
            Spacer()
        }
    }
}
