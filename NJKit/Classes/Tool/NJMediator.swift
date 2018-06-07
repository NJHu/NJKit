//
//  NJMediator.swift
//  NJKit
//
//  Created by HuXuPeng on 2018/6/6.
//

import UIKit

/// 组件化中间件基类
open class NJMediator: NSObject {
    public static let sharedMediator: NJMediator = NJMediator()
    static let cachedTarget: [String : AnyObject] = [String : AnyObject]()
}

extension NJMediator {
    
    public func perform(target targetName: String, action actionName: String, params: [String: AnyObject]?, shouldCacheTarget: Bool = false) -> AnyObject? {
        
        guard let targetType = NSClassFromString("Target_\(targetName)") as? NSObject.Type else {
            return nil
        }
        
        let targetObj = targetType.init()
        let actionSelector = NSSelectorFromString("Action_\(actionName)")
        
        guard targetObj.responds(to: actionSelector) else {
            return nil
        }
        
        let result = targetObj.perform(actionSelector, with: params)
        
        guard let resultAny = result as? AnyObject else {
            return nil;
        }
        
        return resultAny;
    }
}
