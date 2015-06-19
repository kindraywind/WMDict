//
//  main.swift
//  WMDict
//
//  Created by Woramet Muangsiri on 6/19/15.
//  Copyright © 2015 Woramet Muangsiri. All rights reserved.
//

import Foundation
import CoreServices

if Process.arguments.count < 2 {
    print("Y U NO input?📙")
    exit(0)
}

if let searchText = Process.arguments[1] as String! {
    let searchTextRange = CFRangeMake(0, (searchText.characters.count))

    if let result = DCSCopyTextDefinition(nil, searchText, searchTextRange)?.takeRetainedValue() as String! {
        print(result.utf8)
    } else {
        print("no result dude.😔")
    }
}