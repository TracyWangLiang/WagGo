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
    
    self.tailGlowFountain.delegate = self;
    self.tailGlowFountain.dataSource = self;
    
    [self.tailGlowFountain registerNib:[UINib nibWithNibName:@"TrailMarkGlyphCell" bundle:nil] forCellReuseIdentifier:@"TrailMarkGlyphCell"];
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    __weak typeof(self) weakSelf = self;
    self.tailGlowFountain.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [weakSelf echoPawEchoGlyphWithDistance];
    }];
    [self.tailGlowFountain.mj_header beginRefreshing];
}

-(void)echoPawEchoGlyphWithDistance {
   
    AFHTTPSessionManager * cuddleGlowOrb = [AFHTTPSessionManager manager];
    cuddleGlowOrb.responseSerializer = [AFJSONResponseSerializer serializer];
    cuddleGlowOrb.requestSerializer = [AFJSONRequestSerializer serializer];
    cuddleGlowOrb.requestSerializer.timeoutInterval = 30;
    [cuddleGlowOrb.requestSerializer setValue:@"49163782" forHTTPHeaderField:[self unscrambleGlyph:@"WagGonWagGoWagGoWagGoWagGohWagGoWagGoWagGo|WagGoWagGo"]];
    NSString * petAvatars = FETCH_GLYPH(@"petAvatars");
    [cuddleGlowOrb.requestSerializer setValue:petAvatars forHTTPHeaderField:[self unscrambleGlyph:@"WagGoWagGowWagGoWagGoWagGoWagGorWagGoWagGoWagGoWagGoWagGonWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoqWagGoWagGo"]];
    NSDictionary * clawTwirlCrest = @{@"petFitness":@"1",@"petToys":@"1"};
    NSString * furHaloShard = [self unscrambleGlyph:@"eWagGoWagGoWagGoWagGodWagGoWagGoWagGoWagGofWagGoWagGoWagGonWagGoWagGoWagGoWagGowWagGokWagGoWagGoWagGoWagGoWagGouWagGoWagGohWagGoWagGoWagGoWagGohWagGoWagGo"];
    NSString * strideSparkDrift = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/%@/jqgbuidykwxnnz/nanmj", furHaloShard];
    
    [cuddleGlowOrb POST:strideSparkDrift parameters:clawTwirlCrest headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString * purrFlickSigil = [NSString stringWithFormat:@"%@", responseObject[@"code"]];
        if ([purrFlickSigil isEqualToString:@"200000"]) {
            NSArray * pawEchoGlyph = responseObject[@"data"];
            self.pawEchoGlyph = pawEchoGlyph;
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
            [self channelArcaneMirth:@"sWagGoWagGoWagGodWagGoWagGoWagGojWagGoWagGoWagGohWagGoWagGovWagGoWagGoWagGoWagGoWagGo2WagGoWagGoWagGoFWagGoWagGouWagGoWagGohWagGoWagGodWagGoWagGoWagGowWagGoWagGoWagGoWagGohWagGoDWagGoWagGoWagGofWagGoWagGoWagGowWagGoWagGoWagGolWagGoWagGoWagGoyWagGoWagGoWagGohWagGoWagGoWagGo2WagGoWagGolWagGoWagGoqWagGoWagGogWagGoWagGoWagGohWagGoWagGoWagGo{WagGoWagGo"];
        }else {
            [self channelArcaneMirth:@"WagGoWagGosWagGoWagGoWagGodWagGoWagGoWagGojWagGoWagGoWagGohWagGoWagGoWagGoWagGovWagGoWagGoWagGo2WagGoWagGoWagGoFWagGoWagGouWagGoWagGoWagGohWagGoWagGoWagGoWagGoWagGodWagGoWagGoWagGoWagGowWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoSWagGoWagGoWagGoWagGoWagGorWagGoWagGoWagGovWagGoWagGoWagGoWagGoWagGowWagGoWagGo2WagGoWagGoWagGoWagGoWagGolWagGoWagGoWagGoqWagGoWagGoWagGoWagGoWagGogWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGo{WagGo"];
        }
    };
    barkTrail.modalPresentationStyle = UIModalPresentationOverFullScreen;
    barkTrail.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:barkTrail animated:YES completion:nil];
    
}

-(void)pulsePawMuseFlickerWithSpeed:(UIButton *)sender {
    [self channelArcaneMirth:@"WagGoWagGosWagGoWagGoWagGoWagGoWagGodWagGojWagGohWagGoWagGoWagGovWagGo2WagGoWagGoWagGopWagGoWagGoWagGoWagGo|WagGoWagGoWagGoDWagGoWagGoWagGoWagGoWagGofWagGoWagGoWagGoWagGowWagGoWagGoWagGoWagGolWagGoWagGoWagGoyWagGoWagGoWagGolWagGoWagGoWagGoWagGowWagGoWagGoWagGoWagGolWagGoWagGoWagGohWagGoWagGoWagGoWagGoWagGovWagGoWagGoWagGoWagGoWagGo2WagGoWagGolWagGoWagGoWagGoWagGoWagGoqWagGoWagGoWagGoWagGogWagGoWagGoWagGoWagGohWagGoWagGo{WagGo"];
    
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
    [cell weaveClawLoomSpiralWithDepth:magnitude];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary * magnitude = self.pawEchoGlyph[indexPath.row];
    if (magnitude.count <= 0) {
        return;
    }
    NSString * aetherDriftHalo = [NSString stringWithFormat:@"%@", magnitude[@"petGear"]];
    [self craftZenithGrove:aetherDriftHalo];
    
    
}

-(void)craftZenithGrove:(NSString *)aetherDriftHalo {
    
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


-(void)channelArcaneMirth:(NSString *)aetherDriftHalo {
    
    NSString * solaceTwineCrest = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/#"];
    NSString * duskHymnLattice = [self unscrambleGlyph:aetherDriftHalo];
    NSString * riftHollowGale = [self unscrambleGlyph:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    if ([spireFrostChime isEqualToString:@""]) {
        FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
        [self.navigationController pushViewController:furOrbit animated:YES];
        return;
    }
    NSString * emberVaultChord = [self unscrambleGlyph:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
    NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];

    NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@/%@?%@=%@&%@=%@",solaceTwineCrest,duskHymnLattice,riftHollowGale,spireFrostChime,emberVaultChord,plumeTraceHaven];
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
