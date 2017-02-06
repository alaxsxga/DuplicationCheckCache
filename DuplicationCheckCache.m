//
//  DuplicationCheckCache.m
//  husky
//
//  Created by Ed on 2016/4/6.
//  Copyright © 2016年 LiaoEd. All rights reserved.
//

#import "DuplicationCheckCache.h"

static DuplicationCheckCache* duplicationCheckCache = nil;


@implementation DuplicationCheckCache

+ (DuplicationCheckCache*)sharedCache
{
    if (duplicationCheckCache == nil) {
        
        duplicationCheckCache = [[DuplicationCheckCache alloc] init];
        
        /* cache所能容納objects的最大數量，超過就會有object被踢掉 */
        [duplicationCheckCache setCountLimit:1000];
        
        /* cache所能容納的最大單位，搭配setObject:forKey:cost:使用，例如：
         [cache setTotalCostLimit:10];
         [cache setObject:obj forKey:key cost:3];
         一個object需要3個cost，而cost上限是10，所以最多存在3個object。
         應用：cost可傳入object的bytes。
         */
//        [duplicationCheckCache setTotalCostLimit:1000];        
        
    }
    return duplicationCheckCache;
}

@end
