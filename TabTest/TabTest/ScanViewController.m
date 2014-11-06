//
//  ScanViewController.m
//  TabTest
//
//  Created by Seth Rutman on 10/23/14.
//  Copyright (c) 2014 Miracle Makers. All rights reserved.
//

#import "ScanViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ScanViewController ()
@property(strong) AVCaptureSession *session;
@property(strong) AVCaptureDevice *device;
@property(strong) AVCaptureDeviceInput *input;
@property(strong) AVCaptureMetadataOutput *output;
@property(strong) AVCaptureVideoPreviewLayer *prevLayer;

@end

@implementation ScanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)DefineButton:(id)sender {
}

- (IBAction)ClickyButton:(id)sender {
    _session = [[AVCaptureSession alloc] init];
    _device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    NSError *error = nil;
    
    _input = [AVCaptureDeviceInput deviceInputWithDevice:_device error:&error];
    if (_input) {
        [_session addInput:_input];
    } else {
        NSLog(@"Error: %@", error);
    }
    
    _output = [[AVCaptureMetadataOutput alloc] init];
    [_output setMetadataObjectsDelegate:self queue:dispatch_get_main_queue()];
    [_session addOutput:_output];
    
    _output.metadataObjectTypes = [_output availableMetadataObjectTypes];
    
    _prevLayer = [AVCaptureVideoPreviewLayer layerWithSession:_session];
    _prevLayer.frame = self.view.bounds;
    _prevLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    [self.view.layer addSublayer:_prevLayer];
    
    [_session startRunning];

}
@end