//
//  ModerationFlag.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//


/// Different categories that can be applied to a post
public enum ModerationFlag: String {

    case OnTopic = "ontopic"
    case Nws = "nws"
    case Stupid = "stupid"
    case Political = "political"
    case Tanget = "tangent"
    case Informative = "informative"
    case Nuked = "nuked"

}
