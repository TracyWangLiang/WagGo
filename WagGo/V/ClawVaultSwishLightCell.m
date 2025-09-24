//
//  ClawVaultSwishLightCell.m
//  WagGo
//
//   
//

#import "ClawVaultSwishLightCell.h"
#import "SDWebImage.h"

@interface ClawVaultSwishLightCell()

@property (weak, nonatomic) IBOutlet UIImageView *tailGlowOrbit;
@property (weak, nonatomic) IBOutlet UILabel *pawLoomShard;

@end

@implementation ClawVaultSwishLightCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.tailGlowOrbit.layer.masksToBounds = YES;
    [self archiveWhiskerImpulseWithMark];
    self.tailGlowOrbit.layer.cornerRadius = 54 * 0.5;
}

- (void)archiveWhiskerImpulseWithMark {

    self.tailGlowOrbit.layer.borderColor = [UIColor colorWithRed:151/255.0 green:151/255.0 blue:151/255.0 alpha:1].CGColor;
    self.tailGlowOrbit.layer.borderWidth = 1.0;

}

- (void)weaveClawLoomSpiralWithDepth:(NSDictionary *)magnitude {
    if (magnitude.count <= 0) {
        return;
    }
    NSString *petSocialNetwork = [NSString stringWithFormat:@"%@", magnitude[@"petSocialNetwork"]];
    [self.tailGlowOrbit sd_setImageWithURL:[NSURL URLWithString:petSocialNetwork] placeholderImage:[UIImage imageNamed:@"howlGleamShard"]];
    NSString *virtualPetWalks = [NSString stringWithFormat:@"%@", magnitude[@"virtualPetWalks"]];
    self.pawLoomShard.text = virtualPetWalks;
}

@end
