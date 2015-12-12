//
//  ViewController.m
//  12.12 音乐播放器
//
//  Created by qingyun on 15/12/12.
//  Copyright © 2015年 com.qingyun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

/**
 *解析歌词
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    //歌词路径
    NSString *fileStr=[[NSString alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"演员" ofType:@"lrc"] encoding:NSUTF8StringEncoding error:nil];
    //拆分歌词(以换行符解析出每一句)
    NSArray *arr=[fileStr componentsSeparatedByString:@"\n"];
    NSLog(@"%@",arr);
    //遍历歌词  解析每一句中得 时间 和 歌词
    NSMutableDictionary *dict =[NSMutableDictionary dictionary];
    for (NSString *lrcstr in arr) {
        NSArray *array=[lrcstr componentsSeparatedByCharactersInSet:[NSCharacterSet  characterSetWithCharactersInString:@"[:]"]];
        NSLog(@"%@",lrcstr);
        NSLog(@"%@",array);
        if ([array[1] hasPrefix:@"0"]) {
            NSString *min=array[1];
            NSString *sec =array[2];
            float key =min.floatValue *60 +sec.floatValue;
            NSString *value = array[3];
            [dict setObject:value forKey:@(key)];

        }
    }
    //字典内key 排序
    NSArray *keys =[dict allKeys];
    [keys sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"%@",dict);
    
    
  
}


@end
