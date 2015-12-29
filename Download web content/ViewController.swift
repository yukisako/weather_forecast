//
//  ViewController.swift
//  Download web content
//
//  Created by 迫 佑樹 on 2015/12/29.
//  Copyright © 2015年 迫 佑樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://www.github.com")!
        
        webView.loadRequest(NSURLRequest(URL: url))
        
        
        
        
        /*
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            
            //タスクが終了した時に実行されるメソッド．クロージャとか呼ばれる．
            if let urlContent = data{
            //オプショナルバインディングをしている
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.webView.loadHTMLString(String(webContent), baseURL: nil)
                })
                
            } else {
                //データがない時に実行
                
                
            }
        }
        
        task.resume()
        */
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

