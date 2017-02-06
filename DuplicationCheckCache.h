//
//  DuplicationCheckCache.h
//  husky
//
//  Created by Ed on 2016/4/6.
//  Copyright © 2016年 LiaoEd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DuplicationCheckCache : NSCache

+ (DuplicationCheckCache*)sharedCache;

@end
