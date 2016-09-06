//
//  ChatManager.h
//  ChatLib
//
//  Created by stefan Renne & Ruud Puts
//

#import <UIKit/UIKit.h>

@class ChatManager;
@protocol ChatManagerDelegate<NSObject>
- (void)didReceiveMessage:(NSString *)message from:(NSString *)author;
@end


@interface ChatManager : NSObject

- (instancetype)initWithDelegate:(NSObject<ChatManagerDelegate> *)delegate name:(NSString *)name;
- (void)sendChatMessage:(NSString *)message;

@end
