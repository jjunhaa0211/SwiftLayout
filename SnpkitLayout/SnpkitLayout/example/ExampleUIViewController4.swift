//
//  ExampleUIViewController4.swift
//  SnpkitLayout
//
//  Created by 박준하 on 2023/06/16.
//

import UIKit
import SnapKit
import Then

//시계와 와이파이를 침범하는 UIView layout하는 방법
class ExampleUIViewController4: UIViewController {
    
    lazy var redView = UIView(frame: .zero)
    lazy var greenView = UIView(frame: .zero)
    lazy var blueView = UIView(frame: .zero)
    lazy var yellowView = UIView(frame: .zero)
    lazy var orangeView = UIView(frame: .zero)
    let boxWidth: CGFloat = 100

    override func viewDidLoad() {
        super.viewDidLoad()

        redView.backgroundColor = .red
        greenView.backgroundColor = .green
        blueView.backgroundColor = .blue
        yellowView.backgroundColor = .yellow
        orangeView.backgroundColor = .orange
        
        layout()
    }

    func layout() {
        [
            redView,
            greenView,
            blueView,
            yellowView,
            orangeView
        ].forEach { view.addSubview($0) }
        
        redView.snp.makeConstraints {
            $0.top.leading.equalToSuperview()
            $0.height.width.equalTo(boxWidth)
        }
        
        greenView.snp.makeConstraints {
            $0.top.trailing.equalToSuperview()
            $0.height.width.equalTo(boxWidth)
        }
        
        blueView.snp.makeConstraints {
            $0.bottom.trailing.equalToSuperview()
            $0.width.height.equalTo(boxWidth)
        }
        
        yellowView.snp.makeConstraints {
            $0.bottom.leading.equalToSuperview()
            $0.width.height.equalTo(boxWidth)
        }
        
        orangeView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.height.equalTo(boxWidth)
        }
    }
    
    /*
     위 와 같이 코드를 짜게 되면 시계와 배터리 부분 하단 부분까지 View가 붙게 됩니다
     이러한 상황이 의도가 아니라면 어떻게 해야지 네비게이션 상단과 하단 부분에 View가 나가는 것을 어떻게 해야하나요?
     ExampleUIViewController6에 가시면 볼 수 있습니다
     */
}
