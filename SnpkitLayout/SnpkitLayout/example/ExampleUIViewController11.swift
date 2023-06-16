//
//  ExampleUIViewController11.swift
//  SnpkitLayout
//
//  Created by 박준하 on 2023/06/16.
//

import SnapKit
import Then
import UIKit

// multipliedBy를 사용해서 비율 개산 후 layout 하기
class ExampleUIViewController11: UIViewController {
    
    lazy var redView = UIView(frame: .zero)
    lazy var greenView = UIView(frame: .zero)

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
            $0.width.equalToSuperview().multipliedBy(0.5)
            $0.leading.top.equalToSuperview()
            $0.height.equalTo(80.0)
        }

        greenView.snp.makeConstraints {
            $0.width.equalToSuperview().multipliedBy(0.5)
            $0.top.trailing.equalToSuperview()
            $0.height.equalTo(80.0)
        }
        
        /*
         multipliedBy를 사용해서 전체가 1이라고 했을 때 2/1 씩 비율을 자른다는 것을 뜻합니다
         */
    }
}
