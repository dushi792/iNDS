//
//  iNDSEmulatorOverlayView.m
//  iNDS
//
//  Created by Will Cobb on 5/2/16.
//  Copyright © 2016 iNDS. All rights reserved.
//

#import "iNDSEmulatorOverlayView.h"
#import "iNDSEmulatorButton.h"
#import "AppDelegate.h"
#import "iNDSEmulatorViewController.h"
@interface iNDSEmulatorOverlayView () {
    NSMutableArray *saveStates;
}

@end

@implementation iNDSEmulatorOverlayView

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        /* Options */
        iNDSEmulatorButton *resume = [[iNDSEmulatorButton alloc] initWithFrame:CGRectMake(frame.size.width - 90, 40, 85, 30) title:@"Resume" target:self action:@selector(exit)];
        [self addSubview:resume];
        
        iNDSEmulatorButton *exit = [[iNDSEmulatorButton alloc] initWithFrame:CGRectMake(frame.size.width - 90, 75, 85, 30) title:@"Exit" target:self action:@selector(exit)];
        [self addSubview:exit];
        
        iNDSEmulatorButton *settings = [[iNDSEmulatorButton alloc] initWithFrame:CGRectMake(frame.size.width - 90, 110, 85, 30) title:@"Settings" target:self action:@selector(exit)];
        [self addSubview:settings];
        
        iNDSEmulatorButton *cheats = [[iNDSEmulatorButton alloc] initWithFrame:CGRectMake(frame.size.width - 90, 145, 85, 30) title:@"Cheats" target:self action:@selector(exit)];
        [self addSubview:cheats];
        
        /* Save States */
        iNDSEmulatorButton *saveSate = [[iNDSEmulatorButton alloc] initWithFrame:CGRectMake(5, 40, 85, 30) title:@"Save State" target:self action:@selector(saveState)];
        [self addSubview:saveSate];
        
        iNDSEmulatorButton *loadSate = [[iNDSEmulatorButton alloc] initWithFrame:CGRectMake(95, 40, 85, 30) title:@"Load State" target:self action:@selector(loadState)];
        [self addSubview:loadSate];
        
        for (int i = 0; i < 5; i++) {
            iNDSEmulatorButton *saveState = [[iNDSEmulatorButton alloc] initWithFrame:CGRectMake(5 + 36 * i, 75, 30, 30)
                                                                                title:[NSString stringWithFormat:@"%d", i]
                                                                               target:self action:@selector(selectSaveState:)];
            saveState.tag = i;
            [self addSubview:saveState];
        }
        
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
    }
    return self;
}

- (iNDSEmulatorViewController *)emulatorView
{
    return [AppDelegate.sharedInstance currentEmulatorViewController];
}

- (void)exit
{
    [self.emulatorView exitEmulation];
}

////// Save States /////

- (void)saveState
{
    
}

- (void)loadState
{
    
}

- (void)selectSaveState:(iNDSEmulatorButton *)sender;
{
    
}

@end
