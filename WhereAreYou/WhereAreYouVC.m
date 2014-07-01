//
//  WhereAreYouVC.m
//  WhereAreYou
//
//  Created by David Bloom on 6/15/14.
//  Copyright (c) 2014 David Bloom. All rights reserved.
//

#import "WhereAreYouVC.h"
#import "BNRMapPoint.h"

@interface WhereAreYouVC()

@end

@implementation WhereAreYouVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        locationManager = [[CLLocationManager alloc] init];
        
        [locationManager setDelegate:self];
        
        [locationManager setDesiredAccuracy: kCLLocationAccuracyBest];
        
        
        // using setShowsUserLocation instead for MKMapView
        //[locationManager startUpdatingLocation];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // added to determin location
    [mapView setShowsUserLocation:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (void)mapView: (MKMapView *)mapView1 didUpdateUserLocation:(MKUserLocation *)userLocation
    {
    
    //This method tells the map delegate that the user location has changed
    CLLocationCoordinate2D loc = [userLocation coordinate];
        MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc,250,250);
       
        [mapView setRegion:region animated:YES];
        
        
}


- (BOOL) textFieldShouldReturn:(UITextField *)textField  {
    
    // call the method findLocation which we implemented
    [self findLocation];
    
    [textField resignFirstResponder];
    
    return YES;
    
}

- (void) findLocation {
    
    [locationManager startUpdatingLocation];
    
    [activityIndicator startAnimating];
    
    [locationTitleField setHidden:YES];
    
    
}

- (void)foundLocation:(CLLocation *) loc {
    
    CLLocationCoordinate2D coord = [loc coordinate];
    BNRMapPoint *mappoint = [[BNRMapPoint alloc] initWithCoordinate:coord title: [locationTitleField text]];
    
    [mapView addAnnotation:mappoint ];
    
    //zoom
    MKCoordinateRegion region  = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    [mapView setRegion:region animated:YES];
    
    
    //reset UI
    
    
    [locationTitleField setText:@""];
    
    [activityIndicator stopAnimating];
    [locationTitleField setHidden:NO];
    
    [locationManager stopUpdatingLocation];
    
    
    
}




- (void)locationManager: (CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation     {
    
    NSLog (@"%@", newLocation);
    
    
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    if (t < -180){
        return;
    }
    
    [self foundLocation:newLocation];
}

- (void)locationManager: (CLLocationManager *)manager

       didFailWithError:(NSError *)error   {
    
    NSLog (@"David location manager error %@", error);
}


@end

