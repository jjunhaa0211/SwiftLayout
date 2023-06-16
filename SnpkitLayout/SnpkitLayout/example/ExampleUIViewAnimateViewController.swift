//
//  ExampleUIViewAnimateViewController.swift
//  SnpkitLayout
//
//  Created by 박준하 on 2023/06/16.
//

import SnapKit
import Then
import UIKit

// snpkit으로 애니메이션 나타내는 방법
class ExampleUIViewAnimateViewController: UIViewController {
    
    lazy var redView = UIView(frame: .zero)
    lazy var greenView = UIView(frame: .zero)
    let boxWidth: CGFloat = 100

    override func viewDidLoad() {
        super.viewDidLoad()

        redView.backgroundColor = .red
        greenView.backgroundColor = .green
        
        layout()
    }

    func layout() {
        [
            redView,
            greenView
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
        
        view.layoutIfNeeded() // 메서드는 현재 뷰와 해당 뷰의 모든 하위 뷰의 레이아웃을 업데이트
        
        UIView.animate(withDuration: 0.5, delay: 1.0) {
            self.redView.snp.updateConstraints {
                $0.top.equalToSuperview().offset(200.0)
            }
            self.view.layoutIfNeeded() // 변경된 layout을 재정의 합니다.
        }
    }
}
