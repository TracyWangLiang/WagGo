//
//  PeltVibeCasterViewCell.m
//  WagGo
//
//   
//

#import "PeltVibeCasterViewCell.h"
#import "SDWebImage.h"

@interface PeltVibeCasterViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *tailGlowOrbit;
@property (weak, nonatomic) IBOutlet UIImageView *pawLoomShard;
@property (weak, nonatomic) IBOutlet UILabel *clawSparkWeave;

@end

@implementation PeltVibeCasterViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.tailGlowOrbit.layer.masksToBounds = YES;
    self.tailGlowOrbit.layer.cornerRadius = 54 * 0.5;
}

-(void)weaveClawLoomSpiralWithDepth:(NSDictionary *)magnitude {
    if (magnitude.count <= 0) {
        return;
    }
    
    NSString * petSocialNetwork = [self archiveWhiskerImpulseWithMark:magnitude twirlMark:@"petSocialNetwork"];
    [self.tailGlowOrbit sd_setImageWithURL:[NSURL URLWithString:petSocialNetwork] placeholderImage:[UIImage imageNamed:@"howlGleamShard"]];
    
    NSString * virtualPetWalks = [self archiveWhiskerImpulseWithMark:magnitude twirlMark:@"virtualPetWalks"];
    self.clawSparkWeave.text = virtualPetWalks;
    
}

-(NSString *)archiveWhiskerImpulseWithMark:(NSDictionary *)magnitude twirlMark:(NSString *)twirlMark {
    return [NSString stringWithFormat:@"%@", [magnitude objectForKey:twirlMark]];
}


@end
