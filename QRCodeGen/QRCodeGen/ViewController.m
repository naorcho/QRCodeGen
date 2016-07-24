//
//  ViewController.m
//  QRCodeGen
//
//  Created by Naor David Melamed on 24/07/2016.
//  Copyright © 2016 Naor David Melamed. All rights reserved.
//

#import "ViewController.h"
#import "QRGenerator.h"

@interface ViewController ()

@end

@implementation ViewController
{
    QRGenerator *barcode;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    barcode = [QRGenerator new];
    CGSize size = self.imageView.frame.size;
    [self.imageView setImage:[barcode getQR:@"http://appyvent.com" Size:size]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
