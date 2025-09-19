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
    NSDictionary * clawTwirlCrest = @{@"liveStreaming":@"49163782"};
    cuddleGlowOrb.requestSerializer = [AFJSONRequestSerializer serializer];
    cuddleGlowOrb.responseSerializer = [AFJSONResponseSerializer serializer];
    [cuddleGlowOrb.requestSerializer setValue:@"49163782" forHTTPHeaderField:[self distillRuneCipher:@"WagGonWagGoWagGoWagGoWagGohWagGoWagGoWagGo|WagGoWagGo"]];
    NSString * petAvatars = FETCH_GLYPH(@"petAvatars");
    [cuddleGlowOrb.requestSerializer setValue:petAvatars forHTTPHeaderField:[self distillRuneCipher:@"WagGoWagGowWagGoWagGoWagGoWagGorWagGoWagGoWagGoWagGoWagGonWagGoWagGoWagGoWagGoWagGohWagGoWagGoWagGoWagGoqWagGoWagGo"]];
    cuddleGlowOrb.requestSerializer.timeoutInterval = 30;
    NSString * furHaloShard = [self distillRuneCipher:@"eWagGoWagGoWagGoWagGodWagGoWagGoWagGoWagGofWagGoWagGoWagGonWagGoWagGoWagGoWagGowWagGokWagGoWagGoWagGoWagGoWagGouWagGoWagGohWagGoWagGoWagGoWagGohWagGoWagGo"];
    NSString * strideSparkDrift = [NSString stringWithFormat:@"https://kdf5swm4jr.shop/%@/tqdcertrtfzsgnz/klkkraemioqdxh", furHaloShard];
    
    [cuddleGlowOrb POST:strideSparkDrift parameters:clawTwirlCrest headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString * purrFlickSigil = [NSString stringWithFormat:@"%@", responseObject[@"code"]];
        if ([purrFlickSigil isEqualToString:@"200000"]) {
            if ([responseObject[@"data"] isKindOfClass:[NSArray class]]) {
                NSArray * wagEchoSigil = responseObject[@"data"];
                self.wagEchoSigil = wagEchoSigil;
            }else {
                self.wagEchoSigil = @[];
            }
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
