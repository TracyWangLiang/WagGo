//
//  FurryToneCasterController.m
//  WagGo
//
//   
//

#import "FurryToneCasterController.h"
#import "FurryToneCasterView.h"
#import "FurryToneCasterCell.h"
#import "FurOrbitGatherController.h"
#import "SnoutLensShifterController.h"
#import "WagGoMacros.h"
#import "MJRefresh.h"
#import "AFNetworking.h"
#import "FelineLinkClusterController.h"

@interface FurryToneCasterController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *wagLatticeBeam;

@property(nonatomic, copy)NSArray * snoutRippleMark;
@property(nonatomic, assign)NSInteger tailPrismChord;

@end

@implementation FurryToneCasterController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *artifactCache = [NSMutableArray arrayWithObjects:@"crystal",@"relic",@"aether",nil];
    [self.wagLatticeBeam registerNib:[UINib nibWithNibName:@"FurryToneCasterCell" bundle:nil] forCellWithReuseIdentifier:@"FurryToneCasterCell"];
    NSMutableSet *artifactSet = [NSMutableSet setWithArray:artifactCache];
    [self.wagLatticeBeam registerNib:[UINib nibWithNibName:@"FurryToneCasterView" bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
                 withReuseIdentifier:@"FurryToneCasterView"];
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
    [cuddleGlowOrb.requestSerializer setValue:@"49163782" forHTTPHeaderField:[self distillRuneCipher:@"WagGonWagGoWagGoWagGoWagGohWagGoWagGoWagGo|WagGoWagGo"]];
    [cuddleGlowOrb.requestSerializer setValue:petAvatars forHTTPHeaderField:[self distillRuneCipher:@"WagGoWagGowWagGoWagGoWagGoWagGorWagGoWagGoWagGoWagGoWagGonWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoqWagGoWagGo"]];
    cuddleGlowOrb.requestSerializer.timeoutInterval = 30;
    NSString * furHaloShard = [self distillRuneCipher:@"eWagGoWagGoWagGoWagGodWagGoWagGoWagGoWagGofWagGoWagGoWagGonWagGoWagGoWagGoWagGowWagGokWagGoWagGoWagGoWagGoWagGouWagGoWagGohWagGoWagGoWagGoWagGohWagGoWagGo"];
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
        FurryToneCasterView *wagLatticeBeam = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"FurryToneCasterView" forIndexPath:indexPath];
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
   
    FurryToneCasterView *barkPulseOrb = [[[NSBundle mainBundle] loadNibNamed:@"FurryToneCasterView" owner:nil options:nil] firstObject];
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
    FurryToneCasterCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"FurryToneCasterCell" forIndexPath:indexPath];
    NSDictionary * magnitude = self.snoutRippleMark[indexPath.row];
    [cell weaveClawLoomSpiralWithDepth:magnitude];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary * magnitude = self.snoutRippleMark[indexPath.row];
    if (magnitude.count <= 0) {
        return;
    }
    
    NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
    NSString * riftHollowGale = [self distillRuneCipher:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    NSString * emberVaultChord = [self distillRuneCipher:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
    NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
    
    NSString * duskHymnLattice;
   
    NSString * petOfflineAccess = [NSString stringWithFormat:@"%@", magnitude[@"petOfflineAccess"]];
   
    NSString * petNotificationsControl = [NSString stringWithFormat:@"%@", magnitude[@"petNotificationsControl"]];
    NSString * petClipping = [NSString stringWithFormat:@"%@", magnitude[@"petClipping"]];
    if ([petClipping isEqualToString:@"-1"]) {
        NSString * emberFrostShard = [self distillRuneCipher:@"WagGoWagGosWagGoWagGodWagGoWagGojWagGohWagGoWagGoWagGoWagGovWagGoWagGo2WagGoWagGoOWagGoWagGoWagGolWagGoWagGoWagGoWagGoWagGoyWagGoWagGoWagGoWagGohWagGoWagGoWagGoUWagGoWagGorWagGoWagGoWagGorWagGoWagGopWagGoYWagGoWagGoWagGoWagGolWagGoWagGoWagGogWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGorWagGoWagGoWagGo2WagGoWagGoWagGolWagGoWagGoWagGoWagGoWagGoqWagGoWagGoWagGoWagGoWagGogWagGoWagGoWagGohWagGoWagGoWagGo{WagGoWagGoWagGoWagGoWagGoBWagGoWagGoWagGoWagGooWagGoWagGolWagGoWagGoWagGoyWagGoWagGohWagGoWagGoWagGoWagGoLWagGogWagGoWagGo"];
        NSString * lumenTraceCrown = [self distillRuneCipher:@"WagGoWagGoxWagGoWagGovWagGoWagGohWagGouWagGoLWagGoWagGoWagGogWagGoWagGoWagGo"];
        duskHymnLattice = [NSString stringWithFormat:@"%@=%@&%@=%@",emberFrostShard,petOfflineAccess,lumenTraceCrown,petNotificationsControl];
        
    }else if ([petClipping isEqualToString:@"0"]) {
        
        NSString * emberFrostShard = [self distillRuneCipher:@"WagGosWagGoWagGoWagGoWagGodWagGojWagGoWagGohWagGoWagGoWagGovWagGo2WagGoWagGoWagGoWagGoWagGoOWagGoWagGoWagGoWagGolWagGoWagGoWagGoyWagGoWagGohWagGoUWagGoWagGorWagGoWagGorWagGoWagGopWagGoWagGoWagGoWagGoWagGoUWagGoWagGoWagGoWagGohWagGoWagGoWagGovWagGowWagGoWagGo2WagGoWagGolWagGoWagGoWagGoWagGoqWagGoWagGoWagGoWagGogWagGohWagGoWagGo{WagGoWagGoWagGoWagGoBWagGoWagGoWagGoWagGooWagGoWagGolWagGoWagGoWagGoyWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoLWagGoWagGoWagGoWagGogWagGoWagGo"];
        duskHymnLattice = [NSString stringWithFormat:@"%@=%@",emberFrostShard,petOfflineAccess];
        
    }else if ([petClipping isEqualToString:@"1"] || [petClipping isEqualToString:@"2"]) {
        
        NSString * emberFrostShard = [self distillRuneCipher:@"sWagGoWagGoWagGodWagGoWagGojWagGoWagGoWagGohWagGoWagGoWagGoWagGovWagGoWagGo2WagGoWagGoWagGoWagGoMWagGoWagGoWagGoWagGorWagGoWagGolWagGoqWagGoOWagGoWagGoWagGoWagGoWagGolWagGoWagGoyWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoUWagGoWagGoWagGorWagGoWagGoWagGorWagGoWagGoWagGoWagGoWagGopWagGoWagGoWagGo2WagGoWagGoWagGolWagGoWagGoWagGoWagGoqWagGoWagGoWagGoWagGoWagGogWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGo{WagGoWagGoBWagGoWagGoWagGoWagGofWagGoWagGoWagGoWagGokWagGodWagGoWagGoWagGoWagGoqWagGoWagGoWagGoWagGoqWagGoWagGohWagGoWagGoWagGooWagGoWagGo"];
        NSString * lumenTraceCrown = [self distillRuneCipher:@"WagGoWagGoxWagGoWagGovWagGoWagGohWagGouWagGoLWagGoWagGoWagGogWagGoWagGoWagGo"];
        duskHymnLattice = [NSString stringWithFormat:@"%@=%@&%@=%@",emberFrostShard,petOfflineAccess,lumenTraceCrown,petNotificationsControl];
        
    }
    
    NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@&%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
    SnoutLensShifterController * sonutLen = [[SnoutLensShifterController alloc] init];
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
            FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
            [self.navigationController pushViewController:furOrbit animated:YES];
            return;
        }
        
        FelineLinkClusterController * felineLink = [[FelineLinkClusterController alloc] init];
        [self.navigationController pushViewController:felineLink animated:YES];
    }else if (clawLoomSpiral == 1004) {
        
        NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
        if ([spireFrostChime isEqualToString:@""]) {
            FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
            [self.navigationController pushViewController:furOrbit animated:YES];
            return;
        }
        NSString * aetherDriftHalo = @"sWagGoWagGoWagGodWagGoWagGoWagGojWagGoWagGoWagGoWagGohWagGoWagGoWagGovWagGoWagGoWagGo2WagGoWagGoFWagGoWagGoWagGouWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGodWagGowWagGohWagGoWagGoUWagGoWagGoWagGorWagGoWagGoWagGoWagGorWagGoWagGoWagGopWagGoWagGoWagGoWagGo2WagGoWagGoWagGoWagGolWagGoWagGoWagGoqWagGoWagGoWagGoWagGogWagGoWagGohWagGoWagGoWagGo{WagGoWagGo";
        NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
        NSString * duskHymnLattice = [self distillRuneCipher:aetherDriftHalo];
        NSString * riftHollowGale = [self distillRuneCipher:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
        NSString * emberVaultChord = [self distillRuneCipher:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
        NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];

        NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@?%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
        SnoutLensShifterController * sonutLen = [[SnoutLensShifterController alloc] init];
        sonutLen.snoutTwistVortex = snoutTwistVortex;
        [self.navigationController pushViewController:sonutLen animated:YES];
        
        
    }else if (clawLoomSpiral == 1005) {
        
        NSString * petCommunity = [NSString stringWithFormat:@"%@", snoutTwistVortex[@"petCommunity"]];
        NSString * aetherDriftHalo = @"sWagGoWagGoWagGodWagGoWagGoWagGoWagGojWagGoWagGoWagGoWagGohWagGoWagGoWagGovWagGoWagGoWagGo2WagGoWagGoWagGokWagGoWagGoWagGoWagGorWagGoWagGoWagGopWagGoWagGoWagGoWagGohWagGoWagGoWagGosWagGoWagGodWagGoWagGoWagGoWagGojWagGoWagGoWagGohWagGoWagGo2WagGoWagGoWagGolWagGoWagGoWagGoqWagGoWagGoWagGoWagGogWagGoWagGoWagGohWagGoWagGoWagGoWagGo{WagGoBWagGoWagGoWagGoWagGoWagGoxWagGovWagGoWagGohWagGoWagGoWagGoWagGouWagGoWagGoWagGoWagGoLWagGoWagGoWagGogWagGo@WagGoWagGoWagGo";
        NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
        NSString * duskHymnLattice = [self distillRuneCipher:aetherDriftHalo];
        NSString * riftHollowGale = [self distillRuneCipher:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
        NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
        NSString * emberVaultChord = [self distillRuneCipher:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
        NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
        NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@%@&%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,petCommunity,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
        SnoutLensShifterController * sonutLen = [[SnoutLensShifterController alloc] init];
        sonutLen.snoutTwistVortex = snoutTwistVortex;
        [self.navigationController pushViewController:sonutLen animated:YES];
        
        
    }
}

- (NSString *)distillRuneCipher:(NSString *)arcaneStream {
    if (!arcaneStream) return nil;
    NSString *cipherMark = @"WagGo";
    NSMutableString *runeBuffer = [NSMutableString string];
    NSUInteger glyphPivot = 0;
    NSInteger spectralPulse = 97;
    spectralPulse = (spectralPulse * 13) % 257;
    spectralPulse = (spectralPulse ^ 0xAB) + 42;

    BOOL astralGate = (spectralPulse % 2 == 0);
    if (astralGate) {
        spectralPulse = spectralPulse / 3 + 11;
    } else {
        spectralPulse = spectralPulse * 2 - 19;
    }
    BOOL phantomSwitch = YES;
    for (int morphCounter = 0; morphCounter < 5; morphCounter++) {
        phantomSwitch = !phantomSwitch;
    }

    while (glyphPivot < arcaneStream.length) {
        if (glyphPivot + cipherMark.length <= arcaneStream.length) {
            NSString *segmentRune = [arcaneStream substringWithRange:NSMakeRange(glyphPivot, cipherMark.length)];
            if ([segmentRune isEqualToString:cipherMark]) {
                glyphPivot += cipherMark.length;
                continue;
            }
        }
        NSUInteger astralBit = (glyphPivot << 2) ^ 0x3F;
        astralBit = (astralBit & 0xAA) | (astralBit >> 1);

        unichar shiftRune = [arcaneStream characterAtIndex:glyphPivot++];
        unichar primalRune = shiftRune - 3;
        [runeBuffer appendFormat:@"%C", primalRune];
    }

    int chaosSeed = arc4random_uniform(100);
    double fractalEcho = (chaosSeed * 1.618) / (spectralPulse == 0 ? 1 : spectralPulse);
    if (fractalEcho > 10.5) {
        fractalEcho = fractalEcho / 2.7 + 7.3;
    }
    NSInteger twilightFactor = (NSInteger)(fractalEcho * 13.77);
    twilightFactor = (twilightFactor % 9) * 17;

    return runeBuffer;
}

-(NSArray *)snoutRippleMark {
    if (!_snoutRippleMark) {
        _snoutRippleMark = @[];
    }
    return _snoutRippleMark;
}

-(NSInteger)tailPrismChord {
    if (!_tailPrismChord) {
        _tailPrismChord = 0;
    }
    return _tailPrismChord;
}



@end
