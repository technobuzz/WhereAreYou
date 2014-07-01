//
//  BNRMapPoint.h
//  WhereAreYou
//
//  Created by David Bloom on 6/29/14.
//  Copyright (c) 2014 David Bloom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface BNRMapPoint : NSObject <MKAnnotation>
{
   

}
    
    - (id) initWithCoordinate : (CLLocationCoordinate2D )c title:(NSString *)t ;
    
    @property (nonatomic,readonly) CLLocationCoordinate2D coordinate;
    @property(nonatomic,copy) NSString *title;



@end
