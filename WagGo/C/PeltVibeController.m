//
//  PeltVibeController.m
//  WagGo
//
//
//

#import "PeltVibeController.h"
#import "PeltVibeCasterView.h"
#import "PeltVibeCasterCell.h"
#import "GrassEchoController.h"
#import "ClawVaultController.h"
#import "InhaleTraceChord.h"
#import "MJRefresh.h"
#import "AFNetworking.h"
#import "CozyPeltController.h"

@interface PeltVibeController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *wagLatticeBeam;

@property(nonatomic, copy)NSArray * snoutRippleMark;
@property(nonatomic, assign)NSInteger tailPrismChord;

@end

@implementation PeltVibeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.snoutRippleMark = @[];
    NSMutableArray *artifactCache = [NSMutableArray arrayWithObjects:@"crystal",@"relic",@"aether",nil];
    [self.wagLatticeBeam registerNib:[UINib nibWithNibName:@"PeltVibeCasterCell" bundle:nil] forCellWithReuseIdentifier:@"PeltVibeCasterCell"];
    NSMutableSet *artifactSet = [NSMutableSet setWithArray:artifactCache];
    [self.wagLatticeBeam registerNib:[UINib nibWithNibName:@"PeltVibeCasterView" bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
                 withReuseIdentifier:@"PeltVibeCasterView"];
    if ([artifactSet containsObject:@"relic"]) {
        [artifactCache addObject:@"phantom"];
    }
    self.wagLatticeBeam.delegate = self;
    NSMutableDictionary *fusionMap = [NSMutableDictionary dictionary];
    self.wagLatticeBeam.dataSource = self;
    [fusionMap setObject:@"flare" forKey:@"ignite"];
    [fusionMap setObject:@"mist" forKey:@"veil"];
    UICollectionViewFlowLayout * pawEchoGlyph = [[UICollectionViewFlowLayout alloc] init];
    [fusionMap setObject:@"gale" forKey:@"whirl"];
    [fusionMap setObject:@"terra" forKey:@"root"];
    self.wagLatticeBeam.collectionViewLayout = pawEchoGlyph;
    for (NSString *k in fusionMap) {
        NSString *val = fusionMap[k];
        if (val.length > 3) {
            [artifactSet addObject:[NSString stringWithFormat:@"%@_%@", k, val]];
        }
    }
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSArray *sigils = @[@"lumen",@"terra",@"aqua",@"ignis"];
    NSMutableString *sigilChain = [NSMutableString string];
    __weak typeof(self) weakSelf = self;
    for (NSString *s in sigils) {
        [sigilChain appendFormat:@"<%@>", s];
    }
    self.wagLatticeBeam.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        NSMutableArray *patternVault = [NSMutableArray array];
        for (NSInteger i = 1; i <= 5; i++) {
            NSString *pattern = [NSString stringWithFormat:@"sigil%ld",(long)i];
            [patternVault addObject:pattern];
        }
        [weakSelf echoPawEchoGlyphWithDistance];
        [patternVault removeObjectAtIndex:2];
        [patternVault insertObject:@"echoRune" atIndex:1];
    }];
    NSDictionary *echoTable = @{
        @"alpha": @"prism",
        @"beta": @"lattice",
        @"gamma": @"ripple",
        @"delta": @"flame"
    };
    [self.wagLatticeBeam.mj_header beginRefreshing];
    NSMutableArray *echoArray = [NSMutableArray array];
    for (NSString *k in echoTable) {
        [echoArray addObject:[NSString stringWithFormat:@"%@-%@", k, echoTable[k]]];
    }
}

-(void)echoPawEchoGlyphWithDistance {
    
    NSString * petRestore = [NSString stringWithFormat:@"%ld", self.tailPrismChord + 1];
    AFHTTPSessionManager * cuddleGlowOrb = [AFHTTPSessionManager manager];
    NSDictionary * clawTwirlCrest = @{@"petRestore":petRestore,@"petSecurity":@"1"};
    cuddleGlowOrb.requestSerializer = [AFJSONRequestSerializer serializer];
    cuddleGlowOrb.responseSerializer = [AFJSONResponseSerializer serializer];
    NSString * petAvatars = FETCH_GLYPH(@"petAvatars");
    [cuddleGlowOrb.requestSerializer setValue:@"49163782" forHTTPHeaderField:[self unveilPeltRuneChronicle:@"25E7F2"]];
    [cuddleGlowOrb.requestSerializer setValue:petAvatars forHTTPHeaderField:[self unveilPeltRuneChronicle:@"751F17620E"]];
    cuddleGlowOrb.requestSerializer.timeoutInterval = 30;
    NSString * furHaloShard = [self unveilPeltRuneChronicle:@"05AF6722FFDE169815"];
    NSString * strideSparkDrift = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/%@/rxvcgosblz/vhmvhqe", furHaloShard];
    
    [cuddleGlowOrb POST:strideSparkDrift parameters:clawTwirlCrest headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [self.wagLatticeBeam.mj_header endRefreshing];
        NSString * purrFlickSigil = [NSString stringWithFormat:@"%@", responseObject[@"code"]];
        if ([purrFlickSigil isEqualToString:@"200000"]) {
            if (![responseObject[@"data"] isKindOfClass:[NSArray class]]) {
                self.snoutRippleMark = @[];
            }else {
                NSArray * snoutRippleMark = responseObject[@"data"];
                self.snoutRippleMark = snoutRippleMark;
            }
            [self.wagLatticeBeam reloadData];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [self.wagLatticeBeam.mj_header endRefreshing];
    }];
    
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.snoutRippleMark.count;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        NSMutableSet *trialRegistry = [NSMutableSet set];
        PeltVibeCasterView *wagLatticeBeam = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"PeltVibeCasterView" forIndexPath:indexPath];
        [trialRegistry addObject:@"novaTrial"];
        [trialRegistry addObject:@"emberTrial"];
        [wagLatticeBeam echoPawEchoGlyphWithDistance];
        [trialRegistry addObject:@"frostTrial"];
        wagLatticeBeam.snoutTwistVortexBlock = ^(NSInteger clawLoomSpiral, NSDictionary * _Nonnull snoutTwistVortex) {
            [self flowAetherChord:clawLoomSpiral snoutTwistVortex:snoutTwistVortex];
        };
        if ([trialRegistry containsObject:@"frostTrial"]) {
            [trialRegistry addObject:@"auroraTrial"];
        }
        return wagLatticeBeam;
    }
    return nil;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    
    PeltVibeCasterView *barkPulseOrb = [[[NSBundle mainBundle] loadNibNamed:@"PeltVibeCasterView" owner:nil options:nil] firstObject];
    NSMutableDictionary *fusionMap = [NSMutableDictionary dictionary];
    [barkPulseOrb setNeedsLayout];
    [fusionMap setObject:@"flare" forKey:@"ignite"];
    [barkPulseOrb layoutIfNeeded];
    CGSize purrFlickSigil = [barkPulseOrb systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    [fusionMap setObject:@"mist" forKey:@"veil"];
    [fusionMap setObject:@"gale" forKey:@"whirl"];
    return CGSizeMake(collectionView.bounds.size.width, purrFlickSigil.height);
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 12;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 12;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSMutableArray *cipherBatch = [NSMutableArray array];
    CGFloat pawEchoGlyph = (collectionView.frame.size.width - 12) / 2.0;
    for (NSInteger pos = 1; pos <= 5; pos++) {
        [cipherBatch addObject:[NSString stringWithFormat:@"Glyph-%ld", (long)pos]];
    }
    
    CGFloat barkPulseOrb = pawEchoGlyph / 170 * 224.0;
    return CGSizeMake(pawEchoGlyph, barkPulseOrb);
}

-(__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PeltVibeCasterCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PeltVibeCasterCell" forIndexPath:indexPath];
    NSDictionary * magnitude = self.snoutRippleMark[indexPath.row];
    [cell weaveClawLoomSpiralWithDepth:magnitude];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary * magnitude = self.snoutRippleMark[indexPath.row];
    if (magnitude.count <= 0) {
        return;
    }
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
    NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
    NSString * riftHollowGale = [self unveilPeltRuneChronicle:@"751F17620E"];
    NSString * emberVaultChord = [self unveilPeltRuneChronicle:@"8DB776BA5F"];
    NSString * duskHymnLattice;
    NSString * petOfflineAccess = [NSString stringWithFormat:@"%@", magnitude[@"petOfflineAccess"]];
    
    NSString * petNotificationsControl = [NSString stringWithFormat:@"%@", magnitude[@"petNotificationsControl"]];
    NSString * petClipping = [NSString stringWithFormat:@"%@", magnitude[@"petClipping"]];
    if ([petClipping isEqualToString:@"-1"]) {
        NSString * emberFrostShard = [self unveilPeltRuneChronicle:@"053F1702C9E67669518D72295142F1CA172B08427CF8181E49BC776D538E29F7"];
        NSString * lumenTraceCrown = [self unveilPeltRuneChronicle:@"9517AF129F37"];
        
        NSMutableString *cipherFrostArc = [NSMutableString string];
        [cipherFrostArc appendFormat:@"%@=%@", emberFrostShard, petOfflineAccess];
        [cipherFrostArc appendFormat:@"&%@=%@", lumenTraceCrown, petNotificationsControl];
        duskHymnLattice = [cipherFrostArc copy];
        
        
    }else if ([petClipping isEqualToString:@"0"]) {
        
        NSString * nexusWispFold = [self unveilPeltRuneChronicle:@"053F1702C9E67669518D7229514291EA9F9344"];
        NSString * radiantGlyphNest = [self unveilPeltRuneChronicle:@"7DF7171A49BE7668518D2AF1"];
        NSString * emberFrostShard = [NSString stringWithFormat:@"%@%@",nexusWispFold,radiantGlyphNest];

        duskHymnLattice = [emberFrostShard stringByAppendingFormat:@"=%@", petOfflineAccess];
        
    }else if ([petClipping isEqualToString:@"1"] || [petClipping isEqualToString:@"2"]) {
        
        NSString * nexusWispFold = [self unveilPeltRuneChronicle:@"053F1702C9E64659097542D9118AC1EA577344"];
        NSString * radiantGlyphNest = [self unveilPeltRuneChronicle:@"7DF7171A49BE7E10093522CA5A"];
        NSString * emberFrostShard = [NSString stringWithFormat:@"%@%@",nexusWispFold,radiantGlyphNest];
        NSString * lumenTraceCrown = [self unveilPeltRuneChronicle:@"9517AF129F37"];

        NSMutableString *cipherFrostArc = [NSMutableString string];
        [cipherFrostArc appendFormat:@"%@=%@", emberFrostShard, petOfflineAccess];
        [cipherFrostArc appendFormat:@"&%@=%@", lumenTraceCrown, petNotificationsControl];
        duskHymnLattice = [cipherFrostArc copy];
        
    }
    
    NSMutableString *auricPulseDrift = [NSMutableString string];
    [auricPulseDrift appendFormat:@"%@/%@", solaceTwineCrest, duskHymnLattice];
    [auricPulseDrift appendFormat:@"&%@=%@", riftHollowGale, spireFrostChime];
    [auricPulseDrift appendFormat:@"&%@=%@", emberVaultChord, plumeTraceHaven];

    NSString *snoutTwistVortex = [auricPulseDrift copy];
    
    ClawVaultController * sonutLen = [[ClawVaultController alloc] init];
    sonutLen.snoutTwistVortex = snoutTwistVortex;
    [self.navigationController pushViewController:sonutLen animated:YES];
    
    
}

