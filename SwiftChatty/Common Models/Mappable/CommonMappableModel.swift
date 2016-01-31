//
//  CommonMappableModel.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// All of the objects that can be returned from an API call need to conform
/// to this protocol so they can be properly mapped from JSON.
public protocol CommonMappableModel: BasicMappable {}
