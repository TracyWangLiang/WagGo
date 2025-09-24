//
//  PrairieHushController.m
//  WagGo
//
//   
//

#import "PrairieHushController.h"

@interface PrairieHushController ()

@end

@implementation PrairieHushController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)triggerClawSparkWeaveWithFrequency:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
    if (self.clawLoomSpiralBlock) {
        self.clawLoomSpiralBlock(sender.tag);
    }
    
}

- (IBAction)igniteTailGlowOrbitWithIntensity:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
