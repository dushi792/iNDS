//
//  iNDSEmulatorButton.m
//  iNDS
//
//  Created by Will Cobb on 5/2/16.
//  Copyright © 2016 iNDS. All rights reserved.
//

#import "iNDSEmulatorButton.h"

@implementation iNDSEmulatorButton

- (id)initWithFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action
{
    if (self = [super initWithFrame:frame]) {
        self.title = title;
        self.textLabel = [[UILabel alloc] initWithFrame:self.bounds];
        self.textLabel.font = [UIFont systemFontOfSize:12];
        self.textLabel.textColor = [UIColor whiteColor];
        self.textLabel.text = title;
        self.textLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:self.textLabel];
        
        [self addTarget:self action:@selector(touchDown) forControlEvents:UIControlEventTouchDown];
        [self addTarget:self action:@selector(touchDown) forControlEvents:UIControlEventTouchDragEnter];
        [self addTarget:self action:@selector(touchOut) forControlEvents:UIControlEventTouchDragExit];
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        
        //Style
        self.layer.borderWidth = 0.5;
        self.layer.borderColor = [UIColor whiteColor].CGColor;
        self.backgroundColor = [UIColor colorWithRed:0.2 green:0.4 blue:0.8 alpha:0.5];
        //self.alpha = 0.8;
    }
    return self;
}

- (void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    if (highlighted) {
        self.backgroundColor = [UIColor blueColor];
    } else if (!self.selectable) {
        self.backgroundColor = self.backgroundColor = [UIColor colorWithRed:0.2 green:0.4 blue:0.8 alpha:0.5];
    }
}

- (void)touchDown
{
    NSLog(@"Down");
    self.highlighted = YES;
}

- (void)touchOut
{
    self.highlighted = NO;
}

@end
