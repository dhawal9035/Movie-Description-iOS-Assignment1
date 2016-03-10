//
//  MovieDescription.swift
//  MovieDescription
//
//  I give the Instructor and Arizona State University right to use
//  this application source code to build and evaluate the software package.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
//  Created by dssoni on 1/19/16.
//  @author Dhawal Soni mailto:dhawal.soni@asu.edu
//  @version 1.0 January 19, 2016
//  Copyright © 2016 Dhawal Soni. All rights reserved.
//

import Foundation

class MovieDescription {
    var title: String
    var year: String
    var rated: String
    var released:String
    var runTime:String
    var genre:String
    var actors:String
    var plot:String
    init (jsonStr: String){
        self.title = ""
        self.year=""
        self.rated=""
        self.released=""
        self.runTime=""
        self.genre=""
        self.actors=""
        self.plot=""
        
        if let data: NSData = jsonStr.dataUsingEncoding(NSUTF8StringEncoding){
            do{
                let dict = try NSJSONSerialization.JSONObjectWithData(data,options:.MutableContainers) as?[String:AnyObject]
                self.title = (dict!["Title"] as? String)!
                self.year = (dict!["Year"] as? String)!
                self.rated = (dict!["Rated"] as? String)!
                self.released = (dict!["Released"] as? String)!
                self.runTime = (dict!["Runtime"] as? String)!
                self.genre = (dict!["Genre"] as? String)!
                self.actors = (dict!["Actors"] as? String)!
                self.plot = (dict!["Plot"] as? String)!
            } catch {
                print("unable to convert to dictionary")
                
            }
        }
    }
    
    func toJsonString() -> String {
        var jsonStr = "";
        let dict = ["Title": title, "Year": year, "Rated":rated, "Released": released, "Runtime": runTime, "Genre": genre, "Actors": actors, "Plot": plot]
        do {
            let jsonData = try NSJSONSerialization.dataWithJSONObject(dict, options: NSJSONWritingOptions.PrettyPrinted)
            // here "jsonData" is the dictionary encoded in JSON data
            jsonStr = NSString(data: jsonData, encoding: NSUTF8StringEncoding)! as String
        } catch let error as NSError {
            print(error)
        }
        return jsonStr
    }
    
    
}