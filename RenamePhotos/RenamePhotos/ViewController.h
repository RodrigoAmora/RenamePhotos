//
//  ViewController.h
//  RenamePhotos
//
//  Created by Rodrigo Amora on 12/05/15.
//  Copyright (c) 2015 Rodrigo Amora. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property(nonatomic, strong) IBOutlet NSButton *btRename;
@property(nonatomic, strong) IBOutlet NSTextView *listPhotos;
@property(nonatomic, strong) IBOutlet NSTextField *tfDirectory, *tfName;

-(IBAction)renamePhotos:(id)sender;
-(IBAction)selectDirectory:(id)sender;

@end

