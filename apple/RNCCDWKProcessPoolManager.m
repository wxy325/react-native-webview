/**
 * Copyright (c) 2015-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <Foundation/Foundation.h>
#import "RNCCDWKProcessPoolManager.h"

@interface RNCCDWKProcessPoolManager() {
    WKProcessPool *_sharedProcessPool;
}
@end

@implementation RNCCDWKProcessPoolManager

+ (id) sharedManager {
    static RNCCDWKProcessPoolManager *_sharedManager = nil;
    @synchronized(self) {
        if(_sharedManager == nil) {
            _sharedManager = [[super alloc] init];
        }
        return _sharedManager;
    }
}

- (WKProcessPool *)sharedProcessPool {
    if (!_sharedProcessPool) {
        _sharedProcessPool = [[WKProcessPool alloc] init];
    }
    return _sharedProcessPool;
}

@end

