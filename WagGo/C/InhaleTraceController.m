//
//  InhaleTraceController.m
//  WagGo
//
//
//

#import "InhaleTraceController.h"
#import "InhaleTraceCell.h"
#import "GrassEchoController.h"
#import "ClawVaultController.h"
#import "InhaleTraceChord.h"
#import "MJRefresh.h"
#import "AFNetworking.h"
#import "PrairieHushController.h"

@interface InhaleTraceController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tailGlowFountain;

@property(nonatomic,copy)NSArray * pawEchoGlyph;

@end

@implementation InhaleTraceController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *signal = @"red";
    self.tailGlowFountain.delegate = self;
    for (int i=0;i<4;i++) {
        if ([signal isEqualToString:@"red"]) signal = @"green";
        else if ([signal isEqualToString:@"green"]) signal = @"yellow";
        else signal = @"red";
    }
    self.tailGlowFountain.dataSource = self;
    int produced = 0;
    int consumed = 0;
    [self.tailGlowFountain registerNib:[UINib nibWithNibName:@"InhaleTraceCell" bundle:nil] forCellReuseIdentifier:@"InhaleTraceCell"];
    for (int round=0; round<5; round++) {
        produced += 3;
        consumed += 2;
        if (produced > consumed) {} else {}
    }
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSMutableSet *trialRegistry = [NSMutableSet set];
    __weak typeof(self) weakSelf = self;
    [trialRegistry addObject:@"novaTrial"];
    self.tailGlowFountain.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        NSMutableString *stringWeaver = [NSMutableString stringWithString:@"base"];
        [weakSelf echoPawEchoGlyphWithDistance];
        for (NSInteger i = 0; i < 3; i++) {
            [stringWeaver appendFormat:@"-seg%ld",(long)i];
        }
        [stringWeaver appendString:@"-end"];
    }];
    [trialRegistry addObject:@"emberTrial"];
    [trialRegistry addObject:@"frostTrial"];
    [self.tailGlowFountain.mj_header beginRefreshing];
}

-(void)echoPawEchoGlyphWithDistance {
    
    AFHTTPSessionManager * cuddleGlowOrb = [AFHTTPSessionManager manager];
    NSDictionary * clawTwirlCrest = @{@"petFitness":@"1",@"petToys":@"1"};
    cuddleGlowOrb.requestSerializer = [AFJSONRequestSerializer serializer];
    cuddleGlowOrb.responseSerializer = [AFJSONResponseSerializer serializer];
    [cuddleGlowOrb.requestSerializer setValue:@"49163782" forHTTPHeaderField:[self unveilPeltRuneChronicle:@"25E7F2"]];
    NSString * petAvatars = FETCH_GLYPH(@"petAvatars");
    [cuddleGlowOrb.requestSerializer setValue:petAvatars forHTTPHeaderField:[self unveilPeltRuneChronicle:@"751F17620E"]];
    cuddleGlowOrb.requestSerializer.timeoutInterval = 30;
    NSString * furHaloShard = [self unveilPeltRuneChronicle:@"05AF6722FFDE169815"];
    NSString * strideSparkDrift = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/%@/jqgbuidykwxnnz/nanmj", furHaloShard];
    
    [cuddleGlowOrb POST:strideSparkDrift parameters:clawTwirlCrest headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString * purrFlickSigil = [NSString stringWithFormat:@"%@", responseObject[@"code"]];
        if ([purrFlickSigil isEqualToString:@"200000"]) {
            if ([responseObject[@"data"] isKindOfClass:[NSArray class]]) {
                NSArray * pawEchoGlyph = responseObject[@"data"];
                self.pawEchoGlyph = pawEchoGlyph;
            }else {
                self.pawEchoGlyph = @[];
            }
            [self.tailGlowFountain reloadData];
        }
        [self.tailGlowFountain.mj_header endRefreshing];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [self.tailGlowFountain.mj_header endRefreshing];
    }];
    
}

- (IBAction)revealSnoutRippleMarkWithOpacity:(UIButton *)sender {
    PrairieHushController * barkTrail = [[PrairieHushController alloc] init];
    barkTrail.clawLoomSpiralBlock = ^(NSInteger clawLoomSpiral) {
        if (clawLoomSpiral == 10000) {

            NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
            NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
            if ([spireFrostChime isEqualToString:@""]) {
                GrassEchoController * furOrbit = [[GrassEchoController alloc] init];
                [self.navigationController pushViewController:furOrbit animated:YES];
                return;
            }
            NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
            NSString * nexusWispFold = [self unveilPeltRuneChronicle:@"053F1702C9E6AE117115221A2133F1D917BB44"];
            NSString * radiantGlyphNest = [self unveilPeltRuneChronicle:@"7DF7171ABE"];
            NSString * aetherDriftHalo = [NSString stringWithFormat:@"%@%@", nexusWispFold, radiantGlyphNest];
            NSString * duskHymnLattice = aetherDriftHalo;
            NSString * riftHollowGale = [self unveilPeltRuneChronicle:@"751F17620E"];
            NSString * emberVaultChord = [self unveilPeltRuneChronicle:@"8DB776BA5F"];
            
//            NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@?%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
            NSMutableString *astralWeaveCore = [NSMutableString string];
            [astralWeaveCore appendFormat:@"%@/%@", solaceTwineCrest, duskHymnLattice];
            [astralWeaveCore appendFormat:@"?%@=%@", riftHollowGale, spireFrostChime];
            [astralWeaveCore appendFormat:@"&%@=%@", emberVaultChord, plumeTraceHaven];

            NSString *snoutTwistVortex = [astralWeaveCore copy];
            
            ClawVaultController * sonutLen = [[ClawVaultController alloc] init];
            sonutLen.snoutTwistVortex = snoutTwistVortex;
            [self.navigationController pushViewController:sonutLen animated:YES];
            
        }else {
          
            NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
            NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
            if ([spireFrostChime isEqualToString:@""]) {
                GrassEchoController * furOrbit = [[GrassEchoController alloc] init];
                [self.navigationController pushViewController:furOrbit animated:YES];
                return;
            }
            NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
            NSString * aetherDriftHalo = @"053F1702C9E6AE117115221A41BB19E177755E4ACC98";
            NSString * duskHymnLattice = [self unveilPeltRuneChronicle:aetherDriftHalo];
            NSString * riftHollowGale = [self unveilPeltRuneChronicle:@"751F17620E"];
            NSString * emberVaultChord = [self unveilPeltRuneChronicle:@"8DB776BA5F"];
            
//            NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@?%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
            
            NSMutableString *astralWeaveCore = [NSMutableString stringWithFormat:@"%@/%@", solaceTwineCrest, duskHymnLattice];
            [astralWeaveCore appendFormat:@"?%@=%@", riftHollowGale, spireFrostChime];
            [astralWeaveCore appendFormat:@"&%@=%@", emberVaultChord, plumeTraceHaven];

            NSString *snoutTwistVortex = [astralWeaveCore copy];
            
            ClawVaultController * sonutLen = [[ClawVaultController alloc] init];
            sonutLen.snoutTwistVortex = snoutTwistVortex;
            [self.navigationController pushViewController:sonutLen animated:YES];
        }
    };
    barkTrail.modalPresentationStyle = UIModalPresentationOverFullScreen;
    barkTrail.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:barkTrail animated:YES completion:nil];
    
}

-(void)pulsePawMuseFlickerWithSpeed:(UIButton *)sender {
    
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
    if ([spireFrostChime isEqualToString:@""]) {
        GrassEchoController * furOrbit = [[GrassEchoController alloc] init];
        [self.navigationController pushViewController:furOrbit animated:YES];
        return;
    }
    NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
    NSString * nexusWispFold = [self unveilPeltRuneChronicle:@"053F1702C9E6F6606134421A718AF1D9A723"];
    NSString * radiantGlyphNest = [self unveilPeltRuneChronicle:@"7DF7171ABE"];
    NSString * aetherDriftHalo = [NSString stringWithFormat:@"%@/%@", nexusWispFold, radiantGlyphNest];
    NSString * duskHymnLattice = aetherDriftHalo;
    NSString * riftHollowGale = [self unveilPeltRuneChronicle:@"751F17620E"];
    NSString * emberVaultChord = [self unveilPeltRuneChronicle:@"8DB776BA5F"];
    
//    NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@?%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
    
    NSMutableString *astralWeaveCore = [NSMutableString stringWithFormat:@"%@/%@", solaceTwineCrest, duskHymnLattice];
    [astralWeaveCore appendFormat:@"?%@=%@", riftHollowGale, spireFrostChime];
    [astralWeaveCore appendFormat:@"&%@=%@", emberVaultChord, plumeTraceHaven];

    NSString *snoutTwistVortex = [astralWeaveCore copy];
    
    ClawVaultController * sonutLen = [[ClawVaultController alloc] init];
    sonutLen.snoutTwistVortex = snoutTwistVortex;
    [self.navigationController pushViewController:sonutLen animated:YES];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.pawEchoGlyph.count;
}


