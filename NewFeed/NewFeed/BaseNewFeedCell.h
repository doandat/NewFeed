//
//  BaseNewFeedCell.h
//  NewFeed
//
//  Created by DatDV on 11/22/16.
//  Copyright © 2016 com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseNewFeedCell : UITableViewCell

@property (copy, nonatomic) void(^eventSelectLike)(BOOL isLiked);

@property (copy, nonatomic) void(^eventSelectShare)();

@property (copy, nonatomic) void(^eventSelectImg1)();

@property (copy, nonatomic) void(^eventSelectImg2)();

@property (copy, nonatomic) void(^eventSelectImg3)();

@property (copy, nonatomic) void(^eventSelectImg4)();

@property (copy, nonatomic) void(^eventSelectImg5)();

- (void)fillDataForCell;


@end
