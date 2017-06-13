//
//  ViewController.m
//  opencvLearn
//
//  Created by 陈家奇 on 2017/6/13.
//  Copyright © 2017年 陈家奇. All rights reserved.
//

#import "ViewController.h"
#import "OpenCVLearn.hpp"

@interface ViewController()<NSOpenSavePanelDelegate>
@property (nonatomic, copy) NSString* fullFilePath;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)grayAction:(id)sender {
    NSString*grayPath = @"/Users/chenjiaqi/Desktop/gray.jpg";
    Mat output = ImageProcessUtils().imageToGray([_fullFilePath UTF8String]);
    imwrite([grayPath UTF8String], output);
    [_outputImageView setImage:[[NSImage alloc] initWithContentsOfURL:[NSURL URLWithString:[NSString stringWithFormat:@"file://%@", grayPath]]]];
}
- (IBAction)blurAction:(id)sender {
    NSString*grayPath = @"/Users/chenjiaqi/Desktop/Blur.jpg";
    Mat output = ImageProcessUtils().imageBlur([_fullFilePath UTF8String]);
    imwrite([grayPath UTF8String], output);
    [_outputImageView setImage:[[NSImage alloc] initWithContentsOfURL:[NSURL URLWithString:[NSString stringWithFormat:@"file://%@", grayPath]]]];
}
- (IBAction)selectAction:(NSButton*)sender {
    NSOpenPanel* panel = [[NSOpenPanel alloc] init];
    panel.delegate = self;
    [panel beginWithCompletionHandler:^(NSInteger result) {
      
    }];
}

#pragma mark - NSOpenSavePanelDelegate Methods

- (BOOL)panel:(id)sender validateURL:(NSURL *)url error:(NSError **)outError
{
    if (url.isFileURL) {
        _fullFilePath = [url.absoluteString substringFromIndex:7];
        [_inputImageView setImage:[[NSImage alloc] initWithContentsOfURL:url]];
        return YES;
    }
    
    return NO;
    
}
- (void)panel:(id)sender didChangeToDirectoryURL:(nullable NSURL *)url
{
    
}
@end
