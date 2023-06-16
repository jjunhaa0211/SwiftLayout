//
//  ExampleUIStackViewController.swift
//  SnpkitLayout
//
//  Created by 박준하 on 2023/06/16.
//

import UIKit
import SnapKit
import Then

class ExampleUIStackViewController: UIViewController {

    lazy var titleLabel = UILabel().then {
        $0.text = "Profile"
        $0.font = .boldSystemFont(ofSize: 24)
        $0.textAlignment = .center
    }
    
    let imageWidth: CGFloat = 100
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "image"))
        imageView.clipsToBounds = true
        //이렇게 해야지 번거롭지 않고 사용할 떄 좋으며 layout이 깨지지 않습니다.
        imageView.layer.cornerRadius = imageWidth/2
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.black.withAlphaComponent(0.1).cgColor
        return imageView
    }()
    
    lazy var nameLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 18)
        $0.text = "junha"
    }
    
    lazy var roleLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 15)
        $0.textColor = .gray
        $0.text = "iOS dev"
    }
    
    lazy var nameStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [nameLabel, roleLabel])
        stack.axis = .vertical
        stack.alignment = .leading
        stack.spacing = 4
        return stack
    }()
    
    lazy var descriptionLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 15)
        $0.textColor = .gray
        $0.numberOfLines = 0
        $0.text = "개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발개발"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }

    func layout() {
        view.addSubview(titleLabel)
        view.addSubview(profileImageView)
        view.addSubview(nameStackView)
        view.addSubview(descriptionLabel)
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            $0.leading.trailing.equalToSuperview().inset(24)
        }

        profileImageView.snp.makeConstraints {
            $0.width.height.equalTo(imageWidth)
            $0.top.equalTo(titleLabel.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(20)
        }

        nameStackView.snp.makeConstraints {
            $0.leading.equalTo(profileImageView.snp.trailing).offset(12)
            $0.centerY.equalTo(profileImageView.snp.centerY)
            $0.trailing.equalToSuperview().offset(-20)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.top.equalTo(profileImageView.snp.bottom).offset(24)
            $0.leading.trailing.equalToSuperview().inset(24)
        }
    }
}
