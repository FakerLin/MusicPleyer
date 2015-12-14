//
//  SongListheadel.h
//  12.12 音乐播放器
//
//  Created by qingyun on 15/12/14.
//  Copyright © 2015年 com.qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SongListheadel : NSObject

@property (nonatomic, strong) NSMutableArray *songArrary;
+(instancetype)shardHandel;

-(void)dicChangeModel;
@end
