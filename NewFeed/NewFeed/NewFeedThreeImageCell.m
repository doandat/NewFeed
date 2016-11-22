//
//  NewFeedThreeImageCell.m
//  NewFeed
//
//  Created by DatDV on 11/22/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "NewFeedThreeImageCell.h"

@interface NewFeedThreeImageCell()

@property (weak, nonatomic) IBOutlet UIImageView *img_avatar;

@property (weak, nonatomic) IBOutlet UILabel *lbTitle;

@property (weak, nonatomic) IBOutlet UILabel *lbTime;

@property (weak, nonatomic) IBOutlet UILabel *lbDes;

@property (weak, nonatomic) IBOutlet UIImageView *imv_1;

@property (weak, nonatomic) IBOutlet UIImageView *imv_2;

@property (weak, nonatomic) IBOutlet UIImageView *imv_3;

@property (weak, nonatomic) IBOutlet UIButton *btnLike;

@end



@implementation NewFeedThreeImageCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    //1.
    [self setupUI];
    
    //2.
    [self setupEventSelectImage];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)setupUI
{
    self.imv_1.userInteractionEnabled = YES;
    
    self.imv_2.userInteractionEnabled = YES;
    
    self.imv_3.userInteractionEnabled = YES;
    
}

- (void)setupEventSelectImage
{
    //Event Img1
    UITapGestureRecognizer *tapImg1 =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(actionSelectImg1:)];
    [self.imv_1 addGestureRecognizer:tapImg1];
    
    //Event Img2
    UITapGestureRecognizer *tapImg2 =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(actionSelectImg2:)];
    [self.imv_2 addGestureRecognizer:tapImg2];
    
    //Event Img3
    UITapGestureRecognizer *tapImg3 =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(actionSelectImg3:)];
    [self.imv_3 addGestureRecognizer:tapImg3];
    
}


//TODO: Action select Image

//Select image1
- (void)actionSelectImg1:(UITapGestureRecognizer *)recognizer
{
    if (self.eventSelectImg1)
    {
        self.eventSelectImg1();
    }
}

//Select image2
- (void)actionSelectImg2:(UITapGestureRecognizer *)recognizer
{
    if (self.eventSelectImg2)
    {
        self.eventSelectImg2();
    }
}

//Select image3
- (void)actionSelectImg3:(UITapGestureRecognizer *)recognizer
{
    if (self.eventSelectImg3)
    {
        self.eventSelectImg3();
    }
}


- (void)fillDataForCell
{
    self.img_avatar.image = [UIImage imageNamed:@"icon_avatar.png"];
    
    self.lbTitle.text = @"Macbook Pro 15\"";
    
    self.lbTime.text = @"21h trước";
    
    self.lbDes.text = @"La batería del MacBook Air dura hasta 12 horas con una sola carga, para que puedas trabajar desde la mañana hasta que vuelvas de la oficina sin necesidad de cargarlo";
    
    self.imv_1.image = [UIImage imageNamed:@"macbook.jpg"];
    
    self.imv_2.image = [UIImage imageNamed:@"macbook.jpg"];
    
    self.imv_3.image = [UIImage imageNamed:@"macbook.jpg"];
    
    
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
