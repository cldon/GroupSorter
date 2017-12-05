//
//  Student.h
//  IRP2
//
//  Created by Claire Donovan on 4/26/16.
//  Copyright (c) 2016 Donovan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property NSString *name;
@property (nonatomic, strong) NSArray *preferences;
@property BOOL permGroup;
@property BOOL inGroup;

-(id)initWithName:(NSString *)myName
  withPreferences:(NSArray *)myPreferences;

//-(int)firstChoice;

-(int)findGroupForNthChoice: (int)num;
@end
