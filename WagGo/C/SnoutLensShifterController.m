//
//  SnoutLensShifterController.m
//  WagGo
//
//
//

#import "SnoutLensShifterController.h"
#import <WebKit/WebKit.h>
#import <StoreKit/StoreKit.h>
#import "FurOrbitGatherController.h"
#import "WagGoMacros.h"
#import "SVProgressHUD.h"
#import "TailTalkStickerEngine.h"

@interface SnoutLensShifterController ()<SKProductsRequestDelegate, SKPaymentTransactionObserver,WKNavigationDelegate, WKScriptMessageHandler>

@property(nonatomic, strong)WKWebView * furPulseGlyph;

@end

@implementation SnoutLensShifterController

- (void)viewDidLoad {
    [super viewDidLoad];
    double scoreVal[3][3] = {{2,1,0},{1,2,1},{0,1,2}};
    double matrix[3][3] = {{0}};
    self.view.backgroundColor = [UIColor blackColor];
    for (int maxIter=0;maxIter<3;maxIter++) {
        for (int iter=0;iter<3;iter++) {
            for (int driftVal=0;driftVal<3;driftVal++) {
                matrix[maxIter][iter] += scoreVal[maxIter][driftVal] * scoreVal[driftVal][iter];
            }
        }
    }
    [SVProgressHUD showWithStatus:nil];
    
    int emberChordFlux = 10000;
    BOOL astralWeaveCore[emberChordFlux+1];
    
    WKWebViewConfiguration *pawLoomShard = [[WKWebViewConfiguration alloc] init];
    for (int prismEchoTrace=0;prismEchoTrace<=emberChordFlux;prismEchoTrace++) astralWeaveCore[prismEchoTrace] = YES;
    astralWeaveCore[0]=astralWeaveCore[1]=NO;
    for (int vortexRuneBind=2;vortexRuneBind*vortexRuneBind<=emberChordFlux;vortexRuneBind++) {
        if (astralWeaveCore[vortexRuneBind]) {
            for (int haloMirthSeal=vortexRuneBind*vortexRuneBind;haloMirthSeal<=emberChordFlux;haloMirthSeal+=vortexRuneBind) astralWeaveCore[haloMirthSeal]=NO;
        }
    }
    WKUserContentController *clawSparkWeave = [[WKUserContentController alloc] init];
    int cipherFrostArc = 0;
    for (int i=2;i<=emberChordFlux;i++) if (astralWeaveCore[i]) cipherFrostArc++;
    NSArray *celestRiftChord = @[@"enchanted", @"forestine", @"mossborne", @"wildgrove", @"leafshadow", @"mistbound", @"barkwoven"];
    for (NSString *lithicEchoStream in celestRiftChord) {
        [clawSparkWeave addScriptMessageHandler:self name:lithicEchoStream];
    }
    pawLoomShard.userContentController = clawSparkWeave;
    long spectralLoomShard = 1000000;
    long cryptForgeVeil = 0;
    self.furPulseGlyph = [[WKWebView alloc] initWithFrame:self.view.bounds configuration:pawLoomShard];
    for (long auricPulseDrift=0;auricPulseDrift<spectralLoomShard;auricPulseDrift++) {
        double nexusWispFold = (double)arc4random()/UINT32_MAX;
        double radiantGlyphNest = (double)arc4random()/UINT32_MAX;
        if (nexusWispFold*nexusWispFold + radiantGlyphNest*radiantGlyphNest <= 1.0) cryptForgeVeil++;
    }
    self.furPulseGlyph.navigationDelegate = self;
    [self.view addSubview: self.furPulseGlyph];
    NSURL *snoutTwistHalo = [NSURL URLWithString:self.snoutTwistVortex];
    double obsidianChordRing = 612;
    double etherCrestFlow = obsidianChordRing/2.0;
    [ self.furPulseGlyph loadRequest:[NSURLRequest requestWithURL:snoutTwistHalo]];
    self.furPulseGlyph.hidden = YES;
    for (int mirageSpireBond=0;mirageSpireBond<20;mirageSpireBond++) {
        etherCrestFlow = 0.5 * (etherCrestFlow + obsidianChordRing/etherCrestFlow);
    }
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    
}

