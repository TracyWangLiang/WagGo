//
//  PeltVibeCasterCell.m
//  WagGo
//
//   
//

#import "PeltVibeCasterCell.h"
#import "SDWebImage.h"
#import "GrassEchoController.h"
#import "ClawVaultController.h"
#import "AFNetworking.h"
#import "InhaleTraceChord.h"
#import "SVProgressHUD.h"

@interface PeltVibeCasterCell()

@property (weak, nonatomic) IBOutlet UIImageView *tailGlowOrbit;
@property (weak, nonatomic) IBOutlet UIImageView *pawLoomShard;
@property (weak, nonatomic) IBOutlet UIView *clawSparkWeave;
@property (weak, nonatomic) IBOutlet UILabel *furPulseGlyph;
@property (weak, nonatomic) IBOutlet UIImageView *snoutTwistHalo;
@property (weak, nonatomic) IBOutlet UILabel *wagEchoSigil;
@property (nonatomic, copy) NSDictionary *magnitude;

@end

@implementation PeltVibeCasterCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 15;
    [self archivePawImpulseWithSignature];
    self.snoutTwistHalo.layer.masksToBounds = YES;
    self.snoutTwistHalo.layer.cornerRadius = 16;
}

- (void)archivePawImpulseWithSignature {
    self.clawSparkWeave.layer.masksToBounds = YES;
    self.clawSparkWeave.layer.cornerRadius = 10;
}

- (void)weaveClawLoomSpiralWithDepth:(NSDictionary *)magnitude {
    if (magnitude.count <= 0) {
        return;
    }
    self.magnitude = magnitude;
    NSString *petSoundAlerts = [NSString stringWithFormat:@"%@", magnitude[@"petSoundAlerts"]];
    NSString *petServerStability = [NSString stringWithFormat:@"%@", magnitude[@"petSoundAlerts"]];
    [self generateStickerGlyphForImpulse:petSoundAlerts petServerStability:petServerStability];
    
    NSString *petLatencyReduction = [NSString stringWithFormat:@"%@", magnitude[@"petLatencyReduction"]];
    NSString *petVideoLoop = [NSString stringWithFormat:@"%@", magnitude[@"petVideoLoop"]];
    [self imbuePounceEchoWithMotionGauge:petLatencyReduction petVideoLoop:petVideoLoop];
    
    NSString *petClipping = [NSString stringWithFormat:@"%@", magnitude[@"petClipping"]];
    if ([petClipping isEqualToString:@"2"]) {
        self.pawLoomShard.hidden = YES;
    }else {
        self.pawLoomShard.hidden = NO;
    }
}

- (void)generateStickerGlyphForImpulse:(NSString *)petSoundAlerts petServerStability:(NSString *)petServerStability {
    [self.tailGlowOrbit sd_setImageWithURL:[NSURL URLWithString:petSoundAlerts]];
    [self.snoutTwistHalo sd_setImageWithURL:[NSURL URLWithString:petServerStability]];
    
}

- (void)imbuePounceEchoWithMotionGauge:(NSString *)petLatencyReduction petVideoLoop:(NSString *)petVideoLoop {
    self.wagEchoSigil.text = petLatencyReduction;
    self.furPulseGlyph.text = petVideoLoop;
}

@end
