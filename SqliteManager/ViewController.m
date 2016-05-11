//
//  ViewController.m
//  SqliteManager
//
//  Created by pg on 16/5/10.
//  Copyright © 2016年 person. All rights reserved.
//

#import "ViewController.h"

#import "People.h"

#import "SqliteManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[SqliteManager shareManager] createTBWithClass:[People class]];
    
    NSThread *thread = [[NSThread alloc]initWithTarget:self selector:@selector(test:) object:nil];
    [thread start];
    for (int i = 0; i<100; i++) {
        People *people = [[People alloc]init];
        people.uniId = [@"201100" stringByAppendingString:[@(i) description]];
        people.name = @"this is a test";
        people.age = 17;
        people.isOld = true;
        [[SqliteManager shareManager] insertModel:people];
        NSLog(@"1111111");
        
        School *school = [[School alloc]init];
        school.name = @"长江大学";
        people.school = school;
        
        [[SqliteManager shareManager] updateWithModel:people updateInfo:@{@"name": @"hello kity"}];
        
//        [[SqliteManager shareManager] deleteWithModel:people];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)test:(id)sender{
    for (int i = 0; i < 100; i++) {
        People *people = [[People alloc]init];
        people.uniId = [@"201100" stringByAppendingString:[@(i) description]];
        [[SqliteManager shareManager] searchWithModel:people result:^(id model) {
            NSLog(@"%@", [model description]);
        }];
    }
}
@end
