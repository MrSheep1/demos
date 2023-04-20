//
//  UnlockViewController.h
//  UnlockApp
//
//  Created by yangtao on 2023/4/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnlockViewController : UIViewController

@property (nonatomic, copy) void (^unlockCompleteBlock) (void);

@end

NS_ASSUME_NONNULL_END
