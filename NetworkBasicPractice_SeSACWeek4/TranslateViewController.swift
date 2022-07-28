//
//  TranslateViewController.swift
//  NetworkBasicPractice_SeSACWeek4
//
//  Created by KYUNGSUP GO on 2022/07/28.
//

import UIKit

class TranslateViewController: UIViewController {

    
    @IBOutlet weak var userInputTextView: UITextView!
    
    let textViewPlaceholderText = "번역하고 싶은 문장을 작성해보세요."
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userInputTextView.delegate = self
        
        userInputTextView.text = textViewPlaceholderText
        userInputTextView.textColor = .lightGray
 
        userInputTextView.layer.borderWidth = 3
        userInputTextView.layer.borderColor = UIColor.black.cgColor

    }
    
    

}


extension TranslateViewController: UITextViewDelegate {
    
    
    // 텍스트뷰의 텍스트가 변할 때마다 호출
    func textViewDidChange(_ textView: UITextView) {
        print(textView.text.count)
    }
    
    // 편집이 시작될 때 (커서가 깜박이기 시작할때)
    // 텍스트뷰 글자: 플레이스 홀더랑 글자가 같으면 clear, color
    func textViewDidBeginEditing(_ textView: UITextView) {
        print("begin")
        
        if textView.textColor == .lightGray {
            textView.text = nil
            textView.textColor = .black
        }
    }

    // 편집이 끝났을 때. (커서가 없어지는 순간)
    // 텍스트뷰 글자: 사용자가 아무 글자도 안썼으면 플레이스 홀더 글자보이게
    func textViewDidEndEditing(_ textView: UITextView) {
        print("end")
        
        if textView.text.isEmpty {
            textView.text = textViewPlaceholderText
            textView.textColor = .lightGray
        }
    }
    
}
