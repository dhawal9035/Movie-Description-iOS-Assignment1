//
//  ViewController.swift
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

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    
    @IBOutlet weak var jsonView: UITextView!
    @IBOutlet weak var runText: UITextField!
    @IBOutlet weak var genreView: UITextView!
    @IBOutlet weak var releaseText: UITextField!
    @IBOutlet weak var plotView: UITextView!
    @IBOutlet weak var actorView: UITextView!
    @IBOutlet weak var ratingText: UITextField!
    @IBOutlet weak var yearText: UITextField!
    @IBOutlet weak var titleText: UITextField!
    
    @IBAction func buttonClicked(sender: AnyObject) {
        
        let md:MovieDescription = MovieDescription(jsonStr: "{\"Title\":\"Frozen\",\"Year\":\"2013\",\"Rated\":\"PG\",\"Released\":\"27 Nov 2013\",\"Runtime\":\"102 min\",\"Genre\":\"Animation, Adventure, Comedy\",\"Actors\":\"Kristen Bell, Idina Menzel, Jonathan Groff, Josh Gad\",\"Plot\":\"When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister, Anna, teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.\"}")
        //print("MD as json \(md.toJsonString())")
        jsonView.text=md.toJsonString()
        titleText.text = md.title
        yearText.text = md.year
        ratingText.text = md.rated
        releaseText.text = md.released
        runText.text = md.runTime
        genreView.text = md.genre
        actorView.text = md.actors
        plotView.text = md.plot
        
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

