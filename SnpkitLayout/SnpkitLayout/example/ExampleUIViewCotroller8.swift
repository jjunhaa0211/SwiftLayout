//
//  ExampleUIViewCotroller8.swift
//  SnpkitLayout
//
//  Created by 박준하 on 2023/06/16.
//

import UIKit
import SnapKit
import Then

//offset을 사용해서 View를 내리고 올리고 크기를 맞추는 방법
class ExampleUIViewCotroller8: UIViewController {
    
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
            $0.top.equalToSuperview().offset(80.0)
            $0.leading.equalToSuperview().offset(40.0)
            $0.height.width.equalTo(boxWidth)
        }

        greenView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(80.0)
            $0.trailing.equalToSuperview().offset(-40.0)
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
        왼쪽 상단과 오른쪽 상단에 맞는 offset을 주어서 layout하는 방법
     */
}
