//
//  BNRMapPoint.m
//  WhereAreYou
//
//  Created by David Bloom on 6/29/14.
//  Copyright (c) 2014 David Bloom. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint



@synthesize title, coordinate;

    
- (id) initWithCoordinate : (CLLocationCoordinate2D)c title:(NSString *)t {


    self = [super init];
    if (self ){
        coordinate = c;
        [self setTitle : t];
    }
    
    return self;

};


- (id) init  {
    
    return [self initWithCoordinate : CLLocationCoordinate2DMake(43.07,-89.32) title:@"David"];
    
    
}





@end
