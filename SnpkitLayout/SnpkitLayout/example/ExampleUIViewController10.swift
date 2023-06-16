//
//  ExampleUIViewController10.swift
//  SnpkitLayout
//
//  Created by 박준하 on 2023/06/16.
//

import UIKit
import SnapKit
import Then

// 위에 네비게이션을 이탈하고 주황색으로 채우는 코드 + inset으로 줄이는 방법
class ExampleUIViewCotroller10: UIViewController {
    
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
            $0.leading.trailing.equalToSuperview().inset(40.0)
            $0.top.equalToSuperview()
        }
        
//        orangeView.snp.makeConstraints {
//            $0.height.equalTo(boxWidth)
//            $0.top.equalToSuperview()
//            $0.leading.equalToSuperview().offset(40)
//            $0.trailing.equalToSuperview().offset(-40)
//        }
    }
    
    /*
     위 주석코드와 실행코드는 똑같이 작용하지만 아무래도 코드 줄 차이도 있고 간편한 차이도 있으니 위 코드를 지향하시는 것이 좋습니다.
     */
}
