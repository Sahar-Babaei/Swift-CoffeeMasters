//
//  InfoPage.swift
//  CoffeeMasters
//
//  Created by Sahar Babaei on 2025-02-06.
//

import SwiftUI

//here we're trying to usee UI kit in SwiftUI
import WebKit




class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.body)
    }
}





struct WebView: UIViewRepresentable {
   // var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        
        let config = WKWebViewConfiguration()
               config.userContentController.add(WebInterfaceDialogs() , name: "alert")
               let webView = WKWebView(frame: .zero, configuration: config)
        
  //      let webView = WKWebView()
        return webView // the ui kit

    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let url = URL(string: "https://firtman.github.io/coffeemasters/webapp")
        let request = URLRequest(url: url!)
        //basically the "!" says that "i know it's not nil, dw"
        webView.load(request)

    }
    
    
    func execureJavaScript(webView: WKWebView) {
        webView.evaluateJavaScript("alert('hello from swift')")
    }
}

struct InfoPage: View {
    var body: some View {
        WebView()
    }
}

#Preview {
    InfoPage()
}
