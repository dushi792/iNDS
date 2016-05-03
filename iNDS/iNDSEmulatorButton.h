//
//  iNDSEmulatorButton.h
//  iNDS
//
//  Created by Will Cobb on 5/2/16.
//  Copyright © 2016 iNDS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iNDSEmulatorButton : UIControl

@property NSString  *title;
@property UILabel   *textLabel;
@property BOOL      selectable;
- (id)initWithFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action;

@end
