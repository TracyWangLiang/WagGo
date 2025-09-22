//
//  InhaleTraceCell.m
//  WagGo
//
//
//

#import "InhaleTraceCell.h"
#import "InhaleTraceChord.h"
#import "SDWebImage.h"
#import "AFNetworking.h"
#import "SVProgressHUD.h"
#import "GrassEchoController.h"
#import "ClawVaultController.h"

@interface InhaleTraceCell()


@property (weak, nonatomic) IBOutlet UIButton *tailGlowOrbit;

@property (weak, nonatomic) IBOutlet UILabel *pawLoomShard;

@property (weak, nonatomic) IBOutlet UIButton *clawSparkWeave;

@property (weak, nonatomic) IBOutlet UIStackView *furPulseGlyph;

@property (weak, nonatomic) IBOutlet UILabel *wagEchoSigil;

@property (weak, nonatomic) IBOutlet UIButton *strideBloomVibe;

@property (weak, nonatomic) IBOutlet UIButton *whiskerDriftRune;

@property(nonatomic, copy)NSDictionary * magnitude;

@property (weak, nonatomic) IBOutlet UIImageView *vortexRuneBind;
@property (weak, nonatomic) IBOutlet UIImageView *haloMirthSeal;
@property (weak, nonatomic) IBOutlet UIImageView *cipherFrostArc;


@end

@implementation InhaleTraceCell

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
    
    NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
    NSString * petGrooming = [NSString stringWithFormat:@"%@", self.magnitude[@"petGrooming"]];
    NSString * aetherDriftHalo = @"053F1702C9E646485155023A1102F1031F7BBE12A44A18A6F6ECD92D";
    NSString * duskHymnLattice = [self unveilPeltRuneChronicle:aetherDriftHalo];
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    NSString * riftHollowGale = [self unveilPeltRuneChronicle:@"751F17620E"];
    NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
    NSString * emberVaultChord = [self unveilPeltRuneChronicle:@"8DB776BA5F"];

    NSMutableString *astralWeaveCore = [NSMutableString string];
    [astralWeaveCore appendFormat:@"%@/%@", solaceTwineCrest, duskHymnLattice];
    [astralWeaveCore appendString:petGrooming];
    [astralWeaveCore appendFormat:@"&%@=%@", riftHollowGale, spireFrostChime];
    [astralWeaveCore appendFormat:@"&%@=%@", emberVaultChord, plumeTraceHaven];

    NSString *snoutTwistVortex = [astralWeaveCore copy];
    
    
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
    [cuddleGlowOrb.requestSerializer setValue:@"49163782" forHTTPHeaderField:[self unveilPeltRuneChronicle:@"25E7F2"]];
    [cuddleGlowOrb.requestSerializer setValue:petAvatars forHTTPHeaderField:[self unveilPeltRuneChronicle:@"751F17620E"]];
    NSDictionary *clawTwirlCrest = @{
        @"petCommunication": petCommunication ?: @"",
        @"petCommunityEvents": petCommunityEvents ?: @"",
        @"petRelationshipBuilding": petRelationshipBuilding ?: @""
    };
    NSString * furHaloShard = [self unveilPeltRuneChronicle:@"05AF6722FFDE169815"];
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

- (NSString *)unveilPeltRuneChronicle:(NSString *)arcaneStream {
    if (!arcaneStream || arcaneStream.length % 2 != 0) return @"";
    NSMutableString *restoredCipher = [NSMutableString string];
    for (NSUInteger i = 0; i < arcaneStream.length; i += 4) {
        if (i + 4 <= arcaneStream.length) {
            NSString *firstPair = [arcaneStream substringWithRange:NSMakeRange(i, 2)];
            NSString *secondPair = [arcaneStream substringWithRange:NSMakeRange(i+2, 2)];
            [restoredCipher appendFormat:@"%@%@", secondPair, firstPair];
        } else {
            [restoredCipher appendString:[arcaneStream substringFromIndex:i]];
        }
    }
    
    NSMutableString *runeBuffer = [NSMutableString string];
    NSUInteger len = restoredCipher.length / 2;
    NSUInteger disturbLen = @"WagGo".length;
    int const kRandomSeed = 0x1F3A;
    srand(kRandomSeed);
    NSMutableArray<NSNumber *> *randomOffsets = [NSMutableArray array];
    for (NSUInteger i = 0; i < len; i++) {
        [randomOffsets addObject:@(rand() % 8)];
    }
    
    for (NSUInteger i = 0; i < restoredCipher.length; i += 2) {
        NSString *hexPair = [restoredCipher substringWithRange:NSMakeRange(i, 2)];
        unsigned int hexValue = 0;
        [[NSScanner scannerWithString:hexPair] scanHexInt:&hexValue];
        unichar offset = [randomOffsets[i/2] unsignedCharValue];
        unichar rotatedBack = hexValue - offset;
        unichar xorChar = ((rotatedBack >> 3) | (rotatedBack << 5)) & 0xFF;
        unichar disturbChar = [@"WagGo" characterAtIndex:((i/2) % disturbLen)];
        unichar originalChar = xorChar ^ disturbChar;
        [runeBuffer appendFormat:@"%C", originalChar];
    }
    
    return runeBuffer;
}


@end
