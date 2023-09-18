//
//  LoginViewModel.swift
//  NetflixProject
//
//  Created by Chaewon on 2023/09/19.
//

import Foundation

class LoginViewModel {
    
    var email = Observable("")
    var pw = Observable("")
    var nickname = Observable("")
    var location = Observable("")
    var code = Observable("")
    var checkLabel = Observable("")
    var isValid = Observable(false)
    
    func checkEmail() -> Bool {
        if email.value.contains("@") {
            return true
        } else {
            checkLabel.value = "이메일에 @를 포함시켜 입력해주세요"
            return false
        }
    }
    
    func checkPW() -> Bool {
        if pw.value.count >= 6 && pw.value.count <= 10 {
            return true
        } else {
            checkLabel.value = "비밀번호는 6자리 이상 10자리 이내로 입력해주세요"
            return false
        }
    }
    
    func checkNickname() -> Bool {
        for character in nickname.value {
            if "~!@#$%^&*()".contains(character) {
                checkLabel.value = "닉네임은 특수기호 제외하고 영어, 한글, 숫자의 조합으로 입력해주세요"
                return false
            }
        }
        return true
    }
    
    func checkLocation() -> Bool {
        if location.value.isEmpty {
            checkLabel.value = "위치 정보가 입력되지 않았습니다. 다시 입력해주세요"
            return false
        } else {
            return true
        }
    }
    
    func checkCode() -> Bool {
        if code.value.count == 6, let number = Int(code.value) {
            return true
        } else {
            checkLabel.value = "추천코드 숫자 6자리를 정확하게 입력해주세요"
            return false
        }
    }
    
    func checkValidation() {
        if checkEmail() && checkPW() && checkNickname() && checkLocation() && checkCode() {
            isValid.value = true
        } else {
            isValid.value = false
        }
    }
}
