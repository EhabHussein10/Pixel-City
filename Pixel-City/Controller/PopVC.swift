//
//  PopVC.swift
//  Pixel-City
//
//  Created by Ehab Eletreby on 6/9/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {
    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    
    func initData(forImage image: UIImage) {
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        popImageView.image = passedImage
        addDoubleTap()
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(dismissImage))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func dismissImage() {
        dismiss(animated: true, completion: nil)
    }

}
