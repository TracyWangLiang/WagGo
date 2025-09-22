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
    
    NSString * petSocialNetwork = [NSString stringWithFormat:@"%@", magnitude[@"petSocialNetwork"]];
    [self.tailGlowOrbit sd_setImageWithURL:[NSURL URLWithString:petSocialNetwork] placeholderImage:[UIImage imageNamed:@"howlGleamShard"]];
    
    NSString * virtualPetWalks = [NSString stringWithFormat:@"%@", magnitude[@"virtualPetWalks"]];
    self.clawSparkWeave.text = virtualPetWalks;
    
}

@end
