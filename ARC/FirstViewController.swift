//
//  ViewController.swift
//  ARC
//
//  Created by Euijae Hong on 2018. 8. 28..
//  Copyright © 2018년 JAEJIN. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let secondVC = SecondViewController()
    
    let button : UIButton = {
        let b = UIButton()
        b.setTitle("클릭", for: .normal)
        b.setTitleColor(.black, for: .normal)
        b.addTarget(self, action: #selector(goToSecondVC), for: .touchUpInside)
        
        return b
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "FirstVC"
        
        view.backgroundColor = .white
        
        self.view.addSubview(button)
    
        self.button.frame.size = CGSize(width: 100, height: 100)
        self.button.center = self.view.center
        

    }
    
    
    @objc func goToSecondVC() {
        
        
        secondVC.delegate = self
        self.present(secondVC, animated: true, completion: nil)
//        self.navigationController?.pushViewController(secondVC, animated: true)
    
    }

}

extension FirstViewController : SecondViewControllerDelegate {
    
    func changeButtonText(_ text: String) {
        
        self.button.setTitle(text, for: .normal)
        
    }
    
}

