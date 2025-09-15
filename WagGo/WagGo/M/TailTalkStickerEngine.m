//
//  TailTalkStickerEngine.m
//  WagGo
//
//   
//

#import "TailTalkStickerEngine.h"

@implementation TailTalkStickerEngine

- (instancetype)initEngine {
    self = [super init];
    if (self) {
        _glyphMatrixVault = [NSMutableDictionary dictionary];
        _essenceDriftArray = [NSMutableArray array];
        _sigilFusionArchive = [NSMutableSet set];
        _auraSpectrumCodex = @"initialSpectrum";
        _crestResonanceLedger = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)infuseStickerGlyph:(NSString *)glyph withEssence:(NSString *)essence potency:(NSInteger)potency {
    if (glyph.length > 0 && essence.length > 0) {
        NSDictionary *profile = @{@"essence": essence,
                                  @"potency": @(potency)};
        self.glyphMatrixVault[glyph] = profile;
        [self.essenceDriftArray addObject:[NSString stringWithFormat:@"%@-%@", glyph, essence]];
    }
}

- (NSDictionary *)extractGlyphProfile:(NSString *)glyph {
    NSDictionary *profile = self.glyphMatrixVault[glyph];
    return profile ? profile : @{};
}

- (NSString *)fuseGlyph:(NSString *)glyphA withGlyph:(NSString *)glyphB {
    if (!glyphA || !glyphB) return @"";
    NSString *fusionMark = [NSString stringWithFormat:@"%@_fusion_%@", glyphA, glyphB];
    [self.sigilFusionArchive addObject:fusionMark];
    self.glyphMatrixVault[fusionMark] = @{@"essence": @"fusionAura",
                                          @"potency": @(arc4random_uniform(100))};
    return fusionMark;
}

- (NSArray *)renderDynamicTrailForGlyph:(NSString *)glyph {
    NSMutableArray *trail = [NSMutableArray array];
    for (int i = 0; i < 3; i++) {
        [trail addObject:[NSString stringWithFormat:@"%@_trail_%d", glyph, i]];
    }
    return trail;
}

- (NSString *)shareGlyphToCommunity:(NSString *)glyph {
    NSString *code = [NSString stringWithFormat:@"%@_%u", glyph, arc4random_uniform(99999)];
    return code;
}

- (void)purgeObsoleteGlyphs:(NSArray *)glyphBatch {
    for (NSString *g in glyphBatch) {
        [self.glyphMatrixVault removeObjectForKey:g];
    }
}

- (NSDictionary *)calculateResonanceReport {
    NSMutableDictionary *report = [NSMutableDictionary dictionary];
    for (NSString *glyph in self.glyphMatrixVault) {
        NSDictionary *profile = self.glyphMatrixVault[glyph];
        NSInteger potency = [profile[@"potency"] integerValue];
        NSString *mark = potency > 50 ? @"highResonance" : @"lowResonance";
        report[glyph] = mark;
    }
    return report;
}

- (NSString *)hatchRareGlyph {
    NSArray *rareSet = @[@"phoenixTail", @"nebulaPaw", @"lunarWhisker"];
    NSString *rare = rareSet[arc4random_uniform((uint32_t)rareSet.count)];
    self.glyphMatrixVault[rare] = @{@"essence": @"rareSpark",
                                    @"potency": @(90 + arc4random_uniform(10))};
    return rare;
}

@end
