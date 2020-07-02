//
//  ViewController.swift
//  Netflix Desktop
//
//  Created by mayuri kulkarni on 01/07/20.
//  Copyright © 2020 mayuri kulkarni. All rights reserved.
//

import Cocoa
import WebKit
class ViewController: NSViewController  {

    @IBOutlet weak var webview: WKWebView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        webview.allowsBackForwardNavigationGestures = true

        let myURL = URL(string:"https://www.netflix.com")
                   let myRequest = URLRequest(url: myURL!)
                   webview.load(myRequest)
    }
    
    
    @IBAction func exitButtonClicked(_ sender: Any) {
        print("exitButtonClicked")
        self.view.window?.close()
    }
    

    @IBAction func backButtonClicked(_ sender: Any) {
        webview.goBack()
        print("goBack")

    }
    
    @IBAction func forwardClicked(_ sender: Any) {
        webview.goForward()
        print("goForward")

    }
    
    @IBAction func refreshButtonClicked(_ sender: Any) {
        webview.reloadFromOrigin()
        print("reload")
    }
}

