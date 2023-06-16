//
//  ExampleUIViewCotroller5.swift
//  SnpkitLayout
//
//  Created by 박준하 on 2023/06/16.
//

//
//  ExampleUIViewController4.swift
//  SnpkitLayout
//
//  Created by 박준하 on 2023/06/16.
//

import UIKit
import SnapKit
import Then

//가운데 View를 기준으로 상단 view의 Y를 맞추는 법
class ExampleUIViewCotroller5: UIViewController {
    
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
            $0.centerY.equalTo(orangeView)
            $0.height.width.equalTo(boxWidth)
        }

        greenView.snp.makeConstraints {
            $0.centerY.equalTo(orangeView)
            $0.trailing.equalToSuperview()
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
     orange를 기준으로 red와 green을 붙이는 방법입니다.
     */
}
