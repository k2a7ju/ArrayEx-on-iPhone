//
//  ArrayEx.swift
//  ArrayEX
//
//  Created by HIROYUKI SHIRAKAZU on 2016/04/27.
//  Copyright © 2016年 HIROYUKI SHIRAKAZU. All rights reserved.
//

import UIKit

class ArrayEx: UIView {
    //描写時に呼べれる
    override func drawRect(rect: CGRect) {
        //配列の生成
        var array: Array<String> = Array<String>()
        //配列の要素の追加
        array.append("iPhone")
        array.append("iPad")
        array.append("iPod touch")
        
        //配列の要素の変更
        array[2] = "Apple TV"
        
        //配列の要素の取得
        for i in 0...2{
            drawString(array[i],x:0, y:20 + i * 26)
        }
        //配列の要素の取得
        for element in array {
            print(element)
        }
        
        //連想配列の生成
        var dictionary: Dictionary<String, String> =  Dictionary<String, String>()
        dictionary["Phone"] = "iPhone"
        dictionary["Tablet"] = "iPad"
        dictionary["MusicPlayer"] = "iPod"
        
        dictionary["Tablet"] = "AppleTV"
        
        //連想配列の要素の取得
        drawString(dictionary["Phone"]!, x: 0, y: 20 + 4 * 26)
        drawString(dictionary["Tablet"]!, x: 0, y: 20 + 5 * 26)
        drawString(dictionary["MusicPlayer"]!, x: 0, y: 20 + 6 * 26)
    
    }

    //文字列の描写
    func drawString(str:String, x:Int, y:Int){
        let attrs = [NSFontAttributeName:UIFont.systemFontOfSize(24)]
        str.drawAtPoint(CGPointMake(CGFloat(x), CGFloat(y)),withAttributes: attrs)
    }


}
