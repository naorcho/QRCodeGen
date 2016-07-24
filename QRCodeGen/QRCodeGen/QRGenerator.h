//
//  QRGenerator.h
//  QRCodeGen
//
//  Created by Naor David Melamed on 24/07/2016.
//  Copyright © 2016 Naor David Melamed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QRGenerator : NSObject

-(UIImage*)getQR:(NSString*)text Size:(CGSize)size;

@end
