//
//  WhereAreYouViewController.h
//  WhereAreYou
//
//  Created by David Bloom on 6/15/14.
//  Copyright (c) 2014 David Bloom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
//#import <MapKit/MapKit.h>

@interface WhereAreYouViewController : UIViewController
<CLLocationManagerDelegate> {


    CLLocationManager *locationManager;
    // displays label and recordedlocations
    //IBOutlet MKMapView *mapView;
    // working or not indictor
    //IBOutlet UIActivityIndicatorView *activityIndicator;
    // display fieldq
    //IBOutlet UITextField *locationTitleField;
    
    
    // 3 conecctions from file owner to nib
    //- outlets
    // 2 connections from view/text field to owner
    // - delegate

}

@end
