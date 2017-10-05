//
//  CalcModel.m
//  calc
//
//  Created by Dmitriy Sopot on 05.10.2017.
//  Copyright © 2017 Dmitriy Sopot. All rights reserved.
//

#import "CalcModel.h"

@implementation CalcModel
- (CGFloat)performOperand:(CGFloat)operand
{
    CGFloat value = self.currendOperand;
    if([self.operation isEqualToString:@"X"]){
        value *= operand;
    }
    else if ([self.operation isEqualToString:@"/"]){
        value /= operand;
    }
    else if ([self.operation isEqualToString:@"-"]){
        value -= operand;
    }
    else if ([self.operation isEqualToString:@"+"]){
        value += operand;
    }
    return value;
}

@end
