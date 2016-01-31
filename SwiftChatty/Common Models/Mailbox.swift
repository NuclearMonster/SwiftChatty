//
//  Mailbox.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

/// Lists of possible mailboxes that hold Shack messages
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451658
public enum Mailbox: String {

    /// The mailbox where new incoming messages are located
    case Inbox = "inbox"
    /// The mailbox where messages that the user sent to others are located
    case Sent = "sent"

}
