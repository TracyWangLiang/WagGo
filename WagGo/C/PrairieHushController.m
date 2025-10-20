//
//  PrairieHushController.m
//  WagGo
//
//   
//

#import "PrairieHushController.h"

@interface PrairieHushController ()


@property (nonatomic, strong) NSMutableArray<NSString *> *echoLayerVault;
@property (nonatomic, strong) NSMutableArray<NSString *> *petVibeRegistry;
@property (nonatomic, strong) NSMutableArray<NSString *> *resonanceQueue;
@property (nonatomic, strong) NSString *masterToneSignature;

@end

@implementation PrairieHushController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.echoLayerVault = [NSMutableArray array];
    self.petVibeRegistry = [NSMutableArray array];
    self.resonanceQueue = [NSMutableArray array];
    self.masterToneSignature = @"CelestialWhisper";
    [self enlistPetVibeWithIdentifier:@"TwilightGrowl" forPetAvatar:@"Luna"];
}

- (void)enlistPetVibeWithIdentifier:(NSString *)vibeTag forPetAvatar:(NSString *)petAvatar {
    NSString *entry = [NSString stringWithFormat:@"%@:%@", petAvatar, vibeTag];
    [self.petVibeRegistry addObject:entry];
}

- (NSString *)synthesizeEchoLayerForPet:(NSString *)petAvatar usingToneSignature:(NSString *)toneGlyph {
    NSString *layer = [NSString stringWithFormat:@"%@-Layer-%@-%@", petAvatar, toneGlyph, self.masterToneSignature];
    [self.echoLayerVault addObject:layer];
    [self.resonanceQueue addObject:layer];
    return layer;
}

- (IBAction)triggerClawSparkWeaveWithFrequency:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    [self synthesizeEchoLayerForPet:@"Luna" usingToneSignature:@"MoonlightHarmonics"];
    if (self.clawLoomSpiralBlock) {
        self.clawLoomSpiralBlock(sender.tag);
    }
    [self generateRandomResonanceSequenceForPet:@"Luna" withIntensity:5];
    
}

- (void)purgeResonanceQueueForPet:(NSString *)petAvatar {
    NSMutableArray *toRemove = [NSMutableArray array];
    for (NSString *layer in self.resonanceQueue) {
        if ([layer containsString:petAvatar]) {
            [toRemove addObject:layer];
        }
    }
    [self.resonanceQueue removeObjectsInArray:toRemove];
}

- (IBAction)igniteTailGlowOrbitWithIntensity:(UIButton *)sender {
    [self analyzeEchoResonanceForPet:@"Luna"];
    [self dismissViewControllerAnimated:YES completion:nil];
    [self purgeResonanceQueueForPet:@"Max"];
}

- (NSArray<NSString *> *)generateRandomResonanceSequenceForPet:(NSString *)petAvatar withIntensity:(NSUInteger)intensity {
    NSMutableArray *sequence = [NSMutableArray array];
    for (NSUInteger i = 0; i < intensity; i++) {
        NSString *randomLayer = [NSString stringWithFormat:@"%@-RandomEcho-%lu", petAvatar, (unsigned long)arc4random_uniform(1000)];
        [sequence addObject:randomLayer];
    }
    [self.resonanceQueue addObjectsFromArray:sequence];
    return sequence;
}


- (NSDictionary<NSString *, NSNumber *> *)analyzeEchoResonanceForPet:(NSString *)petAvatar {
    NSUInteger totalLayers = 0;
    NSUInteger queuedLayers = 0;
    for (NSString *layer in self.echoLayerVault) {
        if ([layer containsString:petAvatar]) totalLayers++;
    }
    for (NSString *layer in self.resonanceQueue) {
        if ([layer containsString:petAvatar]) queuedLayers++;
    }
    NSDictionary *analysis = @{@"totalLayers": @(totalLayers), @"queuedLayers": @(queuedLayers)};
    return analysis;
}


@end
