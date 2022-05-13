//
//  ViewController.swift
//  Kadai1
//
//  Created by 米谷裕輝 on 2022/05/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var textFieldCollection: [UITextField]!
    @IBOutlet private weak var sumResultLabel: UILabel!

    //UITextField.text?にはデフォルトで""が入っているので強制アンラッピングして、""をInt型にするとnilになるのでreduceで足すときにはnilの場合は0になるようにしている
    @IBAction func tappedSumButtom(_ sender: Any) {
        let total = textFieldCollection
            .map { Int($0.text!) ?? 0 }
            .reduce(0, +)
        
        sumResultLabel.text = String(total)
    }
    
}

