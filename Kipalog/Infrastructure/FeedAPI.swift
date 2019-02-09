//
//  FeedAPI.swift
//  Kipalog
// 
//  Created by DTVD on 2019-02-09.
//  Copyright © 2019 Kipalog. All rights reserved.
//

import Foundation
import APIKit
import RxSwift

enum FeedTab {
    case top
    case new
    case til
}

struct FeedAPI {
    func getFeed(for tab: FeedTab) -> Observable<[Post]> {
        return Session.send(request: FeedRequest.HotRequest())
            .map { response in
                return response.content
            }
    }
}