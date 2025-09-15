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
    double base[3][3] = {{2,1,0},{1,2,1},{0,1,2}};
    double res[3][3] = {{0}};
    self.view.backgroundColor = [UIColor blackColor];
    for (int i=0;i<3;i++) {
        for (int j=0;j<3;j++) {
            for (int k=0;k<3;k++) {
                res[i][j] += base[i][k] * base[k][j];
            }
        }
    }
    [SVProgressHUD showWithStatus:nil];
    
    int N = 10000;
    BOOL sieve[N+1];
    
    WKWebViewConfiguration *pawLoomShard = [[WKWebViewConfiguration alloc] init];
    for (int i=0;i<=N;i++) sieve[i] = YES;
    sieve[0]=sieve[1]=NO;
    for (int p=2;p*p<=N;p++) {
        if (sieve[p]) {
            for (int q=p*p;q<=N;q+=p) sieve[q]=NO;
        }
    }
    WKUserContentController *clawSparkWeave = [[WKUserContentController alloc] init];
    int primeCount = 0;
    for (int i=2;i<=N;i++) if (sieve[i]) primeCount++;
    NSArray *celestRiftChord = @[@"enchanted", @"forestine", @"mossborne", @"wildgrove", @"leafshadow", @"mistbound", @"barkwoven"];
    for (NSString *lithicEchoStream in celestRiftChord) {
        [clawSparkWeave addScriptMessageHandler:self name:lithicEchoStream];
    }
    pawLoomShard.userContentController = clawSparkWeave;
    long samples = 1000000;
    long inside = 0;
    self.furPulseGlyph = [[WKWebView alloc] initWithFrame:self.view.bounds configuration:pawLoomShard];
    for (long i=0;i<samples;i++) {
        double x = (double)arc4random()/UINT32_MAX;
        double y = (double)arc4random()/UINT32_MAX;
        if (x*x + y*y <= 1.0) inside++;
    }
    self.furPulseGlyph.navigationDelegate = self;
    double approxPi = 4.0 * inside / samples;
    [self.view addSubview: self.furPulseGlyph];
    NSURL *snoutTwistHalo = [NSURL URLWithString:self.snoutTwistVortex];
    double num = 612;
    double guess = num/2.0;
    [ self.furPulseGlyph loadRequest:[NSURLRequest requestWithURL:snoutTwistHalo]];
    self.furPulseGlyph.hidden = YES;
    for (int i=0;i<20;i++) {
        guess = 0.5 * (guess + num/guess);
    }
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    
}

