//
//  FeedView.swift
//  SoulMate
//
//  Created by Jason Jihoon Kim on 5/16/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 32){
                    ForEach(0 ... 10, id: \.self) { post in
                            FeedCell()
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    //Need to add an image after
                    //.resizable()
                    //.frame(width: 100, height: 32)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
