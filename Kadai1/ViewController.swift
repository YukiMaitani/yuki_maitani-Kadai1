//
//  ViewController.swift
//  Kadai1
//
//  Created by 米谷裕輝 on 2022/05/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFieldCollection: [UITextField]!
    @IBOutlet weak var sumResultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //UITextField.text?にはデフォルトで""が入っているので強制アンラッピングして、""をInt型にするとnilになるのでreduceで足すときにはnilの場合は0になるようにしている
    @IBAction func tappedSumButtom(_ sender: Any) {
        sumResultLabel.text = String(textFieldCollection.map{Int($0.text!)}.reduce(0){$0 + ($1 ?? 0)})
    }
    
}

