//
//  CustomSearchBar.swift
//  CloneRentalCar
//
//  Created by Asep Hikmat Fatahillah on 09/05/24.
//

import SwiftUI

struct CustomSearchBar: View {
    var body: some View {
        Button(action: {}, label: {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                    .foregroundStyle(.white)
                Text("Search for a car...")
                    .font(.footnote)
                    .foregroundStyle(.white)
                Spacer()
            }
            .frame(height: 60)
            .overlay {
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray4))
                    .shadow(color: .black.opacity(0.4), radius: 10)
            }
            .padding(.horizontal)
        })
    }
}

#Preview {
    CustomSearchBar()
}
