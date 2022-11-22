//
//  ViewController.swift
//  notification test
//
//  Created by 최진용 on 2022/11/22.
//

import UIKit

protocol ButtonDelegate{
    func change()
}



class ButtonViewController: UIViewController {
    

    var delegate : ButtonDelegate?
    
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func pressButton(_ sender: Any) {
        delegate?.change()
    }
    
    
}

