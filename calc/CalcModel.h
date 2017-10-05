//
//  CalcModel.h
//  calc
//
//  Created by Dmitriy Sopot on 05.10.2017.
//  Copyright © 2017 Dmitriy Sopot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface CalcModel : NSObject

@property(copy, nonatomic) NSString *operation;
@property(nonatomic) CGFloat currendOperand;
- (CGFloat) performOperand:(CGFloat)operand;

@end
