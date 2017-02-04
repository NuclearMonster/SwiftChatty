//
//  API.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

public enum ApiRoot: String {

    case WinChatty = "https://winchatty.com"
    case Lol = "http://www.lmnopc.com"

}

public enum ApiEndpoint: String {

    case Default = ""

    // MARK: Threads
    case GetChatty = "/v2/getChatty"
    case GetChattyRootPosts = "/v2/getChattyRootPosts"
    case GetThread = "/v2/getThread"
    case GetThreadPostIds = "/v2/getThreadPostIds"
    case GetThreadPostCount = "/v2/getThreadPostCount"
    case GetSubthread = "/v2/getSubthread"

    // MARK: Posts
    case GetNewestPostInfo = "/v2/getNewestPostInfo"
    case GetPost = "/v2/getPost"
    case GetPostRange = "/v2/getPostRange"
    case GetParentId = "/v2/getParentId"
    case GetPostLineage = "/v2/getPostLineage"
    case PostComment = "/v2/postComment"
    case Search = "/v2/search"
    case RequestReindex = "/v2/requestReindex"
    case SetPostCategory = "/v2/setPostCategory"

    case GetNewestEventId = "/v2/getNewestEventId"
    case WaitForEvent = "/v2/waitForEvent"
    case PollForEvent = "/v2/pollForEvent"
    case BroadcastServerMessage = "/v2/broadcastServerMessage"

    // MARK: Users
    case CheckConnection = "/v2/checkConnection"
    case VerifyCredentials = "/v2/verifyCredentials"
    case GetUserRegistrationDate = "/v2/getUserRegistrationDate"
    case GetAllUserRegistrationDates = "/v2/getAllUserRegistrationDates"
    case GetAllTenYearUsers = "/v2/getAllTenYearUsers"

    // MARK: Messages
    case GetMessages = "/v2/getMessages"
    case GetMessageCount = "/v2/getMessageCount"
    case SendMessage = "/v2/sendMessage"
    case MarkMessageRead = "/v2/markMessageRead"
    case DeleteMessage = "/v2/deleteMessage"

    // MARK: Client Data
    case GetCategoryFilters = "/v2/clientData/getCategoryFilters"
    case SetCategoryFilters = "/v2/clientData/setCategoryFilters"
    case GetMarkedPosts = "/v2/clientData/getMarkedPosts"
    case ClearMarkedPosts = "/v2/clientData/clearMarkedPosts"
    case MarkPost = "/v2/clientData/markPost"
    case GetClientData = "/v2/clientData/getClientData"
    case SetClientData = "/v2/clientData/setClientData"

    // MARK: Notifications
    case GenerateId = "/v2/notifications/generateId"
    case RegisterNotifierClient = "/v2/notifications/registerNotifierClient"
    case RegisterRichClient = "/v2/notifications/registerRichClient"
    case DetachAccount = "/v2/notifications/detachAccount"
    case WaitForNotification = "/v2/notifications/waitForNotification"
    case GetUserSetup = "/v2/notifications/getUserSetup"
    case SetUserSetup = "/v2/notifications/setUserSetup"

    // MARK: Lol
    case Lol = "/greasemonkey/shacklol/report.php"

}
