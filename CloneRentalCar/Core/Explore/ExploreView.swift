//
//  ExploreView.swift
//  CloneRentalCar
//
//  Created by Asep Hikmat Fatahillah on 09/05/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    GradientColorBackground()
                    Spacer()
                        .frame(height: 150)
                    CustomSearchBar()
                }
            }
            .navigationStackModifier()
        }
    }
}

#Preview {
    ExploreView()
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
