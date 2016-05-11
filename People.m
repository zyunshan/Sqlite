//
//  People.m
//  SqliteManager
//
//  Created by pg on 16/5/10.
//  Copyright © 2016年 person. All rights reserved.
//

#import "People.h"

@implementation School

@end

@implementation People

-(void)setSex:(int)sex{

}

-(int)sex
{
    return 0;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    NSLog(@"出错%@---%@", key, value);
}

-(id)valueForUndefinedKey:(NSString *)key{
    return @"";
}
@end


@implementation People (test)

- (void)setDesc:(NSString *)desc{
    
}

- (NSString *)desc{
    return @"";
}
@end