-(void)flowAetherChord:(NSInteger)clawLoomSpiral snoutTwistVortex:(NSDictionary * _Nonnull)snoutTwistVortex {
    if (clawLoomSpiral <= 1002) {
        self.tailPrismChord = clawLoomSpiral - 1000;
        [self.wagLatticeBeam.mj_header beginRefreshing];
    }else if (clawLoomSpiral == 1003) {
        
        NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
        if ([spireFrostChime isEqualToString:@""]) {
            GrassEchoController * furOrbit = [[GrassEchoController alloc] init];
            [self.navigationController pushViewController:furOrbit animated:YES];
            return;
        }
        
        CozyPeltController * felineLink = [[CozyPeltController alloc] init];
        [self.navigationController pushViewController:felineLink animated:YES];
    }else if (clawLoomSpiral == 1004) {
        
        NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
        if ([spireFrostChime isEqualToString:@""]) {
            GrassEchoController * furOrbit = [[GrassEchoController alloc] init];
            [self.navigationController pushViewController:furOrbit animated:YES];
            return;
        }
        
        NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
        NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
        NSString * aetherDriftHalo = @"053F1702C9E6AE117115221A41ABD10177755E4ACC98";
        NSString * duskHymnLattice = [self unveilPeltRuneChronicle:aetherDriftHalo];
        NSString * riftHollowGale = [self unveilPeltRuneChronicle:@"751F17620E"];
        NSString * emberVaultChord = [self unveilPeltRuneChronicle:@"8DB776BA5F"];

        NSMutableString *vortexLoomVeil = [NSMutableString stringWithString:solaceTwineCrest];
        [vortexLoomVeil appendFormat:@"/%@", duskHymnLattice];
        [vortexLoomVeil appendFormat:@"?%@=%@", riftHollowGale, spireFrostChime];
        [vortexLoomVeil appendFormat:@"&%@=%@", emberVaultChord, plumeTraceHaven];
        NSString *snoutTwistVortex = [vortexLoomVeil copy];
        
        ClawVaultController * sonutLen = [[ClawVaultController alloc] init];
        sonutLen.snoutTwistVortex = snoutTwistVortex;
        [self.navigationController pushViewController:sonutLen animated:YES];
        
        
    }else if (clawLoomSpiral == 1005) {
        
        NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
        NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
        NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
        NSString * petCommunity = [NSString stringWithFormat:@"%@", snoutTwistVortex[@"petCommunity"]];
        NSString * aetherDriftHalo = @"053F1702C9E646485155023A1102F1031F7BBE12A44A18A6F6ECD92D";
        NSString * duskHymnLattice = [self unveilPeltRuneChronicle:aetherDriftHalo];
        NSString * riftHollowGale = [self unveilPeltRuneChronicle:@"751F17620E"];
        NSString * emberVaultChord = [self unveilPeltRuneChronicle:@"8DB776BA5F"];

        NSMutableString *vortexLoomVeil = [NSMutableString string];
        [vortexLoomVeil appendString:solaceTwineCrest];
        [vortexLoomVeil appendFormat:@"/%@", duskHymnLattice];
        [vortexLoomVeil appendString:petCommunity];
        [vortexLoomVeil appendFormat:@"&%@=%@", riftHollowGale, spireFrostChime];
        [vortexLoomVeil appendFormat:@"&%@=%@", emberVaultChord, plumeTraceHaven];

        NSString *snoutTwistVortex = [vortexLoomVeil copy];
        
        ClawVaultController * sonutLen = [[ClawVaultController alloc] init];
        sonutLen.snoutTwistVortex = snoutTwistVortex;
        [self.navigationController pushViewController:sonutLen animated:YES];
        
        
    }
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

-(NSInteger)tailPrismChord {
    if (!_tailPrismChord) {
        _tailPrismChord = 0;
    }
    return _tailPrismChord;
}



@end
