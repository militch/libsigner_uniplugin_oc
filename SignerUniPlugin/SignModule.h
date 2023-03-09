//
//  SignModule.h
//  SignerUniPlugin
//
//  Created by Militch on 2023/3/7.
//

#ifndef SignModule_h
#define SignModule_h

#import <Foundation/Foundation.h>
#import "DCUni/DCUniModule.h"

NS_ASSUME_NONNULL_BEGIN
@interface SignModule: DCUniModule

- (NSString *) signToHex: (NSString *) msg;

@end
NS_ASSUME_NONNULL_END

#endif /* SignModule_h */
