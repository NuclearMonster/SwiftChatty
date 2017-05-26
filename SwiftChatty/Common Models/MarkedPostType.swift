//
//  MarkedPost.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/27/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

/// The different states a user's post can be in
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451658
public enum MarkedPostType: String {

    case Unmarked = "unmarked"
    case Pinned = "pinned"
    case Collapsed = "collapsed"

}
