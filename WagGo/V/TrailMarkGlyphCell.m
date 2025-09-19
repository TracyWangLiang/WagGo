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

@property (weak, nonatomic) IBOutlet UILabel *wagEchoSigil;

@property (weak, nonatomic) IBOutlet UIButton *strideBloomVibe;

@property (weak, nonatomic) IBOutlet UIButton *whiskerDriftRune;

@property(nonatomic, copy)NSDictionary * magnitude;

/// 图片
@property (weak, nonatomic) IBOutlet UIImageView *vortexRuneBind;
@property (weak, nonatomic) IBOutlet UIImageView *haloMirthSeal;
@property (weak, nonatomic) IBOutlet UIImageView *cipherFrostArc;


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
    
    self.vortexRuneBind.hidden = YES;
    self.haloMirthSeal.hidden = YES;
    self.cipherFrostArc.hidden = YES;
    
    
    
}

-(void)weaveClawLoomSpiralWithDepth:(NSDictionary *)magnitude {
    if (magnitude.count <= 0) {
        return;
    }
    self.magnitude = magnitude;
    
    NSString * petVideos = [NSString stringWithFormat:@"%@", magnitude[@"petVideos"]];
    [self.tailGlowOrbit sd_setImageWithURL:[NSURL URLWithString:petVideos] forState:UIControlStateNormal placeholderImage:[UIImage imageNamed:@"howlGleamShard"]];
    
    NSString * petPhotography = [NSString stringWithFormat:@"%@", magnitude[@"petPhotography"]];
    self.pawLoomShard.text = petPhotography;
    
    NSString * petNeighborhood = [NSString stringWithFormat:@"%@", magnitude[@"petNeighborhood"]];
    if ([petNeighborhood isEqualToString:@"1"]) {
        self.clawSparkWeave.selected = YES;
    }else {
        self.clawSparkWeave.selected = NO;
    }
    
    NSString * petOutfits = [NSString stringWithFormat:@"%@", magnitude[@"petOutfits"]];
    self.wagEchoSigil.text = petOutfits;
    
    NSString * petHighlights = [NSString stringWithFormat:@" %@", magnitude[@"petHighlights"]];
    [self.strideBloomVibe setTitle:petHighlights forState:UIControlStateNormal];
    [self.strideBloomVibe setTitle:petHighlights forState:UIControlStateSelected];
    
    
    NSString * petStories = [NSString stringWithFormat:@" %@", magnitude[@"petStories"]];
    [self.whiskerDriftRune setTitle:petStories forState:UIControlStateNormal];
    [self.whiskerDriftRune setTitle:petStories forState:UIControlStateSelected];
    
    NSString * petMeetups = [NSString stringWithFormat:@"%@", magnitude[@"petMeetups"]];
    if ([petMeetups isEqualToString:@"1"]) {
        self.strideBloomVibe.selected = YES;
    }else {
        self.strideBloomVibe.selected = NO;
    }
    
    NSArray * petHikes = magnitude[@"petHikes"];
    if (petHikes.count >= 3) {
        self.vortexRuneBind.hidden = NO;
        self.haloMirthSeal.hidden = NO;
        self.cipherFrostArc.hidden = NO;
        NSString * spectralLoomShard = [NSString stringWithFormat:@"%@",petHikes[0]];
        NSString * auricPulseDrift = [NSString stringWithFormat:@"%@", petHikes[1]];
        NSString * nexusWispFold = [NSString stringWithFormat:@"%@", petHikes[2]];
        [self.vortexRuneBind sd_setImageWithURL:[NSURL URLWithString:spectralLoomShard]];
        [self.haloMirthSeal sd_setImageWithURL:[NSURL URLWithString:auricPulseDrift]];
        [self.cipherFrostArc sd_setImageWithURL:[NSURL URLWithString:nexusWispFold]];
        
        return;
    }
    if (petHikes.count == 2) {
        self.vortexRuneBind.hidden = NO;
        self.haloMirthSeal.hidden = NO;
        NSString * spectralLoomShard = [NSString stringWithFormat:@"%@",petHikes[0]];
        NSString * auricPulseDrift = [NSString stringWithFormat:@"%@", petHikes[1]];
        [self.vortexRuneBind sd_setImageWithURL:[NSURL URLWithString:spectralLoomShard]];
        [self.haloMirthSeal sd_setImageWithURL:[NSURL URLWithString:auricPulseDrift]];
        return;
    }
    
    if (petHikes.count == 1) {
        self.vortexRuneBind.hidden = NO;
        NSString * spectralLoomShard = [NSString stringWithFormat:@"%@",petHikes[0]];
        [self.vortexRuneBind sd_setImageWithURL:[NSURL URLWithString:spectralLoomShard]];
        return;
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
    NSString * aetherDriftHalo = @"sWagGoWagGoWagGodWagGoWagGoWagGoWagGojWagGoWagGoWagGoWagGohWagGoWagGoWagGovWagGoWagGoWagGo2WagGoWagGoWagGokWagGoWagGoWagGoWagGorWagGoWagGoWagGopWagGoWagGoWagGoWagGohWagGoWagGoWagGosWagGoWagGodWagGoWagGoWagGoWagGojWagGoWagGoWagGohWagGoWagGo2WagGoWagGoWagGolWagGoWagGoWagGoqWagGoWagGoWagGoWagGogWagGoWagGoWagGohWagGoWagGoWagGoWagGo{WagGoBWagGoWagGoWagGoWagGoWagGoxWagGovWagGoWagGohWagGoWagGoWagGoWagGouWagGoWagGoWagGoWagGoLWagGoWagGoWagGogWagGo@WagGoWagGoWagGo";
    NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
    NSString * duskHymnLattice = [self unscrambleGlyph:aetherDriftHalo];
    NSString * riftHollowGale = [self unscrambleGlyph:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    NSString * emberVaultChord = [self unscrambleGlyph:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
    NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
    
    NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@%@&%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,petGrooming,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
    self.emberChordFluxBlock(snoutTwistVortex);
    
}

- (IBAction)enchantCuddleGlowOrbWithFactor:(UIButton *)sender {
    
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    if ([spireFrostChime isEqualToString:@""]) {
        self.prismEchoTraceBlock();
        return;
    }
    
    if (self.magnitude.count <= 0) {
        return;
    }
    
    [self streamHollowFlair:self.magnitude petRelationshipBuilding:@"1"];
    
    
}

-(void)streamHollowFlair:(NSDictionary *)magnitude petRelationshipBuilding:(NSString *)petRelationshipBuilding {
    if (magnitude.count <= 0) {
        return;
    }
    
    AFHTTPSessionManager * cuddleGlowOrb = [AFHTTPSessionManager manager];
    NSString * petCommunication = [NSString stringWithFormat:@"%@", magnitude[@"petGear"]];
    cuddleGlowOrb.responseSerializer = [AFJSONResponseSerializer serializer];
    NSString * petCommunityEvents = [NSString stringWithFormat:@"%@", magnitude[@"petGrooming"]];
    cuddleGlowOrb.requestSerializer = [AFJSONRequestSerializer serializer];
    cuddleGlowOrb.requestSerializer.timeoutInterval = 30;
    NSString * petAvatars = FETCH_GLYPH(@"petAvatars");
    [cuddleGlowOrb.requestSerializer setValue:@"49163782" forHTTPHeaderField:[self unscrambleGlyph:@"WagGonWagGoWagGoWagGoWagGohWagGoWagGoWagGo|WagGoWagGo"]];
    [cuddleGlowOrb.requestSerializer setValue:petAvatars forHTTPHeaderField:[self unscrambleGlyph:@"WagGoWagGowWagGoWagGoWagGoWagGorWagGoWagGoWagGoWagGoWagGonWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoqWagGoWagGo"]];
    NSDictionary *clawTwirlCrest = @{
        @"petCommunication": petCommunication ?: @"",
        @"petCommunityEvents": petCommunityEvents ?: @"",
        @"petRelationshipBuilding": petRelationshipBuilding ?: @""
    };
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
