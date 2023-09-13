//
//  LoginViewController.swift
//  NetflixProject
//
//  Created by Chaewon on 2023/09/19.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let netflixLabel = {
        let view = UILabel()
        view.text = "DANNAFLIX"
        view.textColor = .red
        view.font = .systemFont(ofSize: 30, weight: .heavy)
        return view
    }()
    
    let emailTextField = {
        let view = LoginTextField()
        view.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [.foregroundColor: UIColor.white])
        return view
    }()
    
    let passwordTextField = {
        let view = LoginTextField()
        view.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [.foregroundColor: UIColor.white])
        return view
    }()
    
    let nicknameTextField = {
        let view = LoginTextField()
        view.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [.foregroundColor: UIColor.white])
        return view
    }()
    
    let locationTextField = {
        let view = LoginTextField()
        view.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [.foregroundColor: UIColor.white])
        return view
    }()
    
    let codeTextField = {
        let view = LoginTextField()
        view.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [.foregroundColor: UIColor.white])
        return view
    }()
    
    let signButton = {
        let view = UIButton()
        view.setTitle("회원가입", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.titleLabel?.font = .boldSystemFont(ofSize: 18)
        view.backgroundColor = .white
        view.layer.cornerRadius = 6
        view.clipsToBounds = true
        return view
    }()
    
    let checkLabel = {
        let view = UILabel()
        view.font = .boldSystemFont(ofSize: 15)
        view.textColor = .red
        view.text = "비밀번호를 올바르게 입력해주시길 바랍니다."
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        configure()
        setConstraints()
        
    }
    
    func configure() {
        view.addSubview(netflixLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(nicknameTextField)
        view.addSubview(locationTextField)
        view.addSubview(codeTextField)
        view.addSubview(signButton)
        view.addSubview(checkLabel)
    }
    
    func setConstraints() {
        netflixLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(30)
            make.centerX.equalToSuperview()
        }
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(netflixLabel.snp.bottom).offset(100)
            make.horizontalEdges.equalToSuperview().inset(30)
            make.height.equalTo(40)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(16)
            make.horizontalEdges.equalToSuperview().inset(30)
            make.height.equalTo(40)
        }
        
        nicknameTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(16)
            make.horizontalEdges.equalToSuperview().inset(30)
            make.height.equalTo(40)
        }
        
        locationTextField.snp.makeConstraints { make in
            make.top.equalTo(nicknameTextField.snp.bottom).offset(16)
            make.horizontalEdges.equalToSuperview().inset(30)
            make.height.equalTo(40)
        }
        
        codeTextField.snp.makeConstraints { make in
            make.top.equalTo(locationTextField.snp.bottom).offset(16)
            make.horizontalEdges.equalToSuperview().inset(30)
            make.height.equalTo(40)
        }
        
        signButton.snp.makeConstraints { make in
            make.top.equalTo(codeTextField.snp.bottom).offset(16)
            make.horizontalEdges.equalToSuperview().inset(30)
            make.height.equalTo(50)
        }
        
        checkLabel.snp.makeConstraints { make in
            make.top.equalTo(signButton.snp.bottom).offset(24)
            make.horizontalEdges.equalToSuperview().inset(30)
        }
        
    }
    
}
