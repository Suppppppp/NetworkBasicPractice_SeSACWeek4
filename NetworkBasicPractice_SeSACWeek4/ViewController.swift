//
//  ViewController.swift
//  NetworkBasicPractice_SeSACWeek4
//
//  Created by KYUNGSUP GO on 2022/07/27.
//

import UIKit

class ViewController: UIViewController, ViewPresentableProtocol {
    
    var navigationTitleString: String = "대장님의 다마고치"
    
    
    var backgroundColor: UIColor = .blue
    
    
    func configureView() {
        view.backgroundColor = .blue
        backgroundColor = .red
    }
    
    func configureLabel() {

    }


    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    


}

