//
//  DetailViewController.swift
//  MovieSearcher
//
//  Created by Ruud Puts on 14/09/16.
//  Copyright © 2016 Ruud Puts. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = "\(detail.title) - \(detail.year)\n\n\(detail.plot)"
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Movie? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

