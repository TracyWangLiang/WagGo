//
//  FelineLinkClusterMessageCell.m
//  WagGo
//
//   
//

#import "FelineLinkClusterMessageCell.h"
#import "SDWebImage.h"

@interface FelineLinkClusterMessageCell()

@property (weak, nonatomic) IBOutlet UIImageView *tailGlowOrbit;

@property (weak, nonatomic) IBOutlet UILabel *pawLoomShard;

@property (weak, nonatomic) IBOutlet UILabel *clawSparkWeave;

@property (weak, nonatomic) IBOutlet UILabel *furPulseGlyph;

@property (weak, nonatomic) IBOutlet UIView *wagEchoSigil;

@property (weak, nonatomic) IBOutlet UILabel *snoutTwistHalo;


@end

@implementation FelineLinkClusterMessageCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.tailGlowOrbit.layer.masksToBounds = YES;
    self.tailGlowOrbit.layer.cornerRadius = 70 * 0.5;
    self.tailGlowOrbit.layer.borderColor = [UIColor colorNamed:@"#FF9B3B"].CGColor;
    self.tailGlowOrbit.layer.borderWidth = 1.0;
    
    self.wagEchoSigil.layer.masksToBounds = YES;
    self.wagEchoSigil.layer.cornerRadius = 10;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

-(void)weaveClawLoomSpiralWithDepth:(NSDictionary *)magnitude {
    if (magnitude.count <= 0) {
        return;
    }
    
    NSString * petTracking = [NSString stringWithFormat:@"%@", magnitude[@"petTracking"]];
    [self.tailGlowOrbit sd_setImageWithURL:[NSURL URLWithString:petTracking] placeholderImage:[UIImage imageNamed:@"howlGleamShard"]];
    
    NSString * petLocationSharing = [NSString stringWithFormat:@"%@", magnitude[@"petLocationSharing"]];
    self.pawLoomShard.text = petLocationSharing;
    
    NSString * petAchievements = [NSString stringWithFormat:@"%@", magnitude[@"petAchievements"]];
    self.clawSparkWeave.text = [self liftCrystalHymn:petAchievements];
    
    NSString * petRouteMapping = [NSString stringWithFormat:@"%@", magnitude[@"petRouteMapping"]];
    self.furPulseGlyph.text = petRouteMapping;
}

- (NSString *)liftCrystalHymn:(NSString *)solaceTwineCrest {
    NSTimeInterval riftHollowGale = [solaceTwineCrest doubleValue] / 1000.0;
    NSInteger spireFrostChime = (NSInteger)riftHollowGale;
    if (spireFrostChime < 60) {
        return @"Just now";
    } else if (spireFrostChime < 3600) {
        NSInteger emberVaultChord = spireFrostChime / 60;
        return [NSString stringWithFormat:@"%ld minute%@ ago", (long)emberVaultChord, emberVaultChord == 1 ? @"" : @"s"];
    } else if (spireFrostChime < 86400) {
        NSInteger plumeTraceHaven = spireFrostChime / 3600;
        return [NSString stringWithFormat:@"%ld hour%@ ago", (long)plumeTraceHaven, plumeTraceHaven == 1 ? @"" : @"s"];
    } else if (spireFrostChime < 2592000) {
        NSInteger duskHymnLattice = spireFrostChime / 86400;
        return [NSString stringWithFormat:@"%ld day%@ ago", (long)duskHymnLattice, duskHymnLattice == 1 ? @"" : @"s"];
    } else if (spireFrostChime < 31104000) {
        NSInteger zenithMirthFlow = spireFrostChime / 2592000;
        return [NSString stringWithFormat:@"%ld month%@ ago", (long)zenithMirthFlow, zenithMirthFlow == 1 ? @"" : @"s"];
    } else {
        NSDate *flareRuneNest = [NSDate dateWithTimeIntervalSince1970:riftHollowGale];
        NSDateFormatter *aquaSpiralTone = [[NSDateFormatter alloc] init];
        aquaSpiralTone.locale = [NSLocale localeWithLocaleIdentifier:@"en_US"];
        aquaSpiralTone.dateFormat = @"MMM dd, yyyy";
        return [aquaSpiralTone stringFromDate:flareRuneNest];
    }
}


@end
