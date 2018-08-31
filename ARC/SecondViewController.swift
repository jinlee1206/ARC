//
//  SecondViewController.swift
//  ARC
//
//  Created by Euijae Hong on 2018. 8. 28..
//  Copyright © 2018년 JAEJIN. All rights reserved.
//

import UIKit


protocol SecondViewControllerDelegate : class {
    func changeButtonText(_ text:String)
}

class SecondViewController: UIViewController {
    
    var delegate : SecondViewControllerDelegate?
    
    
    lazy var button : UIButton = {
        
        let b = UIButton()
        b.frame.size = CGSize(width: 100, height: 100)
        b.center = view.center
        b.setTitle("클릭", for: .normal)
        b.setTitleColor(.black, for: .normal)
        b.addTarget(self, action: #selector(backToFirstVC), for: .touchUpInside)
        
        return b
        
    }()
    
    deinit {
        
        print("deinit : SecondViewController")
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SecondVC"
        view.backgroundColor = .white
        view.addSubview(button)

    }
    
    
    
    @objc func backToFirstVC() {
        
        self.delegate?.changeButtonText("Hi")
        self.navigationController?.popViewController(animated: true)
//        self
        
    }
    


}


