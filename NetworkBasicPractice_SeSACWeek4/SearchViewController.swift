//
//  SearchViewController.swift
//  NetworkBasicPractice_SeSACWeek4
//
//  Created by KYUNGSUP GO on 2022/07/27.
//

import UIKit
/*
 Swift Protocol
 - Delegate
 - DataSource
 
 1. 왼팔 /오른팔 가져오기
 2. 테이블뷰 아웃렛 연결
 3. 1+2
 
 */

extension UIViewController {
    
    func setBackground() {
        view.backgroundColor = .red
    }
}

class SearchViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {



    
    @IBOutlet weak var SearchTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBackground()
        SearchTableView.backgroundColor = .clear
        // 연결고리 작업: 테이블뷰가 해야 할 일 > 뷰 컨트롤러에게 요청
        SearchTableView.delegate = self
        SearchTableView.dataSource = self
        // 테이블뷰가 사용할 테이블 뷰 셀(xib) 등록
        // XIB : XML Interface Builder 예전에는 nib이라는 걸 사용했음 그래서 예전타입인 UInib이 되어있으니 이게 Xib를 의미
        // nib은 오브젝트 씨에서 썼던 거
        SearchTableView.register(UINib(nibName: ListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: ListTableViewCell.identifier)


    }
    
    

    
    func configureLabel() {
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.identifier, for: indexPath) as? ListTableViewCell else {  return UITableViewCell() }
        
        cell.backgroundColor = .clear
        cell.titleLabel.font = .boldSystemFont(ofSize: 22)
        cell.titleLabel.text = "Hello"
        
        return cell
    }
    
    

}



