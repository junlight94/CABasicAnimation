//
//  ViewController.swift
//  CABasicAnimation
//
//  Created by 이준영 on 2022/05/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var actionView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let rotation: CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.x")
        // pi = 180도
        rotation.toValue = Double.pi * 2
        // 1바퀴 도는데 걸리는 시간
        rotation.duration = 2
        // 반복 횟수 = infinity(무한대)
        rotation.repeatCount = Float.infinity
        actionView.layer.add(rotation, forKey: "rotationAnimation")
    }


}

