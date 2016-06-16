//
//  ViewController.m
//  儿童画板
//
//  Created by 王腾 on 16/6/15.
//  Copyright © 2016年 王腾. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *colorH;
@property (weak, nonatomic) IBOutlet UISlider *colorS;
@property (weak, nonatomic) IBOutlet UISlider *colorB;
@property (weak, nonatomic) IBOutlet UIView *lineClor;

@end

@implementation ViewController
- (IBAction)changeH:(UISlider*)sender {
    
//    self.colorH.value = sender.value;
    self.lineClor.backgroundColor = [UIColor colorWithHue:sender.value / 255.0 saturation:self.colorS.value brightness:self.colorB.value alpha:1];
    
}
- (IBAction)changeS:(UISlider *)sender {
    
//    self.colorS.value = sender.value;
    
    self.lineClor.backgroundColor = [UIColor colorWithHue:self.colorH.value saturation:sender.value / 255.0 brightness:self.colorB.value alpha:1.0];
    
}
- (IBAction)changeB:(UISlider *)sender {
    
//    self.colorB.value = sender.value;
    
    self.lineClor.backgroundColor = [UIColor colorWithHue:self.colorH.value saturation:self.colorS.value brightness:self.colorB.value / 255.0 alpha:1.0];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
