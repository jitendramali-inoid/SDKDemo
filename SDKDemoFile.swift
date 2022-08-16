//
//  File.swift
//  
//
//  Created by jitendra on 16/08/22.
//


import Foundation
import UIKit
import WebKit

public struct DemoSDK {
    public init() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.preferences.javaScriptEnabled = true
        super.init(frame: .zero, configuration: webConfiguration)
        self.scrollView.isScrollEnabled = false
        self.isMultipleTouchEnabled = false
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @discardableResult
    public func load() -> WKNavigation? {
        if let url = URL(string:"http://example.com") {
            let req = URLRequest(url: url)
            return super.load(req)
        }
        return nil
    }
}
