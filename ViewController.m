//
//  ViewController.m
//  IRP2
//
//  Created by Claire Donovan on 4/22/16.
//  Copyright (c) 2016 Donovan. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
#import "Group.h"

@interface ViewController () {
    
    __weak IBOutlet NSButton *makeGroupsButton;
    NSMutableArray *allStudies;
    NSMutableArray *allGroupies;
}

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
     allStudies= [NSMutableArray arrayWithObjects: nil];
     allGroupies= [NSMutableArray arrayWithObjects: nil];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    // Update the view, if already loaded.
}
- (IBAction)uploadStudentsPressed:(NSButtonCell *)sender {
   
    NSString *openPath;
    NSOpenPanel *openPanel = [NSOpenPanel openPanel];
    
    if([openPanel runModal] == NSModalResponseOK){
        openPath = [[openPanel URLs][0] path];
    }
    
    NSString *allStuds = [NSString stringWithContentsOfFile:openPath encoding:NSASCIIStringEncoding error:nil];
    
    NSArray *stringParts = [allStuds componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\r\n"]]; //breaks text into lines
    
    for(NSString *aStud in stringParts){ //for each line...
        NSArray *eachStud= [aStud componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\t"]]; //make array of each line divided by tabs
        NSString *name = eachStud[0]; //their name is object at 0
        NSMutableArray *prefs= [NSMutableArray arrayWithObjects: nil]; //their preferences
        
        for (int n=1; n<eachStud.count;n++){ //go through rest of array vals and add to preferences
            [prefs addObject:[NSNumber numberWithInt:(int)[eachStud[n] integerValue]]];
        }
        
        [allStudies addObject: [[Student alloc] initWithName:name withPreferences:prefs]];  //for each eachStud create a Student
    }
}

- (IBAction)uploadGroupsPressed:(NSButtonCell *)sender {
    NSString *openPath;
    NSOpenPanel *openPanel = [NSOpenPanel openPanel];
    
    if([openPanel runModal] == NSModalResponseOK){
        openPath = [[openPanel URLs][0] path];
    }
    
   /*  NSString *allGrs = [NSString stringWithContentsOfFile:openPath encoding:NSASCIIStringEncoding error:nil];
     NSArray *stringParts = [allGrs componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\r\n"]];
    
    for(NSString *aGroup in stringParts){ //for each line...
        NSArray *eachGroup= [aGroup componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\t"]]; //make array of each line divided by tabs
        NSString *name = eachGroup[0]; //their name is object at 0
        //NSLog(@"%@", eachGroup[0]);
        //NSUInteger max= (NSUInteger)[eachGroup[1] integerValue];
        
        
        //[allGroupies addObject: [[Group alloc] initWithName:name withSize:max]];
    }
    */

}

- (IBAction)makeGroupsPressed:(NSButtonCell *)sender {
    
    //creates all groups manually
    Group *firstGroup=[[Group alloc] initWithName:@"Cleaning Lake" withSize:(NSUInteger)4];
    Group *secondGroup=[[Group alloc] initWithName:@"Picking Apples" withSize:(NSUInteger)9];
    Group *thirdGroup=[[Group alloc] initWithName:@"Reading" withSize:(NSUInteger)4];
    
    //creates all students manually
    Student *firstStudent=[[Student alloc] initWithName:@"Dwight Schrute" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:2], [NSNumber numberWithInt:1], [NSNumber numberWithInt:3], nil]];
    Student *secondStudent=[[Student alloc] initWithName:@"Pam Beasely" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:3], [NSNumber numberWithInt:1], [NSNumber numberWithInt:2], nil]];
    Student *thirdStudent=[[Student alloc] initWithName:@"Jim Halpert" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:3], [NSNumber numberWithInt:2], [NSNumber numberWithInt:1], nil]];
    Student *fourthStudent=[[Student alloc] initWithName:@"Michael Scott" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:1], [NSNumber numberWithInt:3], [NSNumber numberWithInt:2], nil]];
    Student *fifthStudent=[[Student alloc] initWithName:@"Kevin Malone" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:2], [NSNumber numberWithInt:3], [NSNumber numberWithInt:1], nil]];
    Student *sixthStudent=[[Student alloc] initWithName:@"Stanley Hudson" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:1], [NSNumber numberWithInt:3], [NSNumber numberWithInt:2], nil]];
    Student *seventhStudent=[[Student alloc] initWithName:@"Kelly Kapoor" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:2], [NSNumber numberWithInt:3], [NSNumber numberWithInt:1], nil]];
    Student *eigthStudent=[[Student alloc] initWithName:@"Phyllis Vance" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:3], [NSNumber numberWithInt:2], [NSNumber numberWithInt:1], nil]];
    Student *ninthStudent=[[Student alloc] initWithName:@"Bob Vance" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:1], [NSNumber numberWithInt:3], [NSNumber numberWithInt:2], nil]];
    Student *tenthStudent=[[Student alloc] initWithName:@"Toby Flenderson" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:1], [NSNumber numberWithInt:3], [NSNumber numberWithInt:2], nil]];
    Student *eleventhStudent=[[Student alloc] initWithName:@"David Wallas" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:1], [NSNumber numberWithInt:2], [NSNumber numberWithInt:3], nil]];
    Student *twelfthStudent=[[Student alloc] initWithName:@"Andy Bernard" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:3], [NSNumber numberWithInt:1], [NSNumber numberWithInt:2], nil]];
    Student *thirteenthStudent=[[Student alloc] initWithName:@"Angela Martin" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:2], [NSNumber numberWithInt:3], [NSNumber numberWithInt:1], nil]];
    Student *fourteenthStudent=[[Student alloc] initWithName:@"Darryl Philbin" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:2], [NSNumber numberWithInt:1], [NSNumber numberWithInt:3], nil]];
    Student *fifteenthStudent=[[Student alloc] initWithName:@"Gabe Lewis" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:1], [NSNumber numberWithInt:3], [NSNumber numberWithInt:2], nil]];
    Student *sixteenthStudent=[[Student alloc] initWithName:@"Erin Hannon" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:1], [NSNumber numberWithInt:2], [NSNumber numberWithInt:3], nil]];
    Student *seventeenthStudent=[[Student alloc] initWithName:@"Ryan Howard" withPreferences:[NSArray arrayWithObjects:[NSNumber numberWithInt:3], [NSNumber numberWithInt:1], [NSNumber numberWithInt:2], nil]];
    
    //manual array of all students
    NSArray *allStudents=[NSArray arrayWithObjects:firstStudent, secondStudent, thirdStudent, fourthStudent, fifthStudent, sixthStudent, seventhStudent, eigthStudent, ninthStudent, tenthStudent, eleventhStudent, twelfthStudent, thirteenthStudent, fourteenthStudent, fifteenthStudent, sixteenthStudent, seventeenthStudent, nil];
   
    allStudents=allStudies;
    
    //manual array of all groups
    NSArray *allGroups = [NSArray arrayWithObjects:firstGroup, secondGroup, thirdGroup, nil];
  //allGroups=allGroupies;
    //sorts all students into first choice
    for(int i=0; i<(int)(allStudents.count); i++){
        [[[allGroups objectAtIndex: [[allStudents objectAtIndex:i] findGroupForNthChoice:1]] students]addObject:[allStudents objectAtIndex:i]];
    }

    //prints off current groups
    NSLog(@"First Group:");
    for(int i=0; i<[[firstGroup students] count]; i++){
        NSLog(@"%@", [[[firstGroup students] objectAtIndex:i] name]);
    }
    NSLog(@"\n");
    NSLog(@"Second Group:");
    for(int i=0; i<[[secondGroup students] count]; i++){
        NSLog(@"%@", [[[secondGroup students] objectAtIndex:i] name]);
    }
    NSLog(@"\n");
    NSLog(@"Third Group:");
    for(int i=0; i<[[thirdGroup students] count]; i++){
        NSLog(@"%@", [[[thirdGroup students] objectAtIndex:i] name]);
    }
    NSLog(@"\n");
    NSLog(@"%@ is %f percent full", [allGroups[0] name], [firstGroup getPercentFull]);
    NSLog(@"%@ is %f percent full",[allGroups[1] name], [secondGroup getPercentFull]);
    NSLog(@"%@ is %f percent full",[allGroups[2] name],[thirdGroup getPercentFull]);
    
    for(int g=0; g<[allGroups count]; g++) {      //loop through each group
        if([allGroups[g] getPercentFull]>1){    //if the group is over capacity
            int nextBest=2;
            while([allGroups[g] getPercentFull]>1){
                for(int s=(int)[allGroups[g] students].count-1; s>=0; s--){ //loop through each student of the group
                    
                    if([allGroups[g] getPercentFull]>1 && [allGroups[[[allGroups[g] students][s] findGroupForNthChoice:nextBest]] getPercentFull]<1){ //if their next best choice is not full
                        
                        [[allGroups[[[allGroups[g] students][s] findGroupForNthChoice:nextBest]] students] addObject:[allGroups[g] students][s]];
                        [[allGroups[g] students] removeObject:[allGroups[g] students][s]];
                    }
                }
                nextBest++;
            }
        }
            }
    
    NSLog(@"\n");
    NSLog(@"First Group:");
    for(int i=0; i<[[firstGroup students] count]; i++){
        NSLog(@"%@", [[[firstGroup students] objectAtIndex:i] name]);
    }
    NSLog(@"\n");
    NSLog(@"Second Group:");
    for(int i=0; i<[[secondGroup students] count]; i++){
        NSLog(@"%@", [[[secondGroup students] objectAtIndex:i] name]);
    }
    NSLog(@"\n");
    NSLog(@"Third Group:");
    for(int i=0; i<[[thirdGroup students] count]; i++){
        NSLog(@"%@", [[[thirdGroup students] objectAtIndex:i] name]);
    }
    NSLog(@"\n");
    NSLog(@"%@ is %f percent full", [allGroups[0] name], [firstGroup getPercentFull]);
    NSLog(@"%@ is %f percent full",[allGroups[1] name], [secondGroup getPercentFull]);
    NSLog(@"%@ is %f percent full",[allGroups[2] name],[thirdGroup getPercentFull]);
    
    NSString *output=[NSString stringWithFormat:@"Final Groups:\r"];
    NSString *testy=[NSString stringWithFormat:@""];
    for(Group *g in allGroups){
        testy=output;
        output=[NSString stringWithFormat:@"%@\r%@:", testy, [g name]];
        for(Student *s in [g students]){
            testy=output;
            output=[NSString stringWithFormat:@"%@\r%@", testy, [s name]];
        }
        testy=output;
        output=[NSString stringWithFormat:@"%@\r", testy];
    }
        
    
    NSSavePanel *saveDlg = [NSSavePanel savePanel];
    [saveDlg setAllowedFileTypes:[NSArray arrayWithObject:@"txt"]];
    NSInteger result = [saveDlg runModal];
    if(result == NSModalResponseOK){
        //saveDlg.URL is the location at which to save this.

        [output writeToURL:saveDlg.URL atomically:YES encoding:NSUTF8StringEncoding error:nil];
    }
}






@end
