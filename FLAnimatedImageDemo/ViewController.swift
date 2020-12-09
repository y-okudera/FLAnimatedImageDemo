//
//  ViewController.swift
//  FLAnimatedImageDemo
//
//  Created by okudera on 2020/12/09.
//  Copyright © 2020 yuoku. All rights reserved.
//

import UIKit
import Nuke

class ViewController: UIViewController {

    @IBOutlet weak var animatedImageView: FLAnimatedImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.animatedImageView.loadImage("https://media.giphy.com/media/1SvsA7ypPi78fH2ZvG/giphy.gif")
    }

}