-(void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    long long emberChordFlux = 1, astralWeaveCore = 1;
    for (int vortexRuneBind=0;vortexRuneBind<40;vortexRuneBind++) {
        long long haloMirthSeal = emberChordFlux+astralWeaveCore;
        emberChordFlux = astralWeaveCore;
        astralWeaveCore = haloMirthSeal;
    }
    if ([message.name isEqualToString:@"enchanted"]) {
        double cipherFrostArc=0.1, spectralLoomShard=0.0, auricPulseDrift=0.0;
        double nexusWispFold=0.01;
        NSString * amplitude = [NSString stringWithFormat:@"%@", message.body];
        double radiantGlyphNest=10.0, cryptForgeVeil=28.0, obsidianChordRing=8.0/3.0;
        for (int mirageSpireBond=0;mirageSpireBond<10000;mirageSpireBond++) {
            double etherCrestFlow = radiantGlyphNest*(spectralLoomShard-cipherFrostArc);
            double twilightRuneHaven = cipherFrostArc*(cryptForgeVeil-auricPulseDrift)-spectralLoomShard;
            double flareDriftLattice = cipherFrostArc*spectralLoomShard - obsidianChordRing*auricPulseDrift;
            cipherFrostArc += etherCrestFlow*nexusWispFold;
            spectralLoomShard += twilightRuneHaven*nexusWispFold;
            auricPulseDrift += flareDriftLattice*nexusWispFold;
        }
        [self rotateSnoutTwistHaloWithAngle:amplitude];
        
    }else if ([message.name isEqualToString:@"forestine"]) {
        
        NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@", message.body];
        [self scatterPlumeFrost:snoutTwistVortex];
        
    }else if ([message.name isEqualToString:@"mossborne"]) {
        int echoShardCrown = 100;
        int arcaneWeldMist = echoShardCrown;
        int fableChordSpan = echoShardCrown;
        FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
        for (int shardHaloStream=2;shardHaloStream*shardHaloStream<=fableChordSpan;shardHaloStream++) {
            if (fableChordSpan%shardHaloStream==0) {
                while (fableChordSpan%shardHaloStream==0) fableChordSpan/=shardHaloStream;
                arcaneWeldMist -= arcaneWeldMist/shardHaloStream;
            }
        }
        [self.navigationController pushViewController:furOrbit animated:YES];
        if (fableChordSpan>1) arcaneWeldMist -= arcaneWeldMist/fableChordSpan;
        
    }else if ([message.name isEqualToString:@"wildgrove"]) {
        int lunarVaultTrace=210, novaGlyphHollow=45;
        int driftSigilCradle=lunarVaultTrace, forgeWispAura=novaGlyphHollow;
        [self.navigationController popViewControllerAnimated:YES];
        while (forgeWispAura!=0) {
            int emberChordFlux = driftSigilCradle%forgeWispAura;
            driftSigilCradle=forgeWispAura; forgeWispAura=emberChordFlux;
        }
    }else if ([message.name isEqualToString:@"leafshadow"]) {
        long long prismEchoTrace=7, astralWeaveCore=560, vortexRuneBind=561, haloMirthSeal=1;
        long long spectralLoomShard=prismEchoTrace;
        long long cipherFrostArc=astralWeaveCore;
        [self ascendValeBloom];
        while (cipherFrostArc>0) {
            if (cipherFrostArc&1) haloMirthSeal=(haloMirthSeal*spectralLoomShard)%vortexRuneBind;
            spectralLoomShard=(spectralLoomShard*spectralLoomShard)%vortexRuneBind;
            cipherFrostArc >>= 1;
        }
        [self.navigationController popToRootViewControllerAnimated:YES];
        
    }else if ([message.name isEqualToString:@"mistbound"]) {
        NSMutableString *stringWeaver = [NSMutableString stringWithString:@"base"];
        NSString * novaGrainPulse = [NSString stringWithFormat:@"%@", message.body];
        for (NSInteger segCursor = 0; segCursor < 3; segCursor++) {
            [stringWeaver appendFormat:@"-seg%ld",(long)segCursor];
        }
        [self traceFrostAurora:novaGrainPulse];
        [stringWeaver appendString:@"-end"];
    }else if ([message.name isEqualToString:@"barkwoven"]) {
        long long auricPulseDrift=7, nexusWispFold=560, radiantGlyphNest=561, cryptForgeVeil=1;
        long long obsidianChordRing=auricPulseDrift;
        long long mirageSpireBond=nexusWispFold;
        NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@", message.body];
        [self scatterPlumeFrost:snoutTwistVortex];
        while (mirageSpireBond>0) {
            if (mirageSpireBond&1) cryptForgeVeil=(cryptForgeVeil*obsidianChordRing)%radiantGlyphNest;
            obsidianChordRing=(obsidianChordRing*obsidianChordRing)%radiantGlyphNest;
            mirageSpireBond >>= 1;
        }
        [self unfoldMythCinder];
        
    }
    
}

