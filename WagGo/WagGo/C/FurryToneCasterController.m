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
    
    [self.wagLatticeBeam registerNib:[UINib nibWithNibName:@"FurryToneCasterCell" bundle:nil] forCellWithReuseIdentifier:@"FurryToneCasterCell"];
    [self.wagLatticeBeam registerNib:[UINib nibWithNibName:@"FurryToneCasterView" bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
                 withReuseIdentifier:@"FurryToneCasterView"];
    
    self.wagLatticeBeam.delegate = self;
    self.wagLatticeBeam.dataSource = self;
    
    UICollectionViewFlowLayout * pawEchoGlyph = [[UICollectionViewFlowLayout alloc] init];
    pawEchoGlyph.minimumLineSpacing = 12;
    pawEchoGlyph.minimumInteritemSpacing = 12;
    self.wagLatticeBeam.collectionViewLayout = pawEchoGlyph;
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    __weak typeof(self) weakSelf = self;
    self.wagLatticeBeam.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [weakSelf echoPawEchoGlyphWithDistance];
    }];
    [self.wagLatticeBeam.mj_header beginRefreshing];
}

-(void)echoPawEchoGlyphWithDistance {
    NSString * petRestore = [NSString stringWithFormat:@"%ld", self.tailPrismChord + 1];
    AFHTTPSessionManager * cuddleGlowOrb = [AFHTTPSessionManager manager];
    cuddleGlowOrb.responseSerializer = [AFJSONResponseSerializer serializer];
    cuddleGlowOrb.requestSerializer = [AFJSONRequestSerializer serializer];
    cuddleGlowOrb.requestSerializer.timeoutInterval = 30;
    [cuddleGlowOrb.requestSerializer setValue:@"49163782" forHTTPHeaderField:[self unscrambleGlyph:@"WagGonWagGoWagGoWagGoWagGohWagGoWagGoWagGo|WagGoWagGo"]];
    NSString * petAvatars = FETCH_GLYPH(@"petAvatars");
    [cuddleGlowOrb.requestSerializer setValue:petAvatars forHTTPHeaderField:[self unscrambleGlyph:@"WagGoWagGowWagGoWagGoWagGoWagGorWagGoWagGoWagGoWagGoWagGonWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoqWagGoWagGo"]];
    NSDictionary * clawTwirlCrest = @{@"petRestore":petRestore,@"petSecurity":@"1"};
    NSString * furHaloShard = [self unscrambleGlyph:@"eWagGoWagGoWagGoWagGodWagGoWagGoWagGoWagGofWagGoWagGoWagGonWagGoWagGoWagGoWagGowWagGokWagGoWagGoWagGoWagGoWagGouWagGoWagGohWagGoWagGoWagGoWagGohWagGoWagGo"];
    NSString * strideSparkDrift = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/%@/rxvcgosblz/vhmvhqe", furHaloShard];
    
    [cuddleGlowOrb POST:strideSparkDrift parameters:clawTwirlCrest headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString * purrFlickSigil = [NSString stringWithFormat:@"%@", responseObject[@"code"]];
        if ([purrFlickSigil isEqualToString:@"200000"]) {
            NSArray * snoutRippleMark = responseObject[@"data"];
            self.snoutRippleMark = snoutRippleMark;
            [self.wagLatticeBeam reloadData];
        }
        [self.wagLatticeBeam.mj_header endRefreshing];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [self.wagLatticeBeam.mj_header endRefreshing];
    }];
    
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.snoutRippleMark.count;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        FurryToneCasterView *wagLatticeBeam = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"FurryToneCasterView" forIndexPath:indexPath];
        [wagLatticeBeam echoPawEchoGlyphWithDistance];
        wagLatticeBeam.snoutTwistVortexBlock = ^(NSInteger clawLoomSpiral, NSDictionary * _Nonnull snoutTwistVortex) {
            [self flowAetherChord:clawLoomSpiral snoutTwistVortex:snoutTwistVortex];
        };
        
        
        return wagLatticeBeam;
    }
    return nil;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    
    FurryToneCasterView *barkPulseOrb = [[[NSBundle mainBundle] loadNibNamed:@"FurryToneCasterView" owner:nil options:nil] firstObject];
    [barkPulseOrb setNeedsLayout];
    [barkPulseOrb layoutIfNeeded];
    CGSize purrFlickSigil = [barkPulseOrb systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return CGSizeMake(collectionView.bounds.size.width, purrFlickSigil.height);
}


