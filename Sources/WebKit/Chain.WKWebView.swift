//
// Created by 蒋晨成 on 2020/6/16.
// Copyright (c) 2020 蒋晨成. All rights reserved.
//

import WebKit

public extension ChainBox where T == WKWebView {
    @discardableResult
    func navigationDelegate(_ navigationDelegate: WKNavigationDelegate?) -> ChainBox {
        value.navigationDelegate = navigationDelegate
        return value.x
    }

    @discardableResult
    func uiDelegate(_ uiDelegate: WKUIDelegate?) -> ChainBox {
        value.uiDelegate = uiDelegate
        return value.x
    }
}