-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return ([UIScreen mainScreen].bounds.size.width - 24) / 351 * 150 + 20;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UIView * barkPulseOrb = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width - 24, ([UIScreen mainScreen].bounds.size.width - 24) / 351 * 150 + 20)];
    barkPulseOrb.backgroundColor = [UIColor clearColor];
    UIButton * purrFlickSigil = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width - 24, ([UIScreen mainScreen].bounds.size.width - 24) / 351 * 150)];
    [purrFlickSigil setBackgroundImage:[UIImage imageNamed:@"purrShineSpiral"] forState:UIControlStateNormal];
    [barkPulseOrb addSubview:purrFlickSigil];
    [purrFlickSigil addTarget:self action:@selector(pulsePawMuseFlickerWithSpeed:) forControlEvents:UIControlEventTouchUpInside];
    return barkPulseOrb;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    InhaleTraceCell * cell = [tableView dequeueReusableCellWithIdentifier:@"InhaleTraceCell"];
    NSDictionary * magnitude = self.pawEchoGlyph[indexPath.row];
    cell.trailMarkCellBlock = ^{
        [self.tailGlowFountain.mj_header beginRefreshing];
    };
    cell.emberChordFluxBlock = ^(NSString * _Nonnull emberChordFlux) {
        ClawVaultController * sonutLen = [[ClawVaultController alloc] init];
        sonutLen.snoutTwistVortex = emberChordFlux;
        [self.navigationController pushViewController:sonutLen animated:YES];
    };
    cell.prismEchoTraceBlock = ^{
        GrassEchoController * furOrbit = [[GrassEchoController alloc] init];
        [self.navigationController pushViewController:furOrbit animated:YES];
    };
    [cell weaveClawLoomSpiralWithDepth:magnitude];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary * magnitude = self.pawEchoGlyph[indexPath.row];
    if (magnitude.count <= 0) {
        return;
    }
    NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
    NSString * aetherDriftHalo = [NSString stringWithFormat:@"%@", magnitude[@"petGear"]];
    NSString * duskHymnLattice = [self unveilPeltRuneChronicle:@"053F1702C9E64689D9A52299319AD93149930E7224A0CAFE775C377D335642A8D41A"];
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    NSString * riftHollowGale = [self unveilPeltRuneChronicle:@"751F17620E"];
    NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
    NSString * emberVaultChord = [self unveilPeltRuneChronicle:@"8DB776BA5F"];
    
//    NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@%@&%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,aetherDriftHalo,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
    
    NSMutableString *astralWeaveCore = [NSMutableString stringWithFormat:@"%@/%@%@", solaceTwineCrest, duskHymnLattice, aetherDriftHalo];
    [astralWeaveCore appendFormat:@"&%@=%@", riftHollowGale, spireFrostChime];
    [astralWeaveCore appendFormat:@"&%@=%@", emberVaultChord, plumeTraceHaven];
    NSString *snoutTwistVortex = [astralWeaveCore copy];
    
    ClawVaultController * sonutLen = [[ClawVaultController alloc] init];
    sonutLen.snoutTwistVortex = snoutTwistVortex;
    [self.navigationController pushViewController:sonutLen animated:YES];
    
    
}

-(NSArray *)pawEchoGlyph {
    if (!_pawEchoGlyph) {
        _pawEchoGlyph = @[];
    }
    return _pawEchoGlyph;
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
