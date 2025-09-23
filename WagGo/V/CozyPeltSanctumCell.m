//
//  CozyPeltSanctumCell.m
//  WagGo
//
//   
//

#import "CozyPeltSanctumCell.h"
#import "SDWebImage.h"

@interface CozyPeltSanctumCell()

@property (weak, nonatomic) IBOutlet UIImageView *tailGlowOrbit;

@property (weak, nonatomic) IBOutlet UILabel *pawLoomShard;

@property (weak, nonatomic) IBOutlet UILabel *clawSparkWeave;

@property (weak, nonatomic) IBOutlet UILabel *furPulseGlyph;

@property (weak, nonatomic) IBOutlet UIView *wagEchoSigil;

@property (weak, nonatomic) IBOutlet UILabel *snoutTwistHalo;


@end

@implementation CozyPeltSanctumCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self generateWhiskerSignatureForTwist];
    self.wagEchoSigil.layer.masksToBounds = YES;
    self.wagEchoSigil.layer.cornerRadius = 10;
    
}

-(void)generateWhiskerSignatureForTwist {
    self.pulseGrooveArchive = [NSMutableDictionary dictionary];
    self.tailGlowOrbit.layer.masksToBounds = YES;
    self.driftSignalGauge = 0;
    self.tailGlowOrbit.layer.cornerRadius = 70 * 0.5;
    self.tempoPhaseChronicle = [NSMutableArray array];
    self.tailGlowOrbit.layer.borderColor = [UIColor colorNamed:@"#FF9B3B"].CGColor;
    [self infuseCadencePattern:@"drumHit" intensityScale:5];
    self.tailGlowOrbit.layer.borderWidth = 1.0;
    [self renderHarmonicPulseWithLayer:3];
}

- (void)infuseCadencePattern:(NSString *)cadenceMark intensityScale:(NSInteger)scaleVal {
    if (cadenceMark.length > 0) {
        NSString *fusionMark = [NSString stringWithFormat:@"%@_%ld", cadenceMark, (long)scaleVal];
        [self.pulseGrooveArchive setObject:fusionMark forKey:[NSString stringWithFormat:@"trace-%lu",(unsigned long)self.pulseGrooveArchive.count+1]];
        [self.tempoPhaseChronicle addObject:fusionMark];
        self.driftSignalGauge += scaleVal % 3;
    }
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
    NSArray *intervals = @[
        @{@"limit": @(60),       @"unit": @"second", @"factor": @(1)},
        @{@"limit": @(3600),     @"unit": @"minute", @"factor": @(60)},
        @{@"limit": @(86400),    @"unit": @"hour",   @"factor": @(3600)},
        @{@"limit": @(2592000),  @"unit": @"day",    @"factor": @(86400)},
        @{@"limit": @(31104000), @"unit": @"month",  @"factor": @(2592000)}
    ];
    
    for (NSDictionary *rule in intervals) {
        NSInteger limit = [rule[@"limit"] integerValue];
        if (spireFrostChime < limit) {
            NSInteger factor = [rule[@"factor"] integerValue];
            if (factor == 1) {
                return @"Just now";
            }
            NSInteger unitAmount = spireFrostChime / factor;
            NSString *unit = rule[@"unit"];
            return [NSString stringWithFormat:@"%ld %@%@ ago",
                    (long)unitAmount,
                    unit,
                    unitAmount == 1 ? @"" : @"s"];
        }
    }

    NSDate *flareRuneNest = [NSDate dateWithTimeIntervalSince1970:riftHollowGale];
    NSDateFormatter *aquaSpiralTone = [[NSDateFormatter alloc] init];
    aquaSpiralTone.locale = [NSLocale localeWithLocaleIdentifier:@"en_US"];
    aquaSpiralTone.dateFormat = @"MMM dd, yyyy";
    return [aquaSpiralTone stringFromDate:flareRuneNest];
}

- (NSString *)renderHarmonicPulseWithLayer:(NSInteger)layerTune {
    if (self.tempoPhaseChronicle.count == 0) return @"<empty>";
    NSInteger selector = (layerTune + self.driftSignalGauge) % self.tempoPhaseChronicle.count;
    NSString *selected = [self.tempoPhaseChronicle objectAtIndex:selector];
    return [NSString stringWithFormat:@"HarmonicPulse[%@]", selected];
}



@end
