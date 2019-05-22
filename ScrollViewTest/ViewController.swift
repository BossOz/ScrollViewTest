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
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        myLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras lobortis, nulla vitae lacinia tempus, nisl urna ultrices dui, eget sagittis velit massa id orci. Donec scelerisque tempus nibh nec aliquet. Duis nec aliquam ex, quis dictum elit. Proin blandit efficitur est imperdiet consectetur. Aenean sollicitudin sapien eget arcu consectetur, ut gravida turpis consequat. Mauris egestas odio pharetra diam gravida mattis. Donec scelerisque ut erat id ullamcorper. Nam at mollis turpis. Nullam sit amet fermentum sapien. Proin lacinia libero porta ligula dictum sagittis. Etiam ligula risus, mollis ut maximus vel, vulputate non dolor.In auctor laoreet laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. In pulvinar tristique ipsum, vitae ultrices dui fringilla et. Duis id ex dapibus magna fringilla congue. Pellentesque condimentum, nisl at pellentesque tincidunt, orci eros laoreet nisl, tristique dictum elit dolor id magna. Pellentesque elementum fermentum ante, efficitur ullamcorper lectus accumsan id. Etiam et molestie felis. Duis pulvinar, augue eu tincidunt blandit, nisl risus congue purus, in tincidunt sem est ac enim. Maecenas posuere ultrices dolor eget volutpat. Curabitur cursus cursus fermentum. Phasellus ac arcu nunc. Etiam justo tortor, auctor id sagittis at, imperdiet in sapien. Integer tempus, lacus ac suscipit egestas, nibh ligula finibus urna, in facilisis risus est sit amet ante. Proin bibendum sodales magna eget rutrum.Donec tempor dolor sit amet dapibus euismod. Praesent id leo sit amet nisl consectetur finibus in et ex. Sed bibendum a magna quis ullamcorper. Cras in orci nisl. Phasellus finibus lectus risus, et eleifend lacus commodo vel. Phasellus tristique ante vitae malesuada malesuada. Ut eu ultrices sem. Suspendisse bibendum consequat sodales. Pellentesque nisl lectus, tincidunt vitae tortor vitae, vestibulum mollis ligula. Cras varius urna ac ultrices luctus. Sed dapibus, mauris vel efficitur maximus, velit ligula pharetra mauris, in ornare lectus turpis sit amet justo.Ut molestie a ex non auctor. Aliquam et est nisl. Curabitur tincidunt efficitur felis, ut eleifend arcu varius ac. Nullam ut mi id dolor viverra elementum sed mattis nibh. Phasellus facilisis ac arcu vitae efficitur. Vivamus ut massa est. Aliquam ac eros dictum, lobortis nisi nec, ullamcorper ligula. Suspendisse dignissim nisl in hendrerit consequat. Aliquam nec vehicula turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam vel nunc urna. Sed suscipit justo id facilisis posuere. Aenean rhoncus finibus leo nec elementum."
        
        myLabel.sizeToFit()
        
        contentView.sizeToFit()
        
        print(self.contentView.frame.height)
        print(self.scrollView.frame.height)
        print(self.scrollView.contentSize.height)
       
    }


}

