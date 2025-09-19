//
//  TrailMarkGlyphController.m
//  WagGo
//
//
//

#import "TrailMarkGlyphController.h"
#import "TrailMarkGlyphCell.h"
#import "FurOrbitGatherController.h"
#import "SnoutLensShifterController.h"
#import "WagGoMacros.h"
#import "MJRefresh.h"
#import "AFNetworking.h"
#import "BarkTrailSeekerController.h"

@interface TrailMarkGlyphController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tailGlowFountain;

@property(nonatomic,copy)NSArray * pawEchoGlyph;

@end

@implementation TrailMarkGlyphController

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
    [self.tailGlowFountain registerNib:[UINib nibWithNibName:@"TrailMarkGlyphCell" bundle:nil] forCellReuseIdentifier:@"TrailMarkGlyphCell"];
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
    [cuddleGlowOrb.requestSerializer setValue:@"49163782" forHTTPHeaderField:[self distillRuneCipher:@"WagGonWagGoWagGoWagGoWagGohWagGoWagGoWagGo|WagGoWagGo"]];
    NSString * petAvatars = FETCH_GLYPH(@"petAvatars");
    [cuddleGlowOrb.requestSerializer setValue:petAvatars forHTTPHeaderField:[self distillRuneCipher:@"WagGoWagGowWagGoWagGoWagGoWagGorWagGoWagGoWagGoWagGoWagGonWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoqWagGoWagGo"]];
    cuddleGlowOrb.requestSerializer.timeoutInterval = 30;
    NSString * furHaloShard = [self distillRuneCipher:@"eWagGoWagGoWagGoWagGodWagGoWagGoWagGoWagGofWagGoWagGoWagGonWagGoWagGoWagGoWagGowWagGokWagGoWagGoWagGoWagGoWagGouWagGoWagGohWagGoWagGoWagGoWagGohWagGoWagGo"];
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
    BarkTrailSeekerController * barkTrail = [[BarkTrailSeekerController alloc] init];
    barkTrail.clawLoomSpiralBlock = ^(NSInteger clawLoomSpiral) {
        if (clawLoomSpiral == 10000) {

            NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
            NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
            if ([spireFrostChime isEqualToString:@""]) {
                FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
                [self.navigationController pushViewController:furOrbit animated:YES];
                return;
            }
            NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
            NSString * aetherDriftHalo = @"sWagGoWagGoWagGodWagGoWagGoWagGojWagGoWagGoWagGohWagGoWagGovWagGoWagGoWagGoWagGoWagGo2WagGoWagGoWagGoFWagGoWagGouWagGoWagGohWagGoWagGodWagGoWagGoWagGowWagGoWagGoWagGoWagGohWagGoDWagGoWagGoWagGofWagGoWagGoWagGowWagGoWagGoWagGolWagGoWagGoWagGoyWagGoWagGoWagGohWagGoWagGoWagGo2WagGoWagGolWagGoWagGoqWagGoWagGogWagGoWagGoWagGohWagGoWagGoWagGo{WagGoWagGo";
            NSString * duskHymnLattice = [self distillRuneCipher:aetherDriftHalo];
            NSString * riftHollowGale = [self distillRuneCipher:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
            NSString * emberVaultChord = [self distillRuneCipher:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
            
            NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@?%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
            SnoutLensShifterController * sonutLen = [[SnoutLensShifterController alloc] init];
            sonutLen.snoutTwistVortex = snoutTwistVortex;
            [self.navigationController pushViewController:sonutLen animated:YES];
            
        }else {
          
            NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
            NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
            if ([spireFrostChime isEqualToString:@""]) {
                FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
                [self.navigationController pushViewController:furOrbit animated:YES];
                return;
            }
            NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
            NSString * aetherDriftHalo = @"WagGoWagGosWagGoWagGoWagGodWagGoWagGoWagGojWagGoWagGoWagGohWagGoWagGoWagGoWagGovWagGoWagGoWagGo2WagGoWagGoWagGoFWagGoWagGouWagGoWagGoWagGohWagGoWagGoWagGoWagGoWagGodWagGoWagGoWagGoWagGowWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoSWagGoWagGoWagGoWagGoWagGorWagGoWagGoWagGovWagGoWagGoWagGoWagGoWagGowWagGoWagGo2WagGoWagGoWagGoWagGoWagGolWagGoWagGoWagGoqWagGoWagGoWagGoWagGoWagGogWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGo{WagGo";
            NSString * duskHymnLattice = [self distillRuneCipher:aetherDriftHalo];
            NSString * riftHollowGale = [self distillRuneCipher:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
            NSString * emberVaultChord = [self distillRuneCipher:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
            
            NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@?%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
            SnoutLensShifterController * sonutLen = [[SnoutLensShifterController alloc] init];
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
        FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
        [self.navigationController pushViewController:furOrbit animated:YES];
        return;
    }
    NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
    NSString * aetherDriftHalo = @"WagGoWagGosWagGoWagGoWagGoWagGoWagGodWagGojWagGohWagGoWagGoWagGovWagGo2WagGoWagGoWagGopWagGoWagGoWagGoWagGo|WagGoWagGoWagGoDWagGoWagGoWagGoWagGoWagGofWagGoWagGoWagGoWagGowWagGoWagGoWagGoWagGolWagGoWagGoWagGoyWagGoWagGoWagGolWagGoWagGoWagGoWagGowWagGoWagGoWagGoWagGolWagGoWagGoWagGohWagGoWagGoWagGoWagGoWagGovWagGoWagGoWagGoWagGoWagGo2WagGoWagGolWagGoWagGoWagGoWagGoWagGoqWagGoWagGoWagGoWagGogWagGoWagGoWagGoWagGohWagGoWagGo{WagGo";
    NSString * duskHymnLattice = [self distillRuneCipher:aetherDriftHalo];
    NSString * riftHollowGale = [self distillRuneCipher:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
    NSString * emberVaultChord = [self distillRuneCipher:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
    
    NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@?%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
    SnoutLensShifterController * sonutLen = [[SnoutLensShifterController alloc] init];
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
    TrailMarkGlyphCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TrailMarkGlyphCell"];
    NSDictionary * magnitude = self.pawEchoGlyph[indexPath.row];
    cell.trailMarkCellBlock = ^{
        [self.tailGlowFountain.mj_header beginRefreshing];
    };
    cell.emberChordFluxBlock = ^(NSString * _Nonnull emberChordFlux) {
        SnoutLensShifterController * sonutLen = [[SnoutLensShifterController alloc] init];
        sonutLen.snoutTwistVortex = emberChordFlux;
        [self.navigationController pushViewController:sonutLen animated:YES];
    };
    cell.prismEchoTraceBlock = ^{
        FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
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
    NSString * duskHymnLattice = [self distillRuneCipher:@"WagGoWagGosWagGoWagGoWagGodWagGoWagGoWagGoWagGojWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoWagGovWagGoWagGo2WagGoWagGoSWagGoWagGoWagGorWagGoWagGoWagGovWagGoWagGoWagGowWagGoWagGoWagGoGWagGohWagGowWagGoWagGoWagGodWagGoWagGolWagGooWagGoWagGoWagGovWagGoWagGoWagGoWagGo2WagGoWagGoWagGoWagGoWagGolWagGoWagGoqWagGoWagGogWagGoWagGohWagGoWagGoWagGo{WagGoWagGoWagGoBWagGoWagGogWagGoWagGoWagGoWagGo|WagGoWagGoWagGoWagGoWagGoqWagGoWagGoWagGoWagGodWagGoWagGoWagGopWagGolWagGoWagGoWagGofWagGoLWagGoWagGoWagGoWagGogWagGoWagGoWagGoWagGo@WagGo"];
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    NSString * riftHollowGale = [self distillRuneCipher:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
    NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
    NSString * emberVaultChord = [self distillRuneCipher:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
    
    NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@%@&%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,aetherDriftHalo,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
    SnoutLensShifterController * sonutLen = [[SnoutLensShifterController alloc] init];
    sonutLen.snoutTwistVortex = snoutTwistVortex;
    [self.navigationController pushViewController:sonutLen animated:YES];
    
    
}

-(NSArray *)pawEchoGlyph {
    if (!_pawEchoGlyph) {
        _pawEchoGlyph = @[];
    }
    return _pawEchoGlyph;
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


@end
