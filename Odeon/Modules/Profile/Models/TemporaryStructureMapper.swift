//
//  TemporaryStructureMapper.swift
//  Odeon
//
//  Created by Sherlock, James on 21/12/2018.
//  Copyright © 2018 Sherlouk. All rights reserved.
//

import Foundation

struct TemporaryStructureMapper {
    
    typealias ItemTypeTuple = (itemType: ProfileItemType, object: Any?)
    
    var struture: [ItemTypeTuple] {
        
        let reviewOne = ProfileReviewViewModel(
            revieweeName: "James Sherlock",
            reviewwImageURL: URL(string: "https://google.com/")!,
            reviewDate: Date(),
            halfRating: 5,
            reviewDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pulvinar elit ante, sed commodo purus rutrum vitae. Aliquam vel tellus tincidunt, mattis magna consectetur, efficitur ante. Sed neque eros, volutpat eu luctus in, ultricies in lectus."
        )
        
        let reviewTwo = ProfileReviewViewModel(
            revieweeName: "John Smith",
            reviewwImageURL: URL(string: "https://google.com/")!,
            reviewDate: Date(),
            halfRating: 6,
            reviewDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pulvinar elit ante, sed commodo purus rutrum vitae. Aliquam vel tellus tincidunt, mattis magna consectetur, efficitur ante. Sed neque eros, volutpat eu luctus in, ultricies in lectus."
        )
        
        return [
            (.rating, nil),
            (.movieInformation, nil),
            (.paragraph, nil),
            (.button, ProfileButtonViewModel(buttonText: "SEE FULL BIOGRAPHY", buttonAction: { })),
            (.title, ProfileTitleViewModel(title: "Cast", buttonText: nil, buttonAction: nil)),
            (.scroller, nil),
            (.title, ProfileTitleViewModel(title: "Reviews", buttonText: "SEE ALL", buttonAction: { })),
            (.review, reviewOne),
            (.review, reviewTwo),
            (.title, ProfileTitleViewModel(title: "Photogallery", buttonText: nil, buttonAction: nil)),
            (.gallery, nil)
        ]
        
    }
    
    
}