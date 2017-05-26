[![Build Status](https://travis-ci.org/andrebocchini/SwiftChatty.svg?branch=master)](https://travis-ci.org/andrebocchini/SwiftChatty)

# What is SwiftChatty?

SwiftChatty is an iOS/OSX/tvOS/WatchOS framework written in Swift that models the [WinChatty
v2 API](http://winchatty.com/v2).

It currently models all requests and data types listed on the [WinChatty v2
documentation page](http://winchatty.com/v2), and aims to make using the API as easy as possible for
developers wanting to build applications that interact with the
Chatty.

# How do I use it?

First, create your project in XCode and make sure you have [CocoaPods](https://cocoapods.org/) installed.  Then create the following Podfile for your project:

```
use_frameworks!

pod 'SwiftChatty', :git => 'https://github.com/andrebocchini/swiftchatty.git'
```

After creating the Podfile, run:

`pod install`

The SwiftChatty framework tries to model the WinChatty v2 API as closely as possible.  And the best way to illustrate how it works, is to show an example.

First, add the following line to the top of your source file:

`import SwiftChatty`

If you [look at the documentation](http://winchatty.com/v2/readme#_Toc421451664) for the `getChattyRootPosts` request, you'll find that it takes the following parameters:

* **offset**: Number of threads to skip (for paging)
* **limit**: Maximum number of threads to return (for paging)
* **username**: If provided, this allows the isParticipant flag to be returned for each thread indicating whether the user posted that thread or replied to it.
* **date**: If provided, posts from this day will be returned rather than the currently active chatty posts. 

Using SwiftChatty, you'd create a request for that API call like this:

```swift
let request = GetChattyRootPostsRequest(withOffset: 0, limit: 100, username: "electroly", date: nil)
```
And now that you have the request ready to go, you can just feed it to the SwiftChatty client like this:

```swift
Client.request(request, completion: { (response: ClientRequestResult<GetChattyRootPostsResponse>) in
    switch response {
    case .Success(let response):
        print("Number of threads: \(response.totalThreadCount)")
        for post in response.rootPosts {
            print("Post ID: \(post.id) - Author: \(post.author)")
        }
    case .Failure(let error):
        print(error)
    }
})
```

The response object, in this case `GetChattyRootPostsResponse`, will have two
properties that match the properties of the response received from the WinChatty server:

* **totalThreadCount**: an integer indicating how many threads it found.
* **rootPosts**: An array of `RootPost` objects.  One for each thread.

[All documented requests](http://winchatty.com/v2) were modeled in the same fashion.  So if you want to retrieve posts using the [`getPost`](http://winchatty.com/v2/readme#_Toc421451671) API call, you would build a request using the `GetPostRequest` model, and would get a `GetPostResponse` model in return.

# WatchOS (or any mixed target) projects

If you are making a WatchOS app (or some other mixed target project), and you try to use SwiftChatty in more than one target, you will probably have to build a Podfile that looks a little like this:

```
use_frameworks!

def shared_pods
    pod 'SwiftChatty', :git => 'https://github.com/andrebocchini/swiftchatty.git'
end

target 'SwiftChatty WatchOS Demo' do
    platform :ios, '9.0'
    shared_pods
end

target 'SwiftChatty WatchOS Demo WatchKit Extension' do
    platform :watchos, '2.0'
    shared_pods
end
```

When you run pod install, you will also see CocoaPods print a lot of warnings about duplicate UUIDs and such, and that's normal.  Things should still work ok.  If you want to disable all those warnings, you can run this in your terminal:

`export COCOAPODS_DISABLE_DETERMINISTIC_UUIDS=YES` 

# Dependencies

* [Alamofire](https://github.com/Alamofire/Alamofire)
* [Genome](https://github.com/LoganWright/Genome)
