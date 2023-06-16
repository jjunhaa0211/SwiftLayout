//
//  ExampleUIViewController2.swift
//  SnpkitLayout
//
//  Created by 박준하 on 2023/06/16.
//

import UIKit
import SnapKit
import Then

//전체적으로 lyaout을 화면에 꽉체우는 방법
class ExampleUIViewController2: UIViewController {
    
    var redBox = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redBox.backgroundColor = .red
        view.backgroundColor = .white
        
        view.addSubview(redBox)
        
        //view.backgrourdColor 처럼 꽉체우는 예제
        redBox.snp.makeConstraints {
            $0.bottom.left.right.top.equalToSuperview()
        }
    }


}
