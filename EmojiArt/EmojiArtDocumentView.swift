//
//  EmojiArtDocumentView.swift
//  EmojiArt
//
//  Created by Zizo on 8/11/20.
//  Copyright © 2020 Abdelazizfmohamed@gmail.com. All rights reserved.
//

import SwiftUI

struct EmojiArtDocumentView: View {
    
    @ObservedObject var document: EmojiArtDocument

    var body: some View {
        VStack{
        ScrollView(.horizontal){
        HStack{
            ForEach(EmojiArtDocument.palette.map{String($0)},id: \.self ){ emoji in
                Text(emoji)
                    .font(Font.system(size: self.defaultEmojiSize))
                
            }
            }
            
        }.padding(.horizontal)
            Rectangle().foregroundColor(Color.yellow)
                .edgesIgnoringSafeArea([.horizontal,.bottom])
        }}

    private let defaultEmojiSize: CGFloat = 40
}

