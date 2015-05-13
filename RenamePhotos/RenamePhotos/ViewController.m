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
    
}

-(void)selectDirectory:(id)sender {
    NSOpenPanel *openPanel = [NSOpenPanel openPanel];
    [openPanel setCanChooseDirectories:YES];
    
    NSInteger tvarNSInteger	= [openPanel runModalForTypes:nil];
    NSString *path = [openPanel directory];
    
    [tfDirectory setStringValue:path];
}

@end
