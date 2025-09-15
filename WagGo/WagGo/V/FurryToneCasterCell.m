//
//  FurryToneCasterCell.m
//  WagGo
//
//   
//

#import "FurryToneCasterCell.h"
#import "SDWebImage.h"
#import "FurOrbitGatherController.h"
#import "SnoutLensShifterController.h"
#import "AFNetworking.h"
#import "WagGoMacros.h"
#import "SVProgressHUD.h"

@interface FurryToneCasterCell()


@property (weak, nonatomic) IBOutlet UIImageView *tailGlowOrbit;

@property (weak, nonatomic) IBOutlet UIImageView *pawLoomShard;

@property (weak, nonatomic) IBOutlet UIView *clawSparkWeave;
@property (weak, nonatomic) IBOutlet UILabel *furPulseGlyph;

@property (weak, nonatomic) IBOutlet UIImageView *snoutTwistHalo;

@property (weak, nonatomic) IBOutlet UILabel *wagEchoSigil;

@property(nonatomic, copy)NSDictionary * magnitude;

@end

@implementation FurryToneCasterCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 15;
    
    self.clawSparkWeave.layer.masksToBounds = YES;
    self.clawSparkWeave.layer.cornerRadius = 10;
    
    self.snoutTwistHalo.layer.masksToBounds = YES;
    self.snoutTwistHalo.layer.cornerRadius = 16;
    
}

-(void)weaveClawLoomSpiralWithDepth:(NSDictionary *)magnitude {
    if (magnitude.count <= 0) {
        return;
    }
    self.magnitude = magnitude;
    NSString * petSoundAlerts = [NSString stringWithFormat:@"%@", magnitude[@"petSoundAlerts"]];
    [self.tailGlowOrbit sd_setImageWithURL:[NSURL URLWithString:petSoundAlerts]];
    
    NSString * petServerStability = [NSString stringWithFormat:@"%@", magnitude[@"petSoundAlerts"]];
    [self.snoutTwistHalo sd_setImageWithURL:[NSURL URLWithString:petServerStability]];
    
    NSString * petLatencyReduction = [NSString stringWithFormat:@"%@", magnitude[@"petLatencyReduction"]];
    self.wagEchoSigil.text = petLatencyReduction;
    NSString * petVideoLoop = [NSString stringWithFormat:@"%@", magnitude[@"petVideoLoop"]];
    self.furPulseGlyph.text = petVideoLoop;
    
    NSString * petClipping = [NSString stringWithFormat:@"%@", magnitude[@"petClipping"]];
    self.pawLoomShard.hidden = [petClipping isEqualToString:@"2"];
    
}


@end
