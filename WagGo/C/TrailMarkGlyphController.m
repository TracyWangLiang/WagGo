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
    [cuddleGlowOrb.requestSerializer setValue:@"49163782" forHTTPHeaderField:[self unscrambleGlyph:@"WagGonWagGoWagGoWagGoWagGohWagGoWagGoWagGo|WagGoWagGo"]];
    NSString * petAvatars = FETCH_GLYPH(@"petAvatars");
    [cuddleGlowOrb.requestSerializer setValue:petAvatars forHTTPHeaderField:[self unscrambleGlyph:@"WagGoWagGowWagGoWagGoWagGoWagGorWagGoWagGoWagGoWagGoWagGonWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoqWagGoWagGo"]];
    cuddleGlowOrb.requestSerializer.timeoutInterval = 30;
    NSString * furHaloShard = [self unscrambleGlyph:@"eWagGoWagGoWagGoWagGodWagGoWagGoWagGoWagGofWagGoWagGoWagGonWagGoWagGoWagGoWagGowWagGokWagGoWagGoWagGoWagGoWagGouWagGoWagGohWagGoWagGoWagGoWagGohWagGoWagGo"];
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
            if ([spireFrostChime isEqualToString:@""]) {
                FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
                [self.navigationController pushViewController:furOrbit animated:YES];
                return;
            }
            NSString * aetherDriftHalo = @"sWagGoWagGoWagGodWagGoWagGoWagGojWagGoWagGoWagGohWagGoWagGovWagGoWagGoWagGoWagGoWagGo2WagGoWagGoWagGoFWagGoWagGouWagGoWagGohWagGoWagGodWagGoWagGoWagGowWagGoWagGoWagGoWagGohWagGoDWagGoWagGoWagGofWagGoWagGoWagGowWagGoWagGoWagGolWagGoWagGoWagGoyWagGoWagGoWagGohWagGoWagGoWagGo2WagGoWagGolWagGoWagGoqWagGoWagGogWagGoWagGoWagGohWagGoWagGoWagGo{WagGoWagGo";
            NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
            NSString * duskHymnLattice = [self unscrambleGlyph:aetherDriftHalo];
            NSString * riftHollowGale = [self unscrambleGlyph:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
            NSString * emberVaultChord = [self unscrambleGlyph:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
            NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
            
            NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@?%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
            SnoutLensShifterController * sonutLen = [[SnoutLensShifterController alloc] init];
            sonutLen.snoutTwistVortex = snoutTwistVortex;
            [self.navigationController pushViewController:sonutLen animated:YES];
            
        }else {
          
            NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
            if ([spireFrostChime isEqualToString:@""]) {
                FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
                [self.navigationController pushViewController:furOrbit animated:YES];
                return;
            }
            
            NSString * aetherDriftHalo = @"WagGoWagGosWagGoWagGoWagGodWagGoWagGoWagGojWagGoWagGoWagGohWagGoWagGoWagGoWagGovWagGoWagGoWagGo2WagGoWagGoWagGoFWagGoWagGouWagGoWagGoWagGohWagGoWagGoWagGoWagGoWagGodWagGoWagGoWagGoWagGowWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoSWagGoWagGoWagGoWagGoWagGorWagGoWagGoWagGovWagGoWagGoWagGoWagGoWagGowWagGoWagGo2WagGoWagGoWagGoWagGoWagGolWagGoWagGoWagGoqWagGoWagGoWagGoWagGoWagGogWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGo{WagGo";
            NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
            NSString * duskHymnLattice = [self unscrambleGlyph:aetherDriftHalo];
            NSString * riftHollowGale = [self unscrambleGlyph:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
            NSString * emberVaultChord = [self unscrambleGlyph:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
            NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
            
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
    if ([spireFrostChime isEqualToString:@""]) {
        FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
        [self.navigationController pushViewController:furOrbit animated:YES];
        return;
    }
    NSString * aetherDriftHalo = @"WagGoWagGosWagGoWagGoWagGoWagGoWagGodWagGojWagGohWagGoWagGoWagGovWagGo2WagGoWagGoWagGopWagGoWagGoWagGoWagGo|WagGoWagGoWagGoDWagGoWagGoWagGoWagGoWagGofWagGoWagGoWagGoWagGowWagGoWagGoWagGoWagGolWagGoWagGoWagGoyWagGoWagGoWagGolWagGoWagGoWagGoWagGowWagGoWagGoWagGoWagGolWagGoWagGoWagGohWagGoWagGoWagGoWagGoWagGovWagGoWagGoWagGoWagGoWagGo2WagGoWagGolWagGoWagGoWagGoWagGoWagGoqWagGoWagGoWagGoWagGogWagGoWagGoWagGoWagGohWagGoWagGo{WagGo";
    NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
    NSString * duskHymnLattice = [self unscrambleGlyph:aetherDriftHalo];
    NSString * riftHollowGale = [self unscrambleGlyph:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
    NSString * emberVaultChord = [self unscrambleGlyph:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
    NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
    
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
    NSString * aetherDriftHalo = [NSString stringWithFormat:@"%@", magnitude[@"petGear"]];
    NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
    NSString * duskHymnLattice = [self unscrambleGlyph:@"WagGoWagGosWagGoWagGoWagGodWagGoWagGoWagGoWagGojWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoWagGovWagGoWagGo2WagGoWagGoSWagGoWagGoWagGorWagGoWagGoWagGovWagGoWagGoWagGowWagGoWagGoWagGoGWagGohWagGowWagGoWagGoWagGodWagGoWagGolWagGooWagGoWagGoWagGovWagGoWagGoWagGoWagGo2WagGoWagGoWagGoWagGoWagGolWagGoWagGoqWagGoWagGogWagGoWagGohWagGoWagGoWagGo{WagGoWagGoWagGoBWagGoWagGogWagGoWagGoWagGoWagGo|WagGoWagGoWagGoWagGoWagGoqWagGoWagGoWagGoWagGodWagGoWagGoWagGopWagGolWagGoWagGoWagGofWagGoLWagGoWagGoWagGoWagGogWagGoWagGoWagGoWagGo@WagGo"];
    NSString * riftHollowGale = [self unscrambleGlyph:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    NSString * emberVaultChord = [self unscrambleGlyph:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
    NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
    
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
