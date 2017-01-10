//
//  ViewController.swift
//  faveButtonPractice
//
//  Created by Marty Avedon on 1/9/17.
//  Copyright © 2017 Marty Hernandez Avedon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftBeer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftBeer.image = #imageLiteral(resourceName: "Beer-Solid") // get this by typing in 'Image Literal' & using autocomplete -- should bring up a menu of image assets
        // if we want to change the color of the beer on click, we need to use two different images in two different colors...
        leftBeer.tintColor = .yellow
        leftBeer.backgroundColor = .blue
        leftBeer.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
        leftBeer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.333),
        leftBeer.heightAnchor.constraint(equalTo: leftBeer.widthAnchor),
        leftBeer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        leftBeer.topAnchor.constraint(equalTo: view.topAnchor, constant: 120)
        ].map{$0.isActive = true}
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

