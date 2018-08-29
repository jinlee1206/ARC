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
    
    let button : UIButton = {
        let b = UIButton()
        b.setTitle("클릭", for: .normal)
        b.setTitleColor(.black, for: .normal)
        b.addTarget(self, action: #selector(backToFirstVC), for: .touchUpInside)
        
        return b
        
    }()
    
    var delegate : SecondViewControllerDelegate!
    
    deinit { print("deinit : SecondViewController") }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "SecondVC"
        self.view.backgroundColor = .white
        
        self.view.addSubview(button)
        
        self.button.frame.size = CGSize(width: 100, height: 100)
        self.button.center = self.view.center


    }
    
    
    @objc func backToFirstVC() {
        
        self.dismiss(animated: true) {
            
            self.delegate?.changeButtonText("Hi")
            
        }
        self.navigationController?.popViewController(animated: true)
        
    }
    


}


