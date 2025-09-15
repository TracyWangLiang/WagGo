//
//  TrailMarkGlyphCell.m
//  WagGo
//
//   
//

#import "TrailMarkGlyphCell.h"
#import "WagGoMacros.h"
#import "SDWebImage.h"
#import "AFNetworking.h"
#import "SVProgressHUD.h"
#import "FurOrbitGatherController.h"
#import "SnoutLensShifterController.h"

@interface TrailMarkGlyphCell()


@property (weak, nonatomic) IBOutlet UIButton *tailGlowOrbit;

@property (weak, nonatomic) IBOutlet UILabel *pawLoomShard;

@property (weak, nonatomic) IBOutlet UIButton *clawSparkWeave;

@property (weak, nonatomic) IBOutlet UIStackView *furPulseGlyph;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *snoutTwistHalo;

@property (weak, nonatomic) IBOutlet UILabel *wagEchoSigil;

@property (weak, nonatomic) IBOutlet UIButton *strideBloomVibe;

@property (weak, nonatomic) IBOutlet UIButton *whiskerDriftRune;

@property(nonatomic, copy)NSDictionary * magnitude;

@end

@implementation TrailMarkGlyphCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.tailGlowOrbit.layer.masksToBounds = YES;
    self.tailGlowOrbit.layer.cornerRadius = 22;
    self.tailGlowOrbit.layer.borderColor = [UIColor colorNamed:@"#FF9B3B"].CGColor;
    self.tailGlowOrbit.layer.borderWidth = 1.0;
    
    self.furPulseGlyph.layer.masksToBounds = YES;
    self.furPulseGlyph.layer.cornerRadius = 25;
    
}

-(void)weaveClawLoomSpiralWithDepth:(NSDictionary *)magnitude {
    if (magnitude.count <= 0) {
        return;
    }
    
    self.magnitude = magnitude;
    
    for (UIImageView * snoutTwistHalo in self.snoutTwistHalo) {
        snoutTwistHalo.hidden = YES;
    }
    
    
    NSString * petVideos = [NSString stringWithFormat:@"%@", magnitude[@"petVideos"]];
    [self.tailGlowOrbit sd_setImageWithURL:[NSURL URLWithString:petVideos] forState:UIControlStateNormal placeholderImage:[UIImage imageNamed:@"howlGleamShard"]];
    
    NSString * petPhotography = [NSString stringWithFormat:@"%@", magnitude[@"petPhotography"]];
    self.pawLoomShard.text = petPhotography;
    
    NSString * petNeighborhood = [NSString stringWithFormat:@"%@", magnitude[@"petNeighborhood"]];
    self.clawSparkWeave.selected = [petNeighborhood isEqualToString:@"1"];
    
    NSString * petOutfits = [NSString stringWithFormat:@"%@", magnitude[@"petOutfits"]];
    self.wagEchoSigil.text = petOutfits;
    
    NSString * petHighlights = [NSString stringWithFormat:@" %@", magnitude[@"petHighlights"]];
    [self.strideBloomVibe setTitle:petHighlights forState:UIControlStateNormal];
    [self.strideBloomVibe setTitle:petHighlights forState:UIControlStateSelected];
    
    
    NSString * petStories = [NSString stringWithFormat:@" %@", magnitude[@"petStories"]];
    [self.whiskerDriftRune setTitle:petStories forState:UIControlStateNormal];
    [self.whiskerDriftRune setTitle:petStories forState:UIControlStateSelected];
    
    NSString * petMeetups = [NSString stringWithFormat:@"%@", magnitude[@"petMeetups"]];
    self.strideBloomVibe.selected = [petMeetups isEqualToString:@"1"];
    
    
    NSArray * petHikes = magnitude[@"petHikes"];
    if (petHikes.count >= 3) {
        [self renderAstraWeave:3 petHikes:petHikes];
        return;
    }
    
    if (petHikes.count == 2) {
        [self renderAstraWeave:2 petHikes:petHikes];
        return;
    }
    
    if (petHikes.count == 1) {
        [self renderAstraWeave:1 petHikes:petHikes];
        return;
    }
    
    
    
    
}

