//
//  MeasureCalculator.h
//  Measures
//
//  Created by Rich Halliday on 2017-01-03.
//  Copyright © 2017 SFN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MeasuresModel.h"

@interface MeasureCalculator : NSObject

+ (void)convertPounds:(float)pounds withModel:(MeasuresModel *)model;
+ (void)convertOunces:(float)ounces withModel:(MeasuresModel *)model;
+ (void)convertKilograms:(float)kilograms withModel:(MeasuresModel *)model;
+ (void)convertGrams:(float)grams withModel:(MeasuresModel *)model;
+ (void)convertCups:(float)cups withModel:(MeasuresModel *)model;
+ (void)convertLitres:(float)litres withModel:(MeasuresModel *)model;
+ (void)convertMililitres:(float)mililitres withModel:(MeasuresModel *)model;
+ (void)convertTablespoons:(float)tablespoons withModel:(MeasuresModel *)model;
+ (void)convertTeaspoons:(float)teaspoons withModel:(MeasuresModel *)model;

@end
