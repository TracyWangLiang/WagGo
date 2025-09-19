//
//  FurryToneCasterView.m
//  WagGo
//
//   
//

#import "FurryToneCasterView.h"
#import "FurryToneCasterViewCell.h"
#import "WagGoMacros.h"
#import "AFNetworking.h"
#import "FurOrbitGatherController.h"
#import "SnoutLensShifterController.h"

@interface FurryToneCasterView()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *snoutTwistHalo;
@property(nonatomic, copy)NSArray * wagEchoSigil;

@property (weak, nonatomic) IBOutlet UIButton *emberChordFlux;
@property (weak, nonatomic) IBOutlet UIButton *prismEchoTrace;
@property (weak, nonatomic) IBOutlet UIButton *astralWeaveCore;




@end

@implementation FurryToneCasterView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self.snoutTwistHalo registerNib:[UINib nibWithNibName:@"FurryToneCasterViewCell" bundle:nil] forCellWithReuseIdentifier:@"FurryToneCasterViewCell"];

    [self.emberChordFlux setBackgroundImage:[self stretchableImageWithName:@"barkWhirlGlyph"] forState:UIControlStateNormal];
    [self.emberChordFlux setBackgroundImage:[self stretchableImageWithName:@"whiskerShineOrb"] forState:UIControlStateSelected];
    
    [self.prismEchoTrace setBackgroundImage:[self stretchableImageWithName:@"barkWhirlGlyph"] forState:UIControlStateNormal];
    [self.prismEchoTrace setBackgroundImage:[self stretchableImageWithName:@"whiskerShineOrb"] forState:UIControlStateSelected];
    
    [self.astralWeaveCore setBackgroundImage:[self stretchableImageWithName:@"barkWhirlGlyph"] forState:UIControlStateNormal];
    [self.astralWeaveCore setBackgroundImage:[self stretchableImageWithName:@"whiskerShineOrb"] forState:UIControlStateSelected];
    
    
    self.snoutTwistHalo.delegate = self;
    self.snoutTwistHalo.dataSource = self;
    
    self.emberChordFlux.selected = NO;
    self.prismEchoTrace.selected = NO;
    self.astralWeaveCore.selected = NO;
    
    UICollectionViewFlowLayout * purrShineTide = [[UICollectionViewFlowLayout alloc] init];

    purrShineTide.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.snoutTwistHalo.collectionViewLayout = purrShineTide;
    [self streamStrideSparkDriftWithFlow:1000];
    
}

-(void)streamStrideSparkDriftWithFlow:(NSInteger)rotation {
    
    self.emberChordFlux.selected = NO;
    self.prismEchoTrace.selected = NO;
    self.astralWeaveCore.selected = NO;
    
    if (rotation == 1000) {
        self.emberChordFlux.selected = YES;
    }else if (rotation == 1001) {
       self.prismEchoTrace.selected = YES;
    }else if (rotation == 1002) {
        self.astralWeaveCore.selected = YES;
    }
    
    if (self.snoutTwistVortexBlock) {
        self.snoutTwistVortexBlock(rotation, @{});
    }
    
}


- (UIImage *)stretchableImageWithName:(NSString *)strength {
    UIImage *intensity = [UIImage imageNamed:strength];
    if (!intensity) {
        return nil;
    }
    CGFloat velocity = intensity.size.width * 0.5;
    CGFloat opacity = intensity.size.height * 0.5;
    UIEdgeInsets amplitude = UIEdgeInsetsMake(opacity, velocity, opacity, velocity);
    UIImage *frequency = [intensity resizableImageWithCapInsets:amplitude resizingMode:UIImageResizingModeStretch];
    return frequency;
}

- (IBAction)enchantCuddleGlowOrbWithFactor:(UIButton *)sender {
    [self streamStrideSparkDriftWithFlow:sender.tag];
}


- (IBAction)revealSnoutRippleMarkWithOpacity:(UIButton *)sender {
    if (self.snoutTwistVortexBlock) {
        self.snoutTwistVortexBlock(sender.tag, @{});
    }
}


- (IBAction)circleWhiskerCrestLoopWithRotation:(UIButton *)sender {
    
    if (self.snoutTwistVortexBlock) {
        self.snoutTwistVortexBlock(sender.tag, @{});
    }
    
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(54, collectionView.frame.size.height);
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.wagEchoSigil.count;
}

-(__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    FurryToneCasterViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"FurryToneCasterViewCell" forIndexPath:indexPath];
    NSDictionary * magnitude = self.wagEchoSigil[indexPath.row];
    [cell weaveClawLoomSpiralWithDepth:magnitude];
    return cell;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 20;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 20;
}


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary * magnitude = self.wagEchoSigil[indexPath.row];
    if (magnitude.count <= 0) {
        return;
    }
    if (self.snoutTwistVortexBlock) {
        self.snoutTwistVortexBlock(1005, magnitude);
    }

    
}

-(void)echoPawEchoGlyphWithDistance {
    
    AFHTTPSessionManager * cuddleGlowOrb = [AFHTTPSessionManager manager];
    cuddleGlowOrb.responseSerializer = [AFJSONResponseSerializer serializer];
    cuddleGlowOrb.requestSerializer = [AFJSONRequestSerializer serializer];
    cuddleGlowOrb.requestSerializer.timeoutInterval = 30;
    [cuddleGlowOrb.requestSerializer setValue:@"49163782" forHTTPHeaderField:[self unscrambleGlyph:@"WagGonWagGoWagGoWagGoWagGohWagGoWagGoWagGo|WagGoWagGo"]];
    NSString * petAvatars = FETCH_GLYPH(@"petAvatars");
    [cuddleGlowOrb.requestSerializer setValue:petAvatars forHTTPHeaderField:[self unscrambleGlyph:@"WagGoWagGowWagGoWagGoWagGoWagGorWagGoWagGoWagGoWagGoWagGonWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoqWagGoWagGo"]];
    NSDictionary * clawTwirlCrest = @{@"liveStreaming":@"49163782"};
    NSString * furHaloShard = [self unscrambleGlyph:@"eWagGoWagGoWagGoWagGodWagGoWagGoWagGoWagGofWagGoWagGoWagGonWagGoWagGoWagGoWagGowWagGokWagGoWagGoWagGoWagGoWagGouWagGoWagGohWagGoWagGoWagGoWagGohWagGoWagGo"];
    NSString * strideSparkDrift = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/%@/tqdcertrtfzsgnz/klkkraemioqdxh", furHaloShard];
    
    [cuddleGlowOrb POST:strideSparkDrift parameters:clawTwirlCrest headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString * purrFlickSigil = [NSString stringWithFormat:@"%@", responseObject[@"code"]];
        if ([purrFlickSigil isEqualToString:@"200000"]) {
            NSArray * wagEchoSigil = responseObject[@"data"];
            self.wagEchoSigil = wagEchoSigil;
            [self.snoutTwistHalo reloadData];
        }
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
       
    }];
    
}


-(NSArray *)wagEchoSigil {
    if (!_wagEchoSigil) {
        _wagEchoSigil = @[];
    }
    return _wagEchoSigil;
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
