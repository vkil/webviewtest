//
//  ViewController.swift
//  webviewtest
//
//  Created by Vesa Kilpelänaho on 08/11/2018.
//  Copyright © 2018 Vesa Oy. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testWKWebView()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func testWKWebView() {
        let view = WKWebView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        self.view.addSubview(view)
        view.load(URLRequest(url: URL(string: "https://solo1.nordea.fi/")!))
        
    }
    
    func testUIWebView() {
        let view = UIWebView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        self.view.addSubview(view)
        let url = URL(string: "https://tupas.nordea.fi/")!
        let urelreq = URLRequest(url: url)
        //        view.load(URLRequest(url: ))
        view.loadRequest(urelreq)
    }

}

