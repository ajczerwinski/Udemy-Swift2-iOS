//
//  Vehicle.m
//  GettersSetters
//
//  Created by Allen Czerwinski on 4/26/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

-(void)setOdometer:(long)odometer {
    if (odometer > _odometer) {
        _odometer = odometer;
    }
}

-(NSString*)model {
    if([_model isEqualToString:@"Honda Civic"]) {
        return @"sweet car!";
    } else {
        return _model;
    }
}



@end
