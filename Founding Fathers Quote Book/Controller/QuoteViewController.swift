//
//  QuoteViewController.swift
//  Founding Fathers Quote Book
//
//  Created by Rental on 9/19/17.
//  Copyright © 2017 Rental. All rights reserved.
//

import UIKit
import WebKit

class QuoteViewController : UIViewController {
    // MARK: - Outlets
    
    
    @IBOutlet weak var webView: WKWebView!
    
    //Mark: - Properties
    
    var currentQuoteIndex = 1
    // MARK: - View controller lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    //MARK: - Helpers
    
    private func updateUI() {
        let currentQuote = QuoteDeck.sharedInstance.quotes[currentQuoteIndex]
        
        webView.loadHTMLString(currentQuote.htmlPage(), baseURL: nil)
    }
    
    // MARK: - Segues
    @IBAction func exitModalScene(_ segue: UIStoryboardSegue) {
        //Nothing to do; just need a target for the unwid segue
    }
}
