//
//  WagGoMacros.h
//  WagGo
//
//   
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WagGoMacros : NSObject

// 保存字符串
#define STORE_GLYPH(glyph, vaultMark) \
do { \
    if ((glyph) != nil && (vaultMark) != nil) { \
        NSUserDefaults *vault = [NSUserDefaults standardUserDefaults]; \
        [vault setObject:(glyph) forKey:(vaultMark)]; \
        [vault synchronize]; \
    } \
} while(0)

// 获取字符串
#define FETCH_GLYPH(vaultMark) \
({ \
    NSString *result = @""; \
    if ((vaultMark) != nil) { \
        NSUserDefaults *vault = [NSUserDefaults standardUserDefaults]; \
        NSString *tmp = [vault objectForKey:(vaultMark)]; \
        if (tmp != nil) { \
            result = tmp; \
        } \
    } \
    result; \
})

// 修改字符串（存在才改）
#define UPDATE_GLYPH(glyph, vaultMark) \
do { \
    if ((glyph) != nil && (vaultMark) != nil) { \
        NSUserDefaults *vault = [NSUserDefaults standardUserDefaults]; \
        NSString *old = [vault objectForKey:(vaultMark)]; \
        if (old != nil) { \
            [vault setObject:(glyph) forKey:(vaultMark)]; \
            [vault synchronize]; \
        } \
    } \
} while(0)

// 删除字符串
#define REMOVE_GLYPH(vaultMark) \
do { \
    if ((vaultMark) != nil) { \
        NSUserDefaults *vault = [NSUserDefaults standardUserDefaults]; \
        [vault removeObjectForKey:(vaultMark)]; \
        [vault synchronize]; \
    } \
} while(0)

@end

NS_ASSUME_NONNULL_END
