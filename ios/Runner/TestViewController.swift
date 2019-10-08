//
//  TestViewController.swift
//  Runner
//
//  Created by Nguyen Van Nghia on 10/8/19.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    private let testButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(testButton)
        
        view.backgroundColor = .white
        testButton.backgroundColor = .green
        testButton.addTarget(self, action: #selector(clickMe(_:)), for: .touchUpInside)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        testButton.frame = .init(x: 100, y: 100, width: 100, height: 100)
    }
    
    
    @objc private func clickMe(_ sender: UIButton) {
        print("Click Me from native")
    }

}
