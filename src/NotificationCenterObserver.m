//
//  NotificationCenterObserver.m
//  pebble-notifier
//
//  Created by Boris Bügling on 12.04.13.
//  Copyright (c) 2013 Boris Bügling. All rights reserved.
//

#import "NotificationCenterObserver.h"
#import "TSAppRecord.h"
#import "TSNCMetaController.h"
#import "TSNCMetaControllerDelegate.h"

@interface NotificationCenterObserver () <TSNCMetaControllerDelegate>

@property (nonatomic, strong) TSNCMetaController* metaController;

@end

#pragma mark -

@implementation NotificationCenterObserver

-(void)startObserving {
    self.metaController = [[TSNCMetaController alloc] init];
    self.metaController.delegate = self;
    [self.metaController startOperations];
}

#pragma mark - TSNCMetaController delegate methods

-(void)hasBecomeInvisible {
}

-(void)hasBecomeVisible {
}

-(void)newNotifications:(NSArray *)newNotifications {
    for (TSAppRecord* newNotification in newNotifications) {
        NSLog(@"%@", newNotification.displayTitle);
    }
}

@end
