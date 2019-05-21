//
//  ViewController.swift
//  ScrollViewTest
//
//  Created by Oscar on 16/05/2019.
//  Copyright © 2019 Oscar Manzelli. All rights reserved.
//

import UIKit

extension UIScrollView {
    func updateContentView() {
        contentSize.height = subviews.sorted(by: { $0.frame.maxY < $1.frame.maxY }).last?.frame.maxY ?? contentSize.height
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        contentView.frame.size.height = 1000
        
        self.scrollView.updateContentView()
        
        print(self.contentView.frame.height)
        print(self.scrollView.frame.height)
        print(self.scrollView.contentSize.height)
       
    }


}

