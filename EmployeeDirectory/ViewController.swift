//
//  ViewController.swift
//  EmployeeDirectory
//
//  Created by Mike Ebinum on 1/10/2015.
//  Copyright (c) 2015 SEED Digital. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet var containerView : UIView! = nil
    var webView: WKWebView?
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
    }
    
    override func loadView() {
        super.loadView()
        
        self.webView = WKWebView()
        self.view = self.webView!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.webView = WKWebView(frame: CGRectZero)
        // Do any additional setup after loading the view, typically from a nib.
        self.view = webView!
        
        self.view.setTranslatesAutoresizingMaskIntoConstraints(false)
        let height = NSLayoutConstraint(item: self.view, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 1, constant: 0)
        let width = NSLayoutConstraint(item: self.view, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 1, constant: 0)
        view.addConstraints([height, width])
        
        //Hacker News React - http://gokulkrishh.github.io/demo/hacker-news/
        let url = NSURL(string:"http://reactjs-directory.herokuapp.com/")
        let request = NSURLRequest(URL:url!)
        self.webView!.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

