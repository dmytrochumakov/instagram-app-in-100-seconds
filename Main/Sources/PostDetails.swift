//
//  PostDetails.swift
//
//
//  Created by Dmytro Chumakov on 20.04.2024.
//

import SwiftUI

struct PostDetailsView: View {
    var body: some View {
        ForEach(0..<10) { _ in
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Image(systemName: "person")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    Text("Username")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }.padding(.leading, 10)
                HStack(spacing: 10) {
                    Image("nature", bundle: .module)
                        .resizable()
                }
                .frame(height: 300)
                HStack {
                    Button {
                        print("Like")
                    } label: {
                        Image(systemName: "heart")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                    Button {
                        print("Comment")
                    } label: {
                        Image(systemName: "message")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                    Button {
                        print("Share")
                    } label: {
                        Image(systemName: "arrowshape.turn.up.right")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                }.padding(.leading, 10)
                VStack(alignment: .leading) {
                    Text("Likes: 100")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Text("Comment: text")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                }.padding(.leading, 10)
            }.padding(.top, 10)
        }
    }
}
