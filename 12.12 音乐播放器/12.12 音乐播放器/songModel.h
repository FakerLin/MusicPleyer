//
//  songModel.h
//  12.12 音乐播放器
//
//  Created by qingyun on 15/12/14.
//  Copyright © 2015年 com.qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface songModel : NSObject
@property (nonatomic, strong) NSString *KName;
@property (nonatomic, strong) NSString *KType;

-(instancetype) initWithdicValue :(NSDictionary *)dict;

@end