-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat pawEchoGlyph = (collectionView.frame.size.width - 12) / 2.0;
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
    NSString * riftHollowGale = [self unscrambleGlyph:@"wWagGoWagGorWagGoWagGoWagGoWagGonWagGoWagGoWagGohWagGoWagGoWagGoqWagGoWagGo"];
    NSString * spireFrostChime = FETCH_GLYPH(@"petAvatars");
    NSString * emberVaultChord = [self unscrambleGlyph:@"WagGodWagGoWagGoWagGosWagGoWagGoWagGoWagGosWagGoWagGoWagGoLWagGoGWagGo"];
    NSString * plumeTraceHaven = [NSString stringWithFormat:@"49163782"];
    
    NSString * duskHymnLattice;
   
    NSString * petOfflineAccess = [NSString stringWithFormat:@"%@", magnitude[@"petOfflineAccess"]];
   
    NSString * petNotificationsControl = [NSString stringWithFormat:@"%@", magnitude[@"petNotificationsControl"]];
    NSString * petClipping = [NSString stringWithFormat:@"%@", magnitude[@"petClipping"]];
    if ([petClipping isEqualToString:@"-1"]) {
        NSString * emberFrostShard = [self unscrambleGlyph:@"WagGoWagGosWagGoWagGodWagGoWagGojWagGohWagGoWagGoWagGoWagGovWagGoWagGo2WagGoWagGoOWagGoWagGoWagGolWagGoWagGoWagGoWagGoWagGoyWagGoWagGoWagGoWagGohWagGoWagGoWagGoUWagGoWagGorWagGoWagGoWagGorWagGoWagGopWagGoYWagGoWagGoWagGoWagGolWagGoWagGoWagGogWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGorWagGoWagGoWagGo2WagGoWagGoWagGolWagGoWagGoWagGoWagGoWagGoqWagGoWagGoWagGoWagGoWagGogWagGoWagGoWagGohWagGoWagGoWagGo{WagGoWagGoWagGoWagGoWagGoBWagGoWagGoWagGoWagGooWagGoWagGolWagGoWagGoWagGoyWagGoWagGohWagGoWagGoWagGoWagGoLWagGogWagGoWagGo"];
        NSString * lumenTraceCrown = [self unscrambleGlyph:@"WagGoWagGoxWagGoWagGovWagGoWagGohWagGouWagGoLWagGoWagGoWagGogWagGoWagGoWagGo"];
        duskHymnLattice = [NSString stringWithFormat:@"%@=%@&%@=%@",emberFrostShard,petOfflineAccess,lumenTraceCrown,petNotificationsControl];
        
    }else if ([petClipping isEqualToString:@"0"]) {
        
        NSString * emberFrostShard = [self unscrambleGlyph:@"WagGosWagGoWagGoWagGoWagGodWagGojWagGoWagGohWagGoWagGoWagGovWagGo2WagGoWagGoWagGoWagGoWagGoOWagGoWagGoWagGoWagGolWagGoWagGoWagGoyWagGoWagGohWagGoUWagGoWagGorWagGoWagGorWagGoWagGopWagGoWagGoWagGoWagGoWagGoUWagGoWagGoWagGoWagGohWagGoWagGoWagGovWagGowWagGoWagGo2WagGoWagGolWagGoWagGoWagGoWagGoqWagGoWagGoWagGoWagGogWagGohWagGoWagGo{WagGoWagGoWagGoWagGoBWagGoWagGoWagGoWagGooWagGoWagGolWagGoWagGoWagGoyWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoLWagGoWagGoWagGoWagGogWagGoWagGo"];
        duskHymnLattice = [NSString stringWithFormat:@"%@=%@",emberFrostShard,petOfflineAccess];
        
    }else if ([petClipping isEqualToString:@"1"] || [petClipping isEqualToString:@"2"]) {
        
        NSString * emberFrostShard = [self unscrambleGlyph:@"sWagGoWagGoWagGodWagGoWagGojWagGoWagGoWagGohWagGoWagGoWagGoWagGovWagGoWagGo2WagGoWagGoWagGoWagGoMWagGoWagGoWagGoWagGorWagGoWagGolWagGoqWagGoOWagGoWagGoWagGoWagGoWagGolWagGoWagGoyWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoUWagGoWagGoWagGorWagGoWagGoWagGorWagGoWagGoWagGoWagGoWagGopWagGoWagGoWagGo2WagGoWagGoWagGolWagGoWagGoWagGoWagGoqWagGoWagGoWagGoWagGoWagGogWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGo{WagGoWagGoBWagGoWagGoWagGoWagGofWagGoWagGoWagGoWagGokWagGodWagGoWagGoWagGoWagGoqWagGoWagGoWagGoWagGoqWagGoWagGohWagGoWagGoWagGooWagGoWagGo"];
        NSString * lumenTraceCrown = [self unscrambleGlyph:@"WagGoWagGoxWagGoWagGovWagGoWagGohWagGouWagGoLWagGoWagGoWagGogWagGoWagGoWagGo"];
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
        
        [self craftZenithGrove:@"sWagGoWagGoWagGodWagGoWagGoWagGojWagGoWagGoWagGoWagGohWagGoWagGoWagGovWagGoWagGoWagGo2WagGoWagGoFWagGoWagGoWagGouWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGodWagGowWagGohWagGoWagGoUWagGoWagGoWagGorWagGoWagGoWagGoWagGorWagGoWagGoWagGopWagGoWagGoWagGoWagGo2WagGoWagGoWagGoWagGolWagGoWagGoWagGoqWagGoWagGoWagGoWagGogWagGoWagGohWagGoWagGoWagGo{WagGoWagGo"];
    }else if (clawLoomSpiral == 1005) {
        
        NSString * petCommunity = [NSString stringWithFormat:@"%@", snoutTwistVortex[@"petCommunity"]];
        [self channelArcaneMirth:@"sWagGoWagGoWagGodWagGoWagGoWagGoWagGojWagGoWagGoWagGoWagGohWagGoWagGoWagGovWagGoWagGoWagGo2WagGoWagGoWagGokWagGoWagGoWagGoWagGorWagGoWagGoWagGopWagGoWagGoWagGoWagGohWagGoWagGoWagGosWagGoWagGodWagGoWagGoWagGoWagGojWagGoWagGoWagGohWagGoWagGo2WagGoWagGoWagGolWagGoWagGoWagGoqWagGoWagGoWagGoWagGogWagGoWagGoWagGohWagGoWagGoWagGoWagGo{WagGoBWagGoWagGoWagGoWagGoWagGoxWagGovWagGoWagGohWagGoWagGoWagGoWagGouWagGoWagGoWagGoWagGoLWagGoWagGoWagGogWagGo@WagGoWagGoWagGo" petGrooming:petCommunity];
        
    }
}

-(void)craftZenithGrove:(NSString *)aetherDriftHalo {
    
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
    [self.navigationController pushViewController:sonutLen animated:YES];
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
