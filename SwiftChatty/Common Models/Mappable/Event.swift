//
//  Event.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// A convenience protocol to make it easy to map different event types into
/// the same property.
public protocol EventDataType {}

/// Models possible events that the server can use to let client know that
/// something has changed and that it needs to update its copy of the Chatty.
///
/// -SeeAlso: http://winchatty.com/v2/readme#_Toc421451679
public struct Event {

    public var id: Int = 0
    public var date: String = ""
    public var type: EventType?
    public var data: EventDataType?

    public init() {}

}

extension Event: CommonMappableModel {

    public mutating func sequence(map: Map) throws {
        var typeString: String = ""

        try id <~ map["eventId"]
        try date <~ map["eventDate"]
        try typeString <~ map["eventType"]

        switch typeString {
        case "newPost":
            type = EventType.NewPost
            var newPostEvent: EventNewPost?
            try newPostEvent <~ map["eventData"]
            data = newPostEvent
        case "categoryChange":
            type = EventType.CategoryChange
            var categoryChangeEvent: EventCategoryChange?
            try categoryChangeEvent <~ map["eventData"]
            data = categoryChangeEvent
        case "serverMessage":
            type = EventType.ServerMessage
            var serverMessageEvent: EventServerMessage?
            try serverMessageEvent <~ map["eventData"]
            data = serverMessageEvent
        case "lolCountsUpdate":
            type = EventType.LolCountsUpdate
            var lolCountUpdatesEvent: EventLolCountUpdates?
            try lolCountUpdatesEvent <~ map["eventData"]
            data = lolCountUpdatesEvent
        default:
            type = nil
            data = nil
        }
    }

}
