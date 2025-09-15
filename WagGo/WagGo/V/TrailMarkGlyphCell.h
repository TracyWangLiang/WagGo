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
@end

NS_ASSUME_NONNULL_END
