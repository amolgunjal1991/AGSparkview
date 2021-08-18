//
//  ViewController.swift
//  AGSparkview
//
//  Created by amolgunjal1991 on 08/18/2021.
//  Copyright (c) 2021 amolgunjal1991. All rights reserved.
//

import UIKit
import AGSparkview

class ViewController: UIViewController {
    
    //MARK:- Variables
    var sparkView = AGSparkview()
    
    //MARK:- Liecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBlinkView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Setup the blinkview
    func setupBlinkView() {
        self.view.addSubview(sparkView)
        sparkView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sparkView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sparkView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            sparkView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height),
            sparkView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width)
        ])
    }
  

}

