//
//  ViewPresentableProtocol.swift
//  NetworkBasicPractice_SeSACWeek4
//
//  Created by KYUNGSUP GO on 2022/07/28.
//

import Foundation
import UIKit

/*
 ~~ Protocol
 ~~ Delegate
 */


@objc
protocol ViewPresentableProtocol {
    
    var navigationTitleString: String {get set}
    var backgroundColor:UIColor { get }
    
    func configureView()
    @objc optional func configureLabel()
    @objc optional func configureTextField()
}


protocol SupTableViewProtocol {
    func numberOfRowsInSection()-> Int
    func cellForRowAt(indexPath: IndexPath) -> UITableViewCell
}
