//
//  ViewController.m
//  calc
//
//  Created by Dmitriy Sopot on 05.10.2017.
//  Copyright © 2017 Dmitriy Sopot. All rights reserved.
//

#import "ViewController.h"
#import "CalcModel.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *valueLabel;
@property (strong, nonatomic) CalcModel *model;
@property(nonatomic) BOOL waitNextOperand;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.model = [[CalcModel alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


- (IBAction)onNuberPres:(UIButton *)sender {
    NSString *value = self.valueLabel.text;
    if ([value isEqualToString:@"0"] || self.waitNextOperand){
        value = @""; // при нажатии на цифру удаляется 0
        self.waitNextOperand = YES;
    }
    
    value = [value stringByAppendingString:sender.titleLabel.text];
    self.valueLabel.text = value;
}

- (IBAction)onOperaitionPres:(UIButton *)sender {
    self.model.operation = sender.titleLabel.text;
    self.model.currendOperand = self.valueLabel.text.floatValue; //конвертация в текст
    self.waitNextOperand = YES;
}

- (IBAction)onEqualPres:(id)sender {
    CGFloat value = [self.model performOperand:self.valueLabel.text.floatValue];
    self.valueLabel.text = [NSString stringWithFormat:@"%f", value];
    self.model.currendOperand = value;
}

- (IBAction)onClearPres:(id)sender {
    self.valueLabel.text = @"";
    self.model.operation = nil;
}

@end
