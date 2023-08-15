//
//  webViewController.swift
//  project4
//
//  Created by 502-24 on 2022/12/19.
//

import UIKit
import WebKit

class webViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet weak var url: UITextField!
    @IBOutlet weak var web: WKWebView!
    
    func loadwebPage(_ url: String){
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        web.load(myRequest)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        web.navigationDelegate = self
        loadwebPage("https://www.youtube.com/watch?v=ayCdFPpe62U")
    }
    
    func checkUrl(_ url: String) -> String{
        var strUrl = url
        let flag = strUrl.hasPrefix("http://")
        
        if !flag{
            strUrl = "http://"+strUrl
        }
        return strUrl
    }
    @IBAction func onGo(_ sender: UIButton) {
        let myUrl = checkUrl(url.text!)
        url.text=""
    }
    @IBAction func goBack(_ sender: UIButton) {
        web.goBack()
    }
    @IBAction func goForward(_ sender: UIButton) {
        web.goForward()
    }
    @IBAction func reroad(_ sender: UIButton) {
        web.reload()
    }
    @IBAction func stopLoding(_ sender: UIButton) {
        web.stopLoading()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
