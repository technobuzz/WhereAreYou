//
//  WhereAreYouViewController.m
//  WhereAreYou
//
//  Created by David Bloom on 6/15/14.
//  Copyright (c) 2014 David Bloom. All rights reserved.
//

#import "WhereAreYouViewController.h"

@interface WhereAreYouViewController ()

@end

@implementation WhereAreYouViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        locationManager = [[CLLocationManager alloc] init];
        
        [locationManager setDelegate:self];
    
        [locationManager setDesiredAccuracy: kCLLocationAccuracyBest];
        
        
        // using setShowsUserLocation instead for MKMapView
        [locationManager startUpdatingLocation];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // added to determin location
    //[mapView setShowsUserLocation:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (void)locationManager: (CLLocationManager *)manager
        didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation     {
    
    NSLog (@"%@", newLocation);
}

- (void)locationManager: (CLLocationManager *)manager

           didFailWithError:(NSError *)error   {
    
    NSLog (@"David location manager error %@", error);
}


@end
