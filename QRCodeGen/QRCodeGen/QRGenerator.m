//
//  QRGenerator.m
//  QRCodeGen
//
//  Created by Naor David Melamed on 24/07/2016.
//  Copyright © 2016 Naor David Melamed. All rights reserved.
//

#import "QRGenerator.h"

@implementation QRGenerator
{
    CIImage *qrcodeImage;
}

#pragma mark init Methods

- (id)init {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    
    
}

-(UIImage*)getQR:(NSString*)text Size:(CGSize)size
{

    NSData *data = [text dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:false];
    // values: L, M, Q, H, where each value matches to some error resilience (7%, 15%, 25%, 30% respectively). The higher that value, the larger the output QR code image.
    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    [filter setValue:data forKey:@"inputMessage"];
    [filter setValue:@"Q" forKey:@"inputCorrectionLevel"];
    qrcodeImage = filter.outputImage;
    
    CGFloat scaleX = size.width / qrcodeImage.extent.size.width;
    CGFloat scaleY = size.height / qrcodeImage.extent.size.height;
    
    CIImage *transformedImage = [qrcodeImage imageByApplyingTransform:CGAffineTransformMakeScale(scaleX, scaleY)];
    
    UIImage *img = [UIImage imageWithCIImage:transformedImage];
    
    return img;
}

@end
