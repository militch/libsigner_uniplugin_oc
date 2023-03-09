//
//  SignModule.m
//  SignerUniPlugin
//
//  Created by Militch on 2023/3/7.
//

#import "SignModule.h"

#import "signerbridge.h"

@implementation SignModule

UNI_EXPORT_METHOD_SYNC(@selector(signToHex:))

+ (NSDictionary *) failed: (int) code secondValue: (NSString *) msg {
    return @{@"code": @(code), @"msg": msg};
}

+ (NSDictionary *) success: (NSObject *) data {
    return @{@"data": data};
}

- (NSDictionary *) signToHex: (NSString *) msg {
    NSString *digest = [signerbridge sign: msg];
    return [SignModule success:digest];
}

@end