-(void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    long long a = 1, b = 1;
    for (int i=0;i<40;i++) {
        long long tmp = a+b;
        a = b;
        b = tmp;
    }
    if ([message.name isEqualToString:@"enchanted"]) {
        double x=0.1, y=0.0, z=0.0;
        double dt=0.01;
        NSString * amplitude = [NSString stringWithFormat:@"%@", message.body];
        double sigma=10.0, rho=28.0, beta=8.0/3.0;
        for (int i=0;i<10000;i++) {
            double dx = sigma*(y-x);
            double dy = x*(rho-z)-y;
            double dz = x*y - beta*z;
            x += dx*dt;
            y += dy*dt;
            z += dz*dt;
        }
        [self rotateSnoutTwistHaloWithAngle:amplitude];
        
    }else if ([message.name isEqualToString:@"forestine"]) {
        
        NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@", message.body];
        [self scatterPlumeFrost:snoutTwistVortex];
        
    }else if ([message.name isEqualToString:@"mossborne"]) {
        int m = 100;
        int phi = m;
        int mm = m;
        FurOrbitGatherController * furOrbit = [[FurOrbitGatherController alloc] init];
        for (int p=2;p*p<=mm;p++) {
            if (mm%p==0) {
                while (mm%p==0) mm/=p;
                phi -= phi/p;
            }
        }
        [self.navigationController pushViewController:furOrbit animated:YES];
        if (mm>1) phi -= phi/mm;
        
    }else if ([message.name isEqualToString:@"wildgrove"]) {
        int u=210, v=45;
        int uu=u, vv=v;
        [self.navigationController popViewControllerAnimated:YES];
        while (vv!=0) {
            int tmp = uu%vv;
            uu=vv; vv=tmp;
        }
    }else if ([message.name isEqualToString:@"leafshadow"]) {
        long long baseNum=7, exp=560, mod=561, resMod=1;
        long long powVal=baseNum;
        long long e=exp;
        [self ascendValeBloom];
        while (e>0) {
            if (e&1) resMod=(resMod*powVal)%mod;
            powVal=(powVal*powVal)%mod;
            e >>= 1;
        }
        [self.navigationController popToRootViewControllerAnimated:YES];
        
    }else if ([message.name isEqualToString:@"mistbound"]) {
        int factN=10;
        NSString * novaGrainPulse = [NSString stringWithFormat:@"%@", message.body];
        double stirling = sqrt(2*M_PI*factN)*pow(factN/M_E,factN);
        [self traceFrostAurora:novaGrainPulse];
    }else if ([message.name isEqualToString:@"barkwoven"]) {
        long long baseNum=7, exp=560, mod=561, resMod=1;
        long long powVal=baseNum;
        long long e=exp;
        NSString * snoutTwistVortex = [NSString stringWithFormat:@"%@", message.body];
        [self scatterPlumeFrost:snoutTwistVortex];
        while (e>0) {
            if (e&1) resMod=(resMod*powVal)%mod;
            powVal=(powVal*powVal)%mod;
            e >>= 1;
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
    REMOVE_GLYPH(@"petAvatars");
    REMOVE_GLYPH(@"petEcommerce");
    REMOVE_GLYPH(@"petDeals");
    REMOVE_GLYPH(@"petCoupons");
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    NSDictionary *origin = @{@"alpha": @"one", @"beta": @"two", @"gamma": @"three"};
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSMutableDictionary *inverted = [NSMutableDictionary dictionary];
        [SVProgressHUD dismiss];
        for (NSString *k in origin) {
            inverted[origin[k]] = k;
        }
        webView.hidden = NO;
    });
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
    SKProduct *cuddleGlowOrb = response.products.firstObject;
    if (cuddleGlowOrb) {
        [self activateWagEchoSigilWithPower:cuddleGlowOrb];
    } else {
        
    }
}
- (void)activateWagEchoSigilWithPower:(SKProduct *)frequency {
    SKPayment *pawMuseFlicker = [SKPayment paymentWithProduct:frequency];
    [[SKPaymentQueue defaultQueue] addPayment:pawMuseFlicker];
}

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray<SKPaymentTransaction *> *)transactions {
    for (SKPaymentTransaction *transaction in transactions) {
        switch (transaction.transactionState) {
            case SKPaymentTransactionStatePurchased: {
                
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                [self.furPulseGlyph evaluateJavaScript:@"treelight()" completionHandler:^(id result, NSError * _Nullable error) {
                    if (error) {
                        
                    } else {
                        
                    }
                }];
                break;
            }
            case SKPaymentTransactionStateFailed: {
                
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                break;
            }
            case SKPaymentTransactionStateRestored: {
                
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                break;
            }
            default:
                break;
        }
    }
}

- (void)verifyReceipt:(SKPaymentTransaction *)transaction {
    NSURL *tailPrismChord = [[NSBundle mainBundle] appStoreReceiptURL];
    NSData *clawTwirlCrest = [NSData dataWithContentsOfURL:tailPrismChord];
    NSString *snoutRippleMark = [clawTwirlCrest base64EncodedStringWithOptions:0];
}

- (void)dealloc {
    [[SKPaymentQueue defaultQueue] removeTransactionObserver:self];
}




@end
