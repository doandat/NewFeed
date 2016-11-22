//
//  NewFeedVC.m
//  NewFeed
//
//  Created by DatDV on 11/22/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "NewFeedVC.h"

#import "NewFeedTextOnlyCell.h"
#import "NewFeedOneImageCell.h"
#import "NewFeedTwoImageCell.h"
#import "NewFeedThreeImageCell.h"
#import "NewFeedFourImageCell.h"
#import "NewFeedFiveImageCell.h"

#import "FSBasicImage.h"
#import "FSBasicImageSource.h"

static NSString *const kURLImage = @"http://mac24h.vn/images/detailed/43/1447970480000_IMG_556164_3n08-mj.jpg";

//http://mac24h.vn/images/detailed/43/1447970480000_IMG_556164_3n08-mj.jpg

@interface NewFeedVC ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tbNewFeed;

@end

@implementation NewFeedVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //1.
    [self settingTableView];
    
    [self.tbNewFeed reloadData];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UI
- (void)settingTableView
{
    self.tbNewFeed.delegate       = self;
    self.tbNewFeed.dataSource     = self;
    self.tbNewFeed.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tbNewFeed.allowsSelection = NO;
    
    self.tbNewFeed.backgroundColor = [UIColor lightGrayColor];
    
    NSArray<NSString*> *identifierList = @[
                                           NSStringFromClass([NewFeedTextOnlyCell class]),
                                           NSStringFromClass([NewFeedOneImageCell class]),
                                           NSStringFromClass([NewFeedTwoImageCell class]),
                                           NSStringFromClass([NewFeedThreeImageCell class]),
                                           NSStringFromClass([NewFeedFourImageCell class]),
                                           NSStringFromClass([NewFeedFiveImageCell class])
                                           ];
    
    
    
    for (NSString *item in identifierList)
    {
        [self.tbNewFeed registerNib: [UINib nibWithNibName:item bundle:nil]
                    forCellReuseIdentifier: item];
    }
}


#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    return 00.0f;
    
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        return  [self newFeedTextOnlyCellAtIndex:indexPath];
    }
    
    if (indexPath.row == 1)
    {
        return [self newFeedOneImageCellAtIndex:indexPath];
    }
    
    if (indexPath.row == 2)
    {
        return [self newFeedTwoImageCellAtIndex:indexPath];
    }
    
    if (indexPath.row == 3)
    {
        return [self newFeedThreeImageCellAtIndex:indexPath];
    }
    
    if (indexPath.row == 4)
    {
        return [self newFeedFourImageCellAtIndex:indexPath];
    }
    
    if (indexPath.row == 5)
    {
        return [self newFeedFiveImageCellAtIndex:indexPath];
    }
    
    return nil;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}


#pragma mark - set data in cell


- (NewFeedTextOnlyCell *)newFeedTextOnlyCellAtIndex:(NSIndexPath *)idxPath
{
    NewFeedTextOnlyCell *pCell = [self.tbNewFeed dequeueReusableCellWithIdentifier:NSStringFromClass([NewFeedTextOnlyCell class]) forIndexPath:idxPath];
    
    [pCell fillDataForCell];
    
    return pCell;
}

- (NewFeedOneImageCell *)newFeedOneImageCellAtIndex:(NSIndexPath *)idxPath
{
    NewFeedOneImageCell *pCell = [self.tbNewFeed dequeueReusableCellWithIdentifier:NSStringFromClass([NewFeedOneImageCell class]) forIndexPath:idxPath];

    [pCell fillDataForCell];

    return pCell;
}


- (NewFeedTwoImageCell *)newFeedTwoImageCellAtIndex:(NSIndexPath *)idxPath
{
    NewFeedTwoImageCell *pCell = [self.tbNewFeed dequeueReusableCellWithIdentifier:NSStringFromClass([NewFeedTwoImageCell class]) forIndexPath:idxPath];
    
    [pCell fillDataForCell];

    return pCell;
}


- (NewFeedThreeImageCell *)newFeedThreeImageCellAtIndex:(NSIndexPath *)idxPath
{
    NewFeedThreeImageCell *pCell = [self.tbNewFeed dequeueReusableCellWithIdentifier:NSStringFromClass([NewFeedThreeImageCell class]) forIndexPath:idxPath];
    
    [pCell fillDataForCell];

    return pCell;
}


- (NewFeedFourImageCell *)newFeedFourImageCellAtIndex:(NSIndexPath *)idxPath
{
    NewFeedFourImageCell *pCell = [self.tbNewFeed dequeueReusableCellWithIdentifier:NSStringFromClass([NewFeedFourImageCell class]) forIndexPath:idxPath];
    
    [pCell fillDataForCell];

    return pCell;
}


- (NewFeedFiveImageCell *)newFeedFiveImageCellAtIndex:(NSIndexPath *)idxPath
{
    NewFeedFiveImageCell *pCell = [self.tbNewFeed dequeueReusableCellWithIdentifier:NSStringFromClass([NewFeedFiveImageCell class]) forIndexPath:idxPath];
    
    //1. fillData
    [pCell fillDataForCell];

    //2. event
    
    __weak typeof (self) thiz = self;
    
    [pCell setEventSelectLike:^(BOOL isLiked) {
        
    }];
    
    [pCell setEventSelectShare:^{
        
    }];
    
    [pCell setEventSelectImg1:^{
        
        NSArray *pArr = [NSArray arrayWithObjects:kURLImage,kURLImage,kURLImage,kURLImage,kURLImage, nil];
        
        [thiz previewImageWithArray:pArr atIdx:0];
    }];
    
    [pCell setEventSelectImg2:^{
        
    }];
    
    [pCell setEventSelectImg3:^{
        
    }];
    
    [pCell setEventSelectImg4:^{
        
    }];
    
    [pCell setEventSelectImg5:^{
        
    }];
    
    
    return pCell;
}


////
- (void)previewImageWithArray:(NSArray *)imageModels atIdx:(NSInteger)idx
{
    NSMutableArray<FSBasicImage*> *pImageContainer = [[NSMutableArray alloc] initWithCapacity:imageModels.count];
    
    for ( NSString *pItem in imageModels)
    {
        FSBasicImage *pImg = [[FSBasicImage alloc] initWithImageURL:[NSURL URLWithString:pItem]];
        [pImageContainer addObject:pImg];
    }
    
    FSBasicImageSource *photoSource = [[FSBasicImageSource alloc] initWithImages:pImageContainer];
    FSImageViewerViewController *viewer = [[FSImageViewerViewController alloc] initWithImageSource:photoSource];
    
    viewer.sharingDisabled = YES;
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewer];
    [viewer moveToImageAtIndex:idx animated:NO];
    [self presentViewController:navigationController animated:YES completion:nil];
}


@end
