//
//  songPlayhandel.h
//  12.12 音乐播放器
//
//  Created by qingyun on 15/12/14.
//  Copyright © 2015年 com.qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum :NSUInteger{
    sequenceLoop,
    singleLoop,
    Random,
}PLAYTYPE;

@interface songPlayhandel : NSObject
//当前播放时间
@property (nonatomic) NSTimeInterval  currentime;
//判断播放状态
@property(nonatomic )BOOL palyOrPsuse;
@end
