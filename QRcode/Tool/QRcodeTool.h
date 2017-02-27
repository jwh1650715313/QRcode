//
//  QRcodeTool.h
//  QRcode
//
//  Created by JIng on 2017/2/27.
//  Copyright © 2017年 JIng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreImage/CoreImage.h>
#import <UIKit/UIKit.h>
@interface QRcodeTool : NSObject

/** 生成一张普通的二维码 */
+(UIImage *)QRcodeToolgeneratedDataString:(NSString *)dataString
                     imageViewWidth:(CGFloat)imageViewWidth;

/** 生成一张带有logo的二维码（logoScale：相对于父视图的缩放比取值范围0-1；0，不显示，1，代表与父视图大小相同） */
+(UIImage *)QRcodeToolgeneratedLogoDataString:(NSString *)dataString
                                logoimageName:(NSString *)logoimageName
                                    logoScale:(CGFloat)logoScale;

/** 生成一张彩色的二维码 */
+ (UIImage *)QRcodeToolgeneratedDataString:(NSString *)data backgroundColor:(CIColor *)backgroundColor mainColor:(CIColor *)mainColor;


@end
