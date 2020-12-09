//
//  UIImageView+.swift
//  FLAnimatedImageDemo
//
//  Created by okudera on 2020/12/09.
//  Copyright © 2020 yuoku. All rights reserved.
//

import Nuke
import UIKit

extension UIImageView {

    func loadImage(_ urlString: String?) {
        guard let urlString = urlString, let url = URL(string: urlString) else {
            return
        }
        ImagePipeline.Configuration.isAnimatedImageDataEnabled = true
        
        let options = ImageLoadingOptions(transition: .fadeIn(duration: 0.25))
        Nuke.loadImage(with: url, options: options, into: self) { response in
            switch response {
            case .success:
                break
            case .failure(let error):
                print("loadImage error", error)
            }
        }
    }
}
