//
//  NavigationStackModifier.swift
//  CloneRentalCar
//
//  Created by Asep Hikmat Fatahillah on 09/05/24.
//

import SwiftUI

struct NavigationStackModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .scrollIndicators(.hidden)
            .background(Color(.systemGray6))
            .ignoresSafeArea()
            .navigationTitle("Find Cars")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Circle()
                        .fill(.white.opacity(0.1))
                        .frame(width: 45, height: 45)
                        .overlay {
                            Image(systemName: "bell.badge")
                                .foregroundStyle(.white)
                        }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image("michael_scott")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .scaledToFill()
                        .clipShape(Circle())
                }
            }
    }
}

extension View {
    func navigationStackModifier() -> some View {
        return modifier(NavigationStackModifier())
    }
}
