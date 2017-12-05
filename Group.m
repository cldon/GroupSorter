//
//  Group.m
//  IRP2
//
//  Created by Claire Donovan on 4/26/16.
//  Copyright (c) 2016 Donovan. All rights reserved.
//

#import "Group.h"

@implementation Group

-(id)initWithName:(NSString *)myName
         withSize:(NSUInteger)mySize{
    
    self = [super init];
    self.name=myName;
    self.isPerm=NO;
    self.maxSize=mySize;
    self.students=[NSMutableArray arrayWithObjects: nil];
    
    return self;
}

-(float)getPercentFull{
    return (float)[self.students count]/self.maxSize;
}



@end
