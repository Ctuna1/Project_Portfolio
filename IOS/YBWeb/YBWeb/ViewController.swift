//
//  ViewController.swift
//  YBWeb
//
//  Created by 502-25 on 2022/11/21.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {
    @IBOutlet weak var url: UITextField!
    @IBOutlet weak var web: WKWebView! // 오류 = 웹킷뷰 사용하려면 탐사프로그램webkit import 해야해서
    
    func loadWebPage(_ url: String) {
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        web.load(myRequest)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        web.navigationDelegate = self
        loadWebPage("http://naver.com")//naver 불러오기
        
    }

    func checkUrl(_ url: String) -> String {
        var strUrl=url
        let flag=strUrl.hasPrefix("http://")
       
        if !flag {
            strUrl = "http://" + strUrl
        }
        return strUrl
    }
    
    @IBAction func onGo(_ sender: Any) {
        let myUrl = checkUrl(url.text!)
        url.text=""
        
        loadWebPage(myUrl)
    }
    
    @IBAction func goback(_ sender: Any) {
        web.goBack()
    }
    
    @IBAction func goforward(_ sender: Any) {
        web.goForward()
    }
    @IBAction func reload(_ sender: Any) {
        web.reload()
    }
    @IBAction func StopLoading(_ sender: Any) {
        web.stopLoading()
    }
    

}
