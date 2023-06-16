//
//  ExampleUIViewController3.swift
//  SnpkitLayout
//
//  Created by 박준하 on 2023/06/16.
//

import UIKit
import SnapKit
import Then

//offset을 통해서 layout의 왼쪽과 오른쪽을 안으로 들어가게 하는 방법
class ExampleUIViewController3: UIViewController {
    
    var redBox = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redBox.backgroundColor = .red
        view.backgroundColor = .white
        
        view.addSubview(redBox)
        
        //view.backgrourdColor 처럼 꽉체우는 예제
        redBox.snp.makeConstraints {
            $0.bottom.top.equalToSuperview()
            $0.left.equalToSuperview().offset(10.0)
            $0.right.equalToSuperview().offset(-10.0)
//            $0.right.equalToSuperview().inset(10.0) // 위 offset(-10) 과 동일한 결과를 가져옵니다
            // 이유에 대해서 설명해서 알려드리겠습니다
            // offset에서 -10을 해주면 원래 right에서는 밖에 부분에서 -10 이니까 안쪽으로 10 들어간다는 것이고
            // inset을 쓰게 되면 원래 안쪽에서 들어가게 되니까 10쪽으로 들어가게 됩니다.
        }
    }


}
