//
//  LabelViewController2.swift
//  notification test
//
//  Created by 최진용 on 2022/11/22.
//

import UIKit


class LabelViewController2: UIViewController, ButtonDelegate {
    
    func change() {
        textLabel.text = "completed"
    }
    
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func pressButton(_ sender: Any) {
        print("pressButton")
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "ButtonViewController") as? ButtonViewController else { return }
        self.present(vc, animated: true)
        vc.delegate = self
    }
    
}
