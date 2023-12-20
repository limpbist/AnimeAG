//
//  ViewController.swift
//  AnimeAG
//
//  Created by Aaron Andres Gaspar Peña on 15/11/23.
//

import UIKit
import Home
class ViewController: UIViewController {

    @IBOutlet weak var btnWelcome: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnWelcome.titleLabel?.textColor = .white
        btnWelcome.titleLabel?.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        btnWelcome.backgroundColor = .red
        btnWelcome.layer.cornerRadius = 10
        btnWelcome.layer.shadowRadius = 10
    }

    @IBAction func tapNavigationHome(_ sender: Any) {
        guard let homeViewController = HomeViewFactory.getFirstView() else { return }
        self.navigationController?.pushViewController(homeViewController, animated: true)
    }
    
}

