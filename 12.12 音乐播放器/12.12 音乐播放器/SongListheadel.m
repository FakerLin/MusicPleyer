//
//  SongListheadel.m
//  12.12 音乐播放器
//
//  Created by qingyun on 15/12/14.
//  Copyright © 2015年 com.qingyun. All rights reserved.
//

#import "SongListheadel.h"
#import "songModel.h"
@implementation SongListheadel

+(instancetype)shardHandel
{
    static SongListheadel *Handle;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        Handle=[[SongListheadel alloc]init];
        [Handle dicChangeModel];
    });
    return Handle;
}

-(void)dicChangeModel
{
    //读取plist文件
    NSArray *songArr=[[NSArray alloc]initWithContentsOfURL:[[NSBundle mainBundle]URLForResource:@"'songsinfos" withExtension:@"plist" ]];
    _songArrary =[NSMutableArray array];
    for (NSDictionary *dict in songArr) {

   //     [_songArrary addObject:[songModel alloc] in]
    }

}
@end
