//
//  QRcodeViewController.m
//  QRcode
//
//  Created by JIng on 2017/2/27.
//  Copyright © 2017年 JIng. All rights reserved.
//

#import "QRcodeViewController.h"
#import "QRcodeTool.h"
@interface QRcodeViewController ()

@end

@implementation QRcodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title=@"生成二维码";
    
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.77 alpha:1.0];
    
    // 生成二维码(Default)
    [self setupGenerateQRCode];
    
    // 生成二维码(中间带有图标)
    [self setupGenerate_Icon_QRCode];
    
    // 生成二维码(彩色)
    [self setupGenerate_Color_QRCode];
}


// 生成二维码
- (void)setupGenerateQRCode {
    
    // 1、借助UIImageView显示二维码
    UIImageView *imageView = [[UIImageView alloc] init];
    CGFloat imageViewW = 150;
    CGFloat imageViewH = imageViewW;
    CGFloat imageViewX = (self.view.frame.size.width - imageViewW) / 2;
    CGFloat imageViewY = 80;
    imageView.frame =CGRectMake(imageViewX, imageViewY, imageViewW, imageViewH);
    [self.view addSubview:imageView];
    
    // 2、将CIImage转换成UIImage，并放大显示
    imageView.image = [QRcodeTool QRcodeToolgeneratedDataString:@"https://github.com/jwh1650715313" imageViewWidth:imageViewW];
    
#pragma mark - - - 模仿支付宝二维码样式（添加用户头像）
    CGFloat scale = 0.22;
    CGFloat borderW = 5;
    UIView *borderView = [[UIView alloc] init];
    CGFloat borderViewW = imageViewW * scale;
    CGFloat borderViewH = imageViewH * scale;
    CGFloat borderViewX = 0.5 * (imageViewW - borderViewW);
    CGFloat borderViewY = 0.5 * (imageViewH - borderViewH);
    borderView.frame = CGRectMake(borderViewX, borderViewY, borderViewW, borderViewH);
    borderView.layer.borderWidth = borderW;
    borderView.layer.borderColor = [UIColor purpleColor].CGColor;
    borderView.layer.cornerRadius = 10;
    borderView.layer.masksToBounds = YES;
    borderView.layer.contents = (id)[UIImage imageNamed:@"测试"].CGImage;
    
    //[imageView addSubview:borderView];
}

#pragma mark - - - 中间带有图标二维码生成
- (void)setupGenerate_Icon_QRCode {
    
    // 1、借助UIImageView显示二维码
    UIImageView *imageView = [[UIImageView alloc] init];
    CGFloat imageViewW = 150;
    CGFloat imageViewH = imageViewW;
    CGFloat imageViewX = (self.view.frame.size.width - imageViewW) / 2;
    CGFloat imageViewY = 240;
    imageView.frame =CGRectMake(imageViewX, imageViewY, imageViewW, imageViewH);
    [self.view addSubview:imageView];
    
    CGFloat scale = 0.2;
    
    // 2、将最终合得的图片显示在UIImageView上
    imageView.image = [QRcodeTool QRcodeToolgeneratedLogoDataString:@"https://github.com/jwh1650715313" logoimageName:@"测试" logoScale:scale];
    
}

#pragma mark - - - 彩色图标二维码生成
- (void)setupGenerate_Color_QRCode {
    
    // 1、借助UIImageView显示二维码
    UIImageView *imageView = [[UIImageView alloc] init];
    CGFloat imageViewW = 150;
    CGFloat imageViewH = imageViewW;
    CGFloat imageViewX = (self.view.frame.size.width - imageViewW) / 2;
    CGFloat imageViewY = 400;
    imageView.frame =CGRectMake(imageViewX, imageViewY, imageViewW, imageViewH);
    [self.view addSubview:imageView];
    
    // 2、将二维码显示在UIImageView上

    imageView.image=[QRcodeTool QRcodeToolgeneratedDataString:@"https://github.com/jwh1650715313" backgroundColor:[CIColor redColor] mainColor:[CIColor yellowColor]];
   
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
