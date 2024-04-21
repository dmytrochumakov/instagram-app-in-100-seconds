//
//  NavBar.swift
//
//
//  Created by Dmytro Chumakov on 20.04.2024.
//

import SwiftUI

extension View {
    func navBarModifier() -> some View {
        modifier(NavBarModifier())
    }
}

struct NavBarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        print("Camera")
                    } label: {
                        Image(systemName: "camera")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                    Text("Inst")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        print("Reels")
                    } label: {
                        Image(systemName: "film")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                    Button {
                        print("Direct")
                    } label: {
                        Image(systemName: "paperplane")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                }
            }
    }
}