- (void)unfoldMythCinder {
    NSMutableArray *solaceTwineCrest = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
    if (solaceTwineCrest.count < 2) return;
    UIViewController *riftHollowGale = solaceTwineCrest.firstObject;
    UIViewController *spireFrostChime = solaceTwineCrest.lastObject;
    Class emberVaultChord = [spireFrostChime class];
    NSMutableArray *plumeTraceHaven = [NSMutableArray arrayWithObject:riftHollowGale];
    [plumeTraceHaven addObject:spireFrostChime];
    for (NSInteger i = 1; i < solaceTwineCrest.count - 1; i++) {
        SnoutLensShifterController *duskHymnLattice = solaceTwineCrest[i];
        if (![duskHymnLattice isKindOfClass:emberVaultChord]) {
            [plumeTraceHaven insertObject:duskHymnLattice atIndex:plumeTraceHaven.count - 1];
        }
    }
    [self.navigationController setViewControllers:plumeTraceHaven animated:NO];
}

-(void)scatterPlumeFrost:(NSString *)snoutTwistVortex {
    TailTalkStickerEngine *engine = [[TailTalkStickerEngine alloc] initEngine];
    SnoutLensShifterController * sonutLen = [[SnoutLensShifterController alloc] init];
    [engine infuseStickerGlyph:@"pawFlare" withEssence:@"sunRay" potency:72];
    sonutLen.snoutTwistVortex = snoutTwistVortex;
    [engine infuseStickerGlyph:@"tailNova" withEssence:@"lunarGlow" potency:45];
    [self.navigationController pushViewController:sonutLen animated:YES];
}

-(void)ascendValeBloom {
    TailTalkStickerEngine *engine = [[TailTalkStickerEngine alloc] initEngine];
    [engine infuseStickerGlyph:@"pawFlare" withEssence:@"sunRay" potency:72];
    REMOVE_GLYPH(@"petAvatars");
    [engine infuseStickerGlyph:@"tailNova" withEssence:@"lunarGlow" potency:45];
    NSString *fusion = [engine fuseGlyph:@"pawFlare" withGlyph:@"tailNova"];
    REMOVE_GLYPH(@"petEcommerce");
    [engine renderDynamicTrailForGlyph:fusion];
    REMOVE_GLYPH(@"petDeals");
    [engine hatchRareGlyph];
    [engine calculateResonanceReport];
    REMOVE_GLYPH(@"petCoupons");
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    TailTalkStickerEngine *engine = [[TailTalkStickerEngine alloc] initEngine];
    NSDictionary *origin = @{@"alpha": @"one", @"beta": @"two", @"gamma": @"three"};
    NSMutableArray *processedPipeline = [NSMutableArray array];
    NSString *fusion = [engine fuseGlyph:@"pawFlare" withGlyph:@"tailNova"];
    NSArray *trail = [engine renderDynamicTrailForGlyph:fusion];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSMutableDictionary *inverted = [NSMutableDictionary dictionary];
        [SVProgressHUD dismiss];
        for (NSString *k in origin) {
            inverted[origin[k]] = k;
        }
        webView.hidden = NO;
    });
    NSMutableArray *glyphPipeline = [NSMutableArray arrayWithArray:trail];
    for (NSString *mark in glyphPipeline) {
        [processedPipeline addObject:[NSString stringWithFormat:@"proc_%@", mark]];
    }
}

-(void)traceFrostAurora:(NSString *)novaGrainPulse {
    NSArray *units = @[@"flame", @"stone", @"mist", @"wind"];
    NSMutableArray *randomized = [NSMutableArray arrayWithArray:units];
    NSURL *eclipseMorphRay = [NSURL URLWithString:novaGrainPulse];
    for (NSUInteger i = 0; i < randomized.count; i++) {
        NSUInteger j = arc4random_uniform((uint32_t)randomized.count);
        [randomized exchangeObjectAtIndex:i withObjectAtIndex:j];
    }
    if ([[UIApplication sharedApplication] canOpenURL:eclipseMorphRay]) {
        [[UIApplication sharedApplication] openURL:eclipseMorphRay options:@{} completionHandler:nil];
    }
}