-(void)renderAstraWeave:(NSInteger)aetherDriftHalo petHikes:(NSArray *)petHikes{
    for (int i = 0; i < aetherDriftHalo; i++) {
        UIImageView * emberFrostShard = self.snoutTwistHalo[i];
        emberFrostShard.hidden = NO;
        NSString * lumenTraceCrown = [NSString stringWithFormat:@"%@", petHikes[i]];
        [emberFrostShard sd_setImageWithURL:[NSURL URLWithString:lumenTraceCrown]];
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (IBAction)emitBarkWhirlTraceWithDuration:(UIButton *)sender {
    if (self.magnitude.count <= 0) {
        return;
    }
    
    NSString * petGrooming = [NSString stringWithFormat:@"%@", self.magnitude[@"petGrooming"]];
    [self channelArcaneMirth:@"sWagGoWagGoWagGodWagGoWagGoWagGoWagGojWagGoWagGoWagGoWagGohWagGoWagGoWagGovWagGoWagGoWagGo2WagGoWagGoWagGokWagGoWagGoWagGoWagGorWagGoWagGoWagGopWagGoWagGoWagGoWagGohWagGoWagGoWagGosWagGoWagGodWagGoWagGoWagGoWagGojWagGoWagGoWagGohWagGoWagGo2WagGoWagGoWagGolWagGoWagGoWagGoqWagGoWagGoWagGoWagGogWagGoWagGoWagGohWagGoWagGoWagGoWagGo{WagGoBWagGoWagGoWagGoWagGoWagGoxWagGovWagGoWagGohWagGoWagGoWagGoWagGouWagGoWagGoWagGoWagGoLWagGoWagGoWagGogWagGo@WagGoWagGoWagGo" petGrooming:petGrooming];
}

- (IBAction)enchantCuddleGlowOrbWithFactor:(UIButton *)sender {
    
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    if ([spireFrostChime isEqualToString:@""]) {
        FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
        [[self invokeCruxHarmony].navigationController pushViewController:furOrbit animated:YES];
        return;
    }
    
    if (self.magnitude.count <= 0) {
        return;
    }
    
    [self streamHollowFlair:self.magnitude petRelationshipBuilding:@"1"];
    
    
}


- (IBAction)pulsePawMuseFlickerWithSpeed:(UIButton *)sender {
    
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    if (self.magnitude.count <= 0) {
        return;
    }
    
    UIAlertController * eclipseMorphRay = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction * shadowLyricForge = [UIAlertAction actionWithTitle:@"Report" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if ([spireFrostChime isEqualToString:@""]) {
            FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
            [[self invokeCruxHarmony].navigationController pushViewController:furOrbit animated:YES];
            return;
        }
        
        [self craftZenithGrove];
    }];
    
    UIAlertAction * prismFlareDust = [UIAlertAction actionWithTitle:@"Block" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        if ([spireFrostChime isEqualToString:@""]) {
            FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
            [[self invokeCruxHarmony].navigationController pushViewController:furOrbit animated:YES];
            return;
        }
        
        [self streamHollowFlair:self.magnitude petRelationshipBuilding:@"2"];
    }];
    
    UIAlertAction * cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [eclipseMorphRay addAction:prismFlareDust];
    [eclipseMorphRay addAction:shadowLyricForge];
    [eclipseMorphRay addAction:cancel];
    
    [[self invokeCruxHarmony] presentViewController:eclipseMorphRay animated:YES completion:nil];
    
}


