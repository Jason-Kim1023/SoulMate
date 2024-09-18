//
//  FeedCell.swift
//  SoulMate
//
//  Created by Jason Jihoon Kim on 5/16/24.
//

import SwiftUI

struct FeedCell: View {
    @State private var didUserPost = true
    @State private var didUserLongPress = false
    @State private var firstImageName = "imageTest"
    @State private var secondImageName = "testimage2"
    var body: some View {
        VStack{
            //Profile Pic and username
            HStack{
               Image("asianKidTestPFP")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Text("Jason Kim")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 8)
            
            //Image (Both small and Big image)
            ZStack(alignment: .topLeading) {

                Image(firstImageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 400)
                    .clipShape(Rectangle())
                    .blur(radius: didUserPost ? 0 : 8)
                
                
                Button{
                    let temp = self.firstImageName
                    self.firstImageName = self.secondImageName
                    self.secondImageName = temp
                } label: {
                    Image(secondImageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 5, height: 10)))
                        .overlay(RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.black, lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/))
                        .padding(8)
                        .blur(radius: didUserPost ? 0 : 8)
                }
                .disabled(!didUserPost)
                
                Button{
                    
                } label: {
                    Text("Post a Picture")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 180, height: 32)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.black, lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/))
                }
                .padding(.top, 175)
                .padding(.leading, 107)
                .disabled(didUserPost)
                .opacity(didUserPost ? 0 : 1)
            }
            
            
            //action buttons
            HStack(spacing: 16){
                Button{
                    print("Like Post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button{
                    print("comment")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button{
                    print("react to post")
                } label: {
                    Image(systemName: "face.smiling")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            
            //Likes label
            Text("23 Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            //caption label
            HStack {
                Text("this is a test caption")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)

            
            //time stamp label
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    FeedCell()
}
