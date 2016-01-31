//
//  EventType.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/27/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

/// Types of events that the server can send to the client.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451679
public enum EventType: String {

    /// A new post has been added
    case NewPost = "newPost"
    /// The category of an existing post has been modified
    case CategoryChange = "categoryChange"
    /// The server administrator wants to display a message to connected users
    case ServerMessage = "serverMessage"
    /// Lol counts for one or many posts has been updated
    case LolCountsUpdate = "lolCountsUpdate"

}
