//
//  ExampleUIViewCotroller6.swift
//  SnpkitLayout
//
//  Created by 박준하 on 2023/06/16.
//

import UIKit
import SnapKit
import Then

//네비게이션 부분 밑에 safeAreaLayoutGuide를 사용해서 내리는 방법
class ExampleUIViewCotroller6: UIViewController {
    
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
            $0.leading.equalToSuperview()
            $0.height.width.equalTo(boxWidth)
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
        }
        
        greenView.snp.makeConstraints {
            $0.trailing.equalToSuperview()
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.height.width.equalTo(boxWidth)
        }
        
        blueView.snp.makeConstraints {
            $0.trailing.equalToSuperview()
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            $0.width.height.equalTo(boxWidth)
        }
        
        yellowView.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.width.height.equalTo(boxWidth)
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        
        orangeView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.height.equalTo(boxWidth)
        }
    }
    
    /*
     safeAreaLayoutGuide를 사용해서 네비게이션 밑으로 layout을 잡는 코드
     */
}
