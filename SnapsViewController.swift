//
//  SnapsViewController.swift
//  SnapChat
//
//  Created by Dan Waseen on 12/30/16.
//  Copyright © 2016 RevWon. All rights reserved.
//

import UIKit

class SnapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logoutTapped(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }

}
