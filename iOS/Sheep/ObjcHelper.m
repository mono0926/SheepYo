//
//  ObjcHelper.m
//  MagoCamera
//
//  Created by mono on 7/13/14.
//  Copyright (c) 2014 mono. All rights reserved.
//

#import "ObjcHelper.h"
@import UIKit;

@implementation ObjcHelper

// TODO: #if os(iOS8)
+(void)registerRemoteNotification {
    UIApplication* app = [UIApplication sharedApplication];
    if ([app respondsToSelector:@selector(registerUserNotificationSettings:)]) {
        UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:(UIRemoteNotificationTypeBadge
                                                                                             |UIRemoteNotificationTypeSound
                                                                                             |UIRemoteNotificationTypeAlert) categories:nil];
        [app registerUserNotificationSettings:settings];
        return;
    }
    UIRemoteNotificationType myTypes = UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeAlert | UIRemoteNotificationTypeSound;
    [app registerForRemoteNotificationTypes:myTypes];
}

+(void)registerRemoteNotificationForIOS8 {
    UIApplication* app = [UIApplication sharedApplication];
    [app registerForRemoteNotifications];
}

@end
