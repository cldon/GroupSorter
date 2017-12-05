//
//  Student.m
//  IRP2
//
//  Created by Claire Donovan on 4/26/16.
//  Copyright (c) 2016 Donovan. All rights reserved.
//

#import "Student.h"

@implementation Student

-(id)initWithName:(NSString *)myName
  withPreferences:(NSArray *)myPreferences{
    
    self = [super init];
    self.name=myName;
    self.permGroup=NO;
    self.preferences=myPreferences;
    self.inGroup=NO;
    return self;
}


-(int)findGroupForNthChoice:(int)num{
    int ret=1;
    for(int i=0; i<[self.preferences count]; i++)
        if([self.preferences objectAtIndex:i]==[NSNumber numberWithInt:num])
            ret=i;
    return ret;
}


@end
