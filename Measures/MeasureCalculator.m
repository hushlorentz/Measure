//
//  MeasureCalculator.m
//  Measures
//
//  Created by Rich Halliday on 2017-01-03.
//  Copyright © 2017 SFN. All rights reserved.
//

#import "MeasureCalculator.h"

@implementation MeasureCalculator

+ (void)convertPounds:(float)pounds withModel:(MeasuresModel *)model {
  model.ounces = pounds * 16;
  model.kilograms = pounds * 0.4536;
  model.grams = model.kilograms * 1000;
  model.cups = 0;
  model.tablespoons = 0;
  model.teaspoons = 0;
  model.litres = 0;
  model.mililitres = 0;
}

+ (void)convertOunces:(float)ounces withModel:(MeasuresModel *)model {
  model.pounds = ounces / 16;
  model.kilograms = ounces * 0.02835;
  model.grams = model.kilograms * 1000;
  model.cups = ounces * 0.125;
  model.tablespoons = ounces * 2;
  model.teaspoons = ounces * 6;
  model.litres = ounces * 0.02957;
  model.mililitres = model.litres * 1000;
}

+ (void)convertKilograms:(float)kilograms withModel:(MeasuresModel *)model {
  model.pounds = kilograms * 2.205;
  model.ounces = kilograms * 35.27;
  model.grams = kilograms * 1000;
  model.cups = 0;
  model.tablespoons = 0;
  model.teaspoons = 0;
  model.litres = 0;
  model.mililitres = 0;
}

+ (void)convertGrams:(float)grams withModel:(MeasuresModel *)model {
  model.pounds = grams * 0.002205;
  model.ounces = grams * 0.03527;
  model.kilograms = grams / 1000;
  model.cups = 0;
  model.tablespoons = 0;
  model.teaspoons = 0;
  model.litres = 0;
  model.mililitres = 0;
}

+ (void)convertCups:(float)cups withModel:(MeasuresModel *)model {
  model.pounds = 0;
  model.ounces = cups * 8;
  model.kilograms = 0;
  model.grams = 0;
  model.tablespoons = cups * 16;
  model.teaspoons = cups * 48;
  model.litres = cups * 0.2366;
  model.mililitres = model.litres * 1000;
}

+ (void)convertLitres:(float)litres withModel:(MeasuresModel *)model {
  model.pounds = 0;
  model.ounces = litres * 33.81;
  model.kilograms = 0;
  model.grams = 0;
  model.cups = litres * 4.227;
  model.tablespoons = litres * 67.63;
  model.teaspoons = litres * 202.9;
  model.mililitres = litres * 1000;
}

+ (void)convertMililitres:(float)mililitres withModel:(MeasuresModel *)model {
  model.pounds = 0;
  model.ounces = mililitres * 33.81 / 1000;
  model.kilograms = 0;
  model.grams = 0;
  model.cups = mililitres * 4.227 / 1000;
  model.tablespoons = mililitres * 67.63 / 1000;
  model.teaspoons = mililitres * 202.9 / 1000;
  model.litres = mililitres / 1000;
}

+ (void)convertTablespoons:(float)tablespoons withModel:(MeasuresModel *)model {
  model.pounds = 0;
  model.kilograms = 0;
  model.grams = 0;
  model.ounces = tablespoons * 0.5;
  model.cups = tablespoons * 0.0625;
  model.teaspoons = tablespoons * 3;
  model.litres = tablespoons * 0.01479;
  model.mililitres = model.litres * 1000;
}

+ (void)convertTeaspoons:(float)teaspoons withModel:(MeasuresModel *)model {
  model.pounds = 0;
  model.kilograms = 0;
  model.grams = 0;
  model.ounces = teaspoons * 0.1667;
  model.cups = teaspoons * 0.02083;
  model.tablespoons = teaspoons * 0.33333;
  model.litres = teaspoons * 0.004929;
  model.mililitres = model.litres * 1000;
}

@end
