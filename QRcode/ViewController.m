//
//  ViewController.m
//  QRcode
//
//  Created by JIng on 2017/2/27.
//  Copyright © 2017年 JIng. All rights reserved.
//

#import "ViewController.h"
#import "QRcodeViewController.h"
// 获取设备的物理高度
#define ScreenHeight ([UIScreen mainScreen].bounds.size.height)
// 获取设备的物理宽度
#define ScreenWidth ([UIScreen mainScreen].bounds.size.width)



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _ViewTopConstant.constant=(ScreenHeight-33)/2;
    _ViewLeftConstant.constant=(ScreenWidth-77)/2;
    
}


- (IBAction)BtnClick:(id)sender
{
    QRcodeViewController  *vc=[[QRcodeViewController alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
