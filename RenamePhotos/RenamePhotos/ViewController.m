//
//  ViewController.m
//  RenamePhotos
//
//  Created by Rodrigo Amora on 12/05/15.
//  Copyright (c) 2015 Rodrigo Amora. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize listPhotos, tfDirectory, tfName;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    // Update the view, if already loaded.
}

-(void)renamePhotos:(id)sender {
    NSString *path = tfDirectory.stringValue;
    NSString *namePhotos = tfName.stringValue;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSArray *fileList = [fileManager contentsOfDirectoryAtPath:path error:nil];
    NSMutableString *list = [[NSMutableString alloc] init];
    
    for (int i = 0; i < fileList.count; i++) {
        NSString *fileName = [[NSString alloc] initWithFormat:@"%@/%@", path,[fileList objectAtIndex:i]];
        NSString *newFile = [[NSString alloc] initWithFormat:@"%@/%@-%i.jpg", path, namePhotos,i];

        if ([fileName containsString:@".jpg"]) {
            [fileManager moveItemAtPath:fileName toPath:newFile error:nil];
            [list appendFormat:@"%@ -> %@ \n", fileName, newFile];
            NSLog(@"Photo renamed -> %@", [fileList objectAtIndex:i]);
        }
    }
    
    listPhotos.string = list;
}

-(void)selectDirectory:(id)sender {
    NSOpenPanel *openPanel = [NSOpenPanel openPanel];
    [openPanel setCanChooseDirectories:YES];
    
    NSInteger tvarNSInteger	= [openPanel runModalForTypes:nil];
    NSString *path = [openPanel directory];
    
    [tfDirectory setStringValue:path];
}

@end
