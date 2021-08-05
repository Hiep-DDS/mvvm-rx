//
//  ViewController.swift
//  operation
//
//  Created by DD Solution on 05/08/2021.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    private let disposeBag = DisposeBag()
    let hello = Observable.from(["0","1","2","3","4","5","6","7","8","9","10","11","12"])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        demo()
    }
    
    func demo(){
        demoReduce()
    }
    
    //MARK:- Reduce
    func demoReduce(){
        hello.reduce("", accumulator: +)
            .subscribe(onNext:{ value in
                print(value)
            }, onError: {error in
                print(error)
            },onCompleted: {
                print("completed")
            }).disposed(by: disposeBag)
        
    }
    
