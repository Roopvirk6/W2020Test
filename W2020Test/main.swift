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
   // print(Bundle.main.bundlePath)
    if let path = Bundle.main.path(forResource: FileName, ofType: "txt")
    {
        
    
  //  print(path)
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
//readTextFile(FileName: "Data")

//func readJSONUserInfo(FileName : String)
//{
   // if let path1 = Bundle.main.path(forResource: FileName, ofType: "json")
  //  {
   // print(path1)
    
    //let str = try? String(contentsOfFile: path1)
    //if let s = str
    //{
       // print(s)
 
   // else
   // {
     //   print("error while reading file")
    //}
    
   // }
    
    


//readJSONUserInfo(FileName : "SingleUser")
func readJSONUserInfo(fileName : String)
{
    let filePath = Bundle.main.url(forResource: fileName, withExtension : "json")
    
        guard let path = filePath else {
            print("invalid file path")
            return
        }
        guard let data = try? Data(contentsOf: path) else {
            print("error while read data from url")
            return
        }
        guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else {
            print("error while reading json data")
            return
        }
        print(json)
    if let userDictionary = json as? [String : Any]
    {
        print(userDictionary)
        let id = userDictionary["id"] ?? "no id found"
        print(id)
        if let addressDictionary = userDictionary["address"] as? [String : Any]
        {
            print(addressDictionary["city"]!)
        }
    }
    
}
readJSONUserInfo(fileName: "SingleUser")


























