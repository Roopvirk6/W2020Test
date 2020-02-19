//
//  main.swift
//  W2020Test
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
func readTextFile(FileName : String)
{
    print(Bundle.main.bundlePath)
    if let path = Bundle.main.path(forResource: FileName, ofType: "txt")
    {
        
    
    print(path)
        let str = try? String(contentsOfFile: path)
        if let s = str
        {
            print(s)
        }
        else
        {
            print("error while reading file")
        }
        
    }
    
}
readTextFile(FileName: "Data")

func readJSONUserInfo(FileName : String)
{
    if let path = Bundle.main.path(forResource: FileName, ofType: "json")
    {
    print(path)
    }
    
    
}





