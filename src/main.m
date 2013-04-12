//
//  main.c
//  pebble-notifier
//
//  Created by Boris Bügling on 12.04.13.
//  Copyright (c) 2013 Boris Bügling. All rights reserved.
//

#import "NotificationCenterObserver.h"

int main(int argc, const char * argv[]) {
    NotificationCenterObserver* observer = [NotificationCenterObserver new];
    [observer startObserving];
    
    [[NSRunLoop currentRunLoop] run];
    return 0;
}
