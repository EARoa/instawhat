//
//  ViewController.swift
//  InstaWhat
//
//  Created by Efrain Ayllon on 1/25/17.
//  Copyright © 2017 Efrain Ayllon. All rights reserved.
//

import UIKit
import Sharaku

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var showSharokuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sharakuButtonTapped(_ sender: Any) {
        print("hello!")
        let image = UIImage(named: "sample")
        let vc = SHViewController(image: image!)
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }
}



extension ViewController: SHViewControllerDelegate {
    func shViewControllerImageDidFilter(image: UIImage) {
        imageView.image = image
        showSharokuButton.isHidden = true
    }
    
    func shViewControllerDidCancel() {
    }
}
