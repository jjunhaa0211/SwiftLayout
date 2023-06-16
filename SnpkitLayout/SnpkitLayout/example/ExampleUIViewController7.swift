//
//  ExampleUIViewController7.swift
//  SnpkitLayout
//
//  Created by 박준하 on 2023/06/16.
//

import UIKit
import SnapKit
import Then

// 위에 네비게이션을 이탈하고 주황색으로 채우는 코드
class ExampleUIViewCotroller7: UIViewController {
    
    lazy var orangeView = UIView(frame: .zero)
    let boxWidth: CGFloat = 100

    override func viewDidLoad() {
        super.viewDidLoad()

        orangeView.backgroundColor = .orange
        
        layout()
    }

    func layout() {
        [
            orangeView
        ].forEach { view.addSubview($0) }
        
        orangeView.snp.makeConstraints {
            $0.height.equalTo(boxWidth)
            $0.leading.trailing.equalToSuperview()
            $0.top.equalToSuperview()
        }
    }
    
    /*
     위에 네비게이션 부분을 채웁니다.
     개선된 코드는 ExampleUIViewController10에 가시면 개선된 코드에 inset을 사용하는 것을 볼 수 있습니다. 
     */
}
