//
//  ViewController.swift
//  WebViewExample
//
//  Created by wayou on 10/26/18.
//  Copyright © 2018 wayou. All rights reserved.
//
//  references:
//  - https://www.hackingwithswift.com/read/4/2/creating-a-simple-browser-with-wkwebview
//  - https://stackoverflow.com/questions/49638653/load-local-web-files-resources-in-wkwebview


import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {
    
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        load remote url
        let url = URL(string: "https://prugoodprd.firebaseapp.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

