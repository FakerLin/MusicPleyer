//
//  songModel.m
//  12.12 音乐播放器
//
//  Created by qingyun on 15/12/14.
//  Copyright © 2015年 com.qingyun. All rights reserved.
//

#import "songModel.h"

@implementation songModel

-(instancetype) initWithdicValue :(NSDictionary *)dict
{
    if (self=[super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
@end
