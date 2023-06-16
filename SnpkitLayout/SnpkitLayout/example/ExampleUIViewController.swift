//
//  ViewController.swift
//  SnpkitLayout
//
//  Created by 박준하 on 2023/05/15.
//

import UIKit
import SnapKit
import Then

class ExampleUIViewController1: UIViewController {
    
    var box = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        box.backgroundColor = .red
        view.backgroundColor = .white
        
        view.addSubview(box)
        
        box.snp.makeConstraints {
            $0.width.height.equalTo(100)
            $0.center.equalToSuperview()
        }
    }


}

