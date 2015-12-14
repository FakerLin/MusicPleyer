//
//  ViewController.m
//  12.12 音乐播放器
//
//  Created by qingyun on 15/12/14.
//  Copyright © 2015年 com.qingyun. All rights reserved.
//

#import "ViewController.h"
#import "SongListheadel.h"
#import "songModel.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    UITableView *mytable =[[UITableView alloc]initWithFrame:self.view.bounds];
    mytable.delegate=self;
    mytable.dataSource=self;
    [self.view addSubview:mytable];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [SongListheadel shardHandel].songArrary.count;
    
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifi=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifi];
    if (cell) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifi];
    }
    return cell;
}

@end
