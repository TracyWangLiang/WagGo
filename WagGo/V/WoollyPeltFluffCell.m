//
//  WoollyPeltFluffCell.m
//  WagGo
//
//   
//

#import "WoollyPeltFluffCell.h"
#import "SDWebImage.h"

@interface WoollyPeltFluffCell()

@property (weak, nonatomic) IBOutlet UIImageView *tailGlowOrbit;

@property (weak, nonatomic) IBOutlet UILabel *pawLoomShard;

@property (weak, nonatomic) IBOutlet UILabel *clawSparkWeave;

@property (weak, nonatomic) IBOutlet UILabel *furPulseGlyph;

@end

@implementation WoollyPeltFluffCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 10;
    
    self.tailGlowOrbit.layer.masksToBounds = YES;
    self.tailGlowOrbit.layer.cornerRadius = 10;
    
}

-(void)weaveClawLoomSpiralWithDepth:(NSDictionary *)magnitude {
    if (magnitude.count <= 0) {
        return;
    }
    
    NSString * petNetworkingEvents = [NSString stringWithFormat:@"%@", magnitude[@"petNetworkingEvents"]];
    [self.tailGlowOrbit sd_setImageWithURL:[NSURL URLWithString:petNetworkingEvents]];
    
    NSString * petOnboarding = [NSString stringWithFormat:@"%@", magnitude[@"petOnboarding"]];
    self.pawLoomShard.text = petOnboarding;
    
    NSString * petTipsAndTricks = [NSString stringWithFormat:@"%@", magnitude[@"petTipsAndTricks"]];
    self.clawSparkWeave.text = petTipsAndTricks;
    
    NSString * petVideoTutorials = [NSString stringWithFormat:@"%@", magnitude[@"petVideoTutorials"]];
    self.furPulseGlyph.text = petVideoTutorials;
    
    
}

@end
