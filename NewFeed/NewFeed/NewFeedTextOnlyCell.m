//
//  NewFeedTextOnlyCell.m
//  NewFeed
//
//  Created by DatDV on 11/22/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "NewFeedTextOnlyCell.h"

@interface NewFeedTextOnlyCell()

@property (weak, nonatomic) IBOutlet UIImageView *img_avatar;

@property (weak, nonatomic) IBOutlet UILabel *lbTitle;

@property (weak, nonatomic) IBOutlet UILabel *lbTime;

@property (weak, nonatomic) IBOutlet UILabel *lbDes;

@property (weak, nonatomic) IBOutlet UIButton *btnLike;



@end


@implementation NewFeedTextOnlyCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)fillDataForCell
{
    self.img_avatar.image = [UIImage imageNamed:@"icon_avatar.png"];
    
    self.lbTitle.text = @"Macbook Pro 15\"";
    
    self.lbTime.text = @"21h trước";
    
    self.lbDes.text = @"La batería del MacBook Air dura hasta 12 horas con una sola carga, para que puedas trabajar desde la mañana hasta que vuelvas de la oficina sin necesidad de cargarlo";
}

- (IBAction)actionLike:(id)sender
{
    if (self.eventSelectLike)
    {
        self.eventSelectLike(YES);
    }
}

- (IBAction)actionShare:(id)sender
{
    if (self.eventSelectShare)
    {
        self.eventSelectShare();
    }
}


@end