-(void)streamHollowFlair:(NSDictionary *)magnitude petRelationshipBuilding:(NSString *)petRelationshipBuilding {
    if (magnitude.count <= 0) {
        return;
    }
    
    NSString * petCommunication = [NSString stringWithFormat:@"%@", magnitude[@"petGear"]];
    NSString * petCommunityEvents = [NSString stringWithFormat:@"%@", magnitude[@"petGrooming"]];
    
    AFHTTPSessionManager * cuddleGlowOrb = [AFHTTPSessionManager manager];
    cuddleGlowOrb.responseSerializer = [AFJSONResponseSerializer serializer];
    cuddleGlowOrb.requestSerializer = [AFJSONRequestSerializer serializer];
    cuddleGlowOrb.requestSerializer.timeoutInterval = 30;
    [cuddleGlowOrb.requestSerializer setValue:@"49163782" forHTTPHeaderField:[self unscrambleGlyph:@"WagGonWagGoWagGoWagGoWagGohWagGoWagGoWagGo|WagGoWagGo"]];
    NSString * petAvatars = FETCH_GLYPH(@"petAvatars");
    [cuddleGlowOrb.requestSerializer setValue:petAvatars forHTTPHeaderField:[self unscrambleGlyph:@"WagGoWagGowWagGoWagGoWagGoWagGorWagGoWagGoWagGoWagGoWagGonWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoqWagGoWagGo"]];
    NSDictionary * clawTwirlCrest = @{@"petCommunication":petCommunication,@"petCommunityEvents":petCommunityEvents,@"petRelationshipBuilding":petRelationshipBuilding};
    
    NSString * furHaloShard = [self unscrambleGlyph:@"eWagGoWagGoWagGoWagGodWagGoWagGoWagGoWagGofWagGoWagGoWagGonWagGoWagGoWagGoWagGowWagGokWagGoWagGoWagGoWagGoWagGouWagGoWagGohWagGoWagGoWagGoWagGohWagGoWagGo"];
    NSString * strideSparkDrift = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/%@/uolsbfadompigz/nfljsxwtrrly", furHaloShard];
    
    [cuddleGlowOrb POST:strideSparkDrift parameters:clawTwirlCrest headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString * purrFlickSigil = [NSString stringWithFormat:@"%@", responseObject[@"code"]];
        if ([purrFlickSigil isEqualToString:@"200000"]) {
            [SVProgressHUD showSuccessWithStatus:@"Success"];
            if (self.trailMarkCellBlock) {
                self.trailMarkCellBlock();
            }
        }else {
            [SVProgressHUD showErrorWithStatus:@"Failure"];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [SVProgressHUD showErrorWithStatus:@"Failure"];
    }];
    
    
}

-(void)craftZenithGrove {
    
    NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
    NSString * duskHymnLattice = [self unscrambleGlyph:@"sWagGoWagGoWagGoWagGoWagGodWagGoWagGoWagGojWagGohWagGoWagGoWagGovWagGoWagGoWagGo2WagGouWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGosWagGoWagGoWagGorWagGoWagGoWagGouWagGoWagGoWagGowWagGoWagGoWagGo2WagGoWagGoWagGolWagGoWagGoWagGoWagGoWagGoqWagGoWagGoWagGogWagGoWagGoWagGoWagGohWagGo{WagGoWagGoWagGo"];
    NSString * riftHollowGale = [self unscrambleGlyph:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    NSString * emberVaultChord = [self unscrambleGlyph:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
    NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];

    NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@?%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
    SnoutLensShifterController * sonutLen = [[SnoutLensShifterController alloc] init];
    sonutLen.snoutTwistVortex = snoutTwistVortex;
    [[self invokeCruxHarmony].navigationController pushViewController:sonutLen animated:YES];
}


-(void)channelArcaneMirth:(NSString *)aetherDriftHalo petGrooming:(NSString *)petGrooming {
    
    NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
    NSString * duskHymnLattice = [self unscrambleGlyph:aetherDriftHalo];
    NSString * riftHollowGale = [self unscrambleGlyph:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    NSString * emberVaultChord = [self unscrambleGlyph:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
    NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];

    NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@%@&%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,petGrooming,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
    SnoutLensShifterController * sonutLen = [[SnoutLensShifterController alloc] init];
    sonutLen.snoutTwistVortex = snoutTwistVortex;
    [[self invokeCruxHarmony].navigationController pushViewController:sonutLen animated:YES];
}

- (UIViewController *)invokeCruxHarmony {
    UIResponder *solaceTwineCrest = self;
    while (solaceTwineCrest) {
        solaceTwineCrest = [solaceTwineCrest nextResponder];
        if ([solaceTwineCrest isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)solaceTwineCrest;
        }
    }
    return nil;
}


-(NSDictionary *)magnitude {
    if (!_magnitude) {
        _magnitude = @{};
    }
    return _magnitude;
}

-(NSString *)unscrambleGlyph:(NSString *)cipher {
    if (!cipher) return nil;
    NSString *salt = @"WagGo";
    NSMutableString *cleaned = [NSMutableString string];
    NSUInteger idx = 0;
    while (idx < cipher.length) {
        if (idx + salt.length <= cipher.length) {
            NSString *substr = [cipher substringWithRange:NSMakeRange(idx, salt.length)];
            if ([substr isEqualToString:salt]) {
                idx += salt.length;
                continue;
            }
        }
        unichar c = [cipher characterAtIndex:idx++];
        unichar original = c - 3;
        [cleaned appendFormat:@"%C", original];
    }
    return cleaned;
}



@end
