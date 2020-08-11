//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by Zizo on 8/11/20.
//  Copyright © 2020 Abdelazizfmohamed@gmail.com. All rights reserved.
//

import Foundation

struct EmojiArt{
    var backgroundURL: URL?
    var emojis = [Emoji]()
    
    struct Emoji: Identifiable{
        let id :Int
        let text: String
        var x: Int
        var y: Int
        var size: Int
      fileprivate  init(id: Int, text: String, x: Int, y: Int, size: Int){
            self.text = text
            self.x = x
            self.y = y
            self.id = id
            self.size = size
            
        }
    }
    
    private var uniqueEmojiID = 0
   mutating func addEmoji(_ text: String,x: Int,y:Int,size: Int){
        uniqueEmojiID += 1
        emojis.append(Emoji(id: uniqueEmojiID, text: text, x: x, y: y, size: size))
    }
}
