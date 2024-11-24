//
//  ViewController.swift
//  MembershipBarcodeViewClone
//
//  Created by 강동영 on 11/24/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let barcodeVC = BarcodeViewController()
        barcodeVC.modalPresentationStyle = .fullScreen
        present(barcodeVC, animated: true)
    }
}

