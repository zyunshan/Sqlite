//
//  People.h
//  SqliteManager
//
//  Created by pg on 16/5/10.
//  Copyright © 2016年 person. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SqliteManager.h"

@interface School : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *address;
@end

@interface People : NSObject <SqliteManagerDelegate>

//主键
@property (nonatomic, copy) NSString *uniId;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) NSInteger age;

@property (nonatomic, assign) BOOL isOld;

@property (nonatomic, copy) NSString *level;

@property (nonatomic, strong) School *school;
@end

@interface People (test)

@property (nonatomic, copy) NSString *desc;

@end