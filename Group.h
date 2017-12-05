//
//  Group.h
//  IRP2
//
//  Created by Claire Donovan on 4/26/16.
//  Copyright (c) 2016 Donovan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Group : NSObject

@property (nonatomic, strong) NSMutableArray *students;
@property BOOL isPerm;
@property NSUInteger maxSize;
@property (nonatomic, strong) NSString *name;

-(id)initWithName:(NSString *)myName
         withSize:(NSUInteger)mySize;

-(float)getPercentFull;


@end