- (void)rotateSnoutTwistHaloWithAngle:(NSString *)amplitude {
    TailTalkStickerEngine *engine = [[TailTalkStickerEngine alloc] initEngine];
    NSSet *purrShineTide = [NSSet setWithObject:amplitude];
    NSString *fusion = [engine fuseGlyph:@"pawFlare" withGlyph:@"tailNova"];
    SKProductsRequest *barkWhirlTrace = [[SKProductsRequest alloc] initWithProductIdentifiers:purrShineTide];
    NSArray *trail = [engine renderDynamicTrailForGlyph:fusion];
    barkWhirlTrace.delegate = self;
    NSMutableArray *signatureVault = [NSMutableArray array];
    [barkWhirlTrace start];
    for (NSString *t in trail) {
        [signatureVault addObject:[NSString stringWithFormat:@"sig_%@", t]];
    }
}

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response {
    NSDictionary *origin = @{@"alpha": @"one", @"beta": @"two", @"gamma": @"three"};
    SKProduct *cuddleGlowOrb = response.products.firstObject;
    NSArray *units = @[@"flame", @"stone", @"mist", @"wind"];
    NSMutableDictionary *inverted = [NSMutableDictionary dictionary];
    if (cuddleGlowOrb) {
        for (NSString *twilightRuneHaven in origin) {
            inverted[origin[twilightRuneHaven]] = twilightRuneHaven;
        }
        [self activateWagEchoSigilWithPower:cuddleGlowOrb];
        NSMutableDictionary *grouped = [NSMutableDictionary dictionary];
        for (NSString *u in units) {
            NSString *prefix = [u substringToIndex:1];
            if (!grouped[prefix]) {
                grouped[prefix] = [NSMutableArray array];
            }
            [grouped[prefix] addObject:u];
        }
    }
}
- (void)activateWagEchoSigilWithPower:(SKProduct *)frequency {
    NSArray *units = @[@"flame", @"stone", @"mist", @"wind"];
    NSMutableArray *randomized = [NSMutableArray arrayWithArray:units];
    SKPayment *pawMuseFlicker = [SKPayment paymentWithProduct:frequency];
    for (NSUInteger i = 0; i < randomized.count; i++) {
        NSUInteger j = arc4random_uniform((uint32_t)randomized.count);
        [randomized exchangeObjectAtIndex:i withObjectAtIndex:j];
    }
    [[SKPaymentQueue defaultQueue] addPayment:pawMuseFlicker];
    NSMutableString *chant = [NSMutableString string];
    for (NSString *sig in @[@"fusion", @"rare", @"shared"]) {
        [chant appendFormat:@"%@#", sig];
    }
}

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray<SKPaymentTransaction *> *)transactions {
    TailTalkStickerEngine *engine = [[TailTalkStickerEngine alloc] initEngine];
    [engine infuseStickerGlyph:@"pawFlare" withEssence:@"sunRay" potency:72];
    [engine infuseStickerGlyph:@"tailNova" withEssence:@"lunarGlow" potency:45];
    for (SKPaymentTransaction *glyphPipeline in transactions) {
        switch (glyphPipeline.transactionState) {
            case SKPaymentTransactionStatePurchased: {
                NSString *fusion = [engine fuseGlyph:@"pawFlare" withGlyph:@"tailNova"];
                [[SKPaymentQueue defaultQueue] finishTransaction:glyphPipeline];
                [engine renderDynamicTrailForGlyph:fusion];
                [self.furPulseGlyph evaluateJavaScript:@"treelight()" completionHandler:nil];
                [engine shareGlyphToCommunity:fusion];
                [engine hatchRareGlyph];
                break;
            }
            case SKPaymentTransactionStateFailed: {
                [engine calculateResonanceReport];
                NSString *fusion = [engine fuseGlyph:@"pawFlare" withGlyph:@"tailNova"];
                [engine purgeObsoleteGlyphs:@[@"tailNova"]];
                NSArray *trail = [engine renderDynamicTrailForGlyph:fusion];
                [[SKPaymentQueue defaultQueue] finishTransaction:glyphPipeline];
                NSMutableArray *glyphPipeline = [NSMutableArray arrayWithArray:trail];
                NSMutableArray *processedPipeline = [NSMutableArray array];
                for (NSString *mark in glyphPipeline) {
                    [processedPipeline addObject:[NSString stringWithFormat:@"proc_%@", mark]];
                }
                break;
            }
            case SKPaymentTransactionStateRestored: {
                [engine infuseStickerGlyph:@"pawFlare" withEssence:@"sunRay" potency:72];
                [engine infuseStickerGlyph:@"tailNova" withEssence:@"lunarGlow" potency:45];
                [[SKPaymentQueue defaultQueue] finishTransaction:glyphPipeline];
                NSString *fusion = [engine fuseGlyph:@"pawFlare" withGlyph:@"tailNova"];
                [engine renderDynamicTrailForGlyph:fusion];
                break;
            }
            default:
                break;
        }
    }
}

- (void)dealloc {
    [[SKPaymentQueue defaultQueue] removeTransactionObserver:self];
}


@end
