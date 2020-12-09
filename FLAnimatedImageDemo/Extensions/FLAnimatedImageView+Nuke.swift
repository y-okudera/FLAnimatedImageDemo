//
//  FLAnimatedImageView+Nuke.swift
//  FLAnimatedImageDemo
//
//  Created by okudera on 2020/12/09.
//  Copyright © 2020 yuoku. All rights reserved.
//

import Nuke
import UIKit

extension FLAnimatedImageView {
    @objc open override func nuke_display(image: PlatformImage?) {
        guard let img = image else {
            self.animatedImage = nil
            self.image = nil
            return
        }

        // Display image immediately
        self.image = img
        guard let animatedImageData = img.animatedImageData else {
            return
        }

        // Prepare FLAnimatedImage object asynchronously (it takes a noticeable amount of time), and start playback.
        DispatchQueue.global().async {
            let animatedImage = FLAnimatedImage(animatedGIFData: animatedImageData)
            DispatchQueue.main.async {
                // If view is still displaying the same image
                if self.image === img {
                    self.animatedImage = animatedImage
                }
            }
        }
    }
}
