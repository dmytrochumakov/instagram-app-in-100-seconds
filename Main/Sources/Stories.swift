//
//  Stories.swift
//
//
//  Created by Dmytro Chumakov on 20.04.2024.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(0..<10) { _ in
                    Image("profile", bundle: .module)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                }
            }
            .padding()
        }
    }
}
