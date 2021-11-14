//
//  ViewController.swift
//  RxSwiftSample
//
//  Created by 祥平 on 2021/11/15.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.rx.text.orEmpty
            .bind(to: label.rx.text)
            .disposed(by: disposeBag)
        // Do any additional setup after loading the view.
    }


}

