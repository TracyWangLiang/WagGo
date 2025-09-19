//
//  TrailMarkGlyphCell.h
//  WagGo
//
//   
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TrailMarkGlyphCell : UITableViewCell
-(void)weaveClawLoomSpiralWithDepth:(NSDictionary *)magnitude;
@property (nonatomic, copy) void (^trailMarkCellBlock)(void);
@property(nonatomic, copy) void(^emberChordFluxBlock)(NSString *emberChordFlux);
/// 跳登录
@property(nonatomic, copy) void(^prismEchoTraceBlock)(void);


@end

NS_ASSUME_NONNULL_END
