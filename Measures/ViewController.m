//
//  ViewController.m
//  Measures
//
//  Created by Rich Halliday on 2017-01-03.
//  Copyright © 2017 SFN. All rights reserved.
//

#import "MeasureCalculator.h"
#import "MeasuresModel.h"
#import "TPKeyboardAvoiding/TPKeyboardAvoidingScrollView.h"
#import "ViewController.h"
#import "UITextFieldObserver.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextFieldObserver *poundsField;
@property (nonatomic, weak) IBOutlet UITextFieldObserver *ouncesField;
@property (nonatomic, weak) IBOutlet UITextFieldObserver *kilogramsField;
@property (nonatomic, weak) IBOutlet UITextFieldObserver *gramsField;
@property (nonatomic, weak) IBOutlet UITextFieldObserver *cupsField;
@property (nonatomic, weak) IBOutlet UITextFieldObserver *litresField;
@property (nonatomic, weak) IBOutlet UITextFieldObserver *mililitresField;
@property (nonatomic, weak) IBOutlet UITextFieldObserver *tablespoonsField;
@property (nonatomic, weak) IBOutlet UITextFieldObserver *teaspoonsField;
@property (nonatomic) MeasuresModel *measuresModel;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self initMeasurements];
  [self addObservers];
  [self addMeasurementFieldListeners];
}

- (void)initMeasurements {
  self.measuresModel = [[MeasuresModel alloc] init];
}

- (void)addObservers {
  [self.poundsField setModel:self.measuresModel andPropToObserve:@"pounds"];
  [self.ouncesField setModel:self.measuresModel andPropToObserve:@"ounces"];
  [self.kilogramsField setModel:self.measuresModel andPropToObserve:@"kilograms"];
  [self.gramsField setModel:self.measuresModel andPropToObserve:@"grams"];
  [self.cupsField setModel:self.measuresModel andPropToObserve:@"cups"];
  [self.litresField setModel:self.measuresModel andPropToObserve:@"litres"];
  [self.mililitresField setModel:self.measuresModel andPropToObserve:@"mililitres"];
  [self.tablespoonsField setModel:self.measuresModel andPropToObserve:@"tablespoons"];
  [self.teaspoonsField setModel:self.measuresModel andPropToObserve:@"teaspoons"];
}

- (void)addMeasurementFieldListeners {
  [self.poundsField addTarget:self action:NSSelectorFromString(@"poundsFieldDidChange") forControlEvents:UIControlEventEditingChanged];
  [self.ouncesField addTarget:self action:NSSelectorFromString(@"ouncesFieldDidChange") forControlEvents:UIControlEventEditingChanged];
  [self.kilogramsField addTarget:self action:NSSelectorFromString(@"kilogramsFieldDidChange") forControlEvents:UIControlEventEditingChanged];
  [self.gramsField addTarget:self action:NSSelectorFromString(@"gramsFieldDidChange") forControlEvents:UIControlEventEditingChanged];
  [self.cupsField addTarget:self action:NSSelectorFromString(@"cupsFieldDidChange") forControlEvents:UIControlEventEditingChanged];
  [self.litresField addTarget:self action:NSSelectorFromString(@"litresFieldDidChange") forControlEvents:UIControlEventEditingChanged];
  [self.mililitresField addTarget:self action:NSSelectorFromString(@"mililitresFieldDidChange") forControlEvents:UIControlEventEditingChanged];
  [self.tablespoonsField addTarget:self action:NSSelectorFromString(@"tablespoonsFieldDidChange") forControlEvents:UIControlEventEditingChanged];
  [self.teaspoonsField addTarget:self action:NSSelectorFromString(@"teaspoonsFieldDidChange") forControlEvents:UIControlEventEditingChanged];
}

- (void)poundsFieldDidChange {
  [MeasureCalculator convertPounds:[self.poundsField.text floatValue] withModel:self.measuresModel];
}

- (void)ouncesFieldDidChange {
  [MeasureCalculator convertOunces:[self.ouncesField.text floatValue] withModel:self.measuresModel];
}

- (void)kilogramsFieldDidChange {
  [MeasureCalculator convertKilograms:[self.kilogramsField.text floatValue] withModel:self.measuresModel];
}

- (void)gramsFieldDidChange {
  [MeasureCalculator convertGrams:[self.gramsField.text floatValue] withModel:self.measuresModel];
}

- (void)cupsFieldDidChange {
  [MeasureCalculator convertCups:[self.cupsField.text floatValue] withModel:self.measuresModel];
}

- (void)litresFieldDidChange {
  [MeasureCalculator convertLitres:[self.litresField.text floatValue] withModel:self.measuresModel];
}

- (void)mililitresFieldDidChange {
  [MeasureCalculator convertMililitres:[self.mililitresField.text floatValue] withModel:self.measuresModel];
}

- (void)tablespoonsFieldDidChange {
  [MeasureCalculator convertTablespoons:[self.tablespoonsField.text floatValue] withModel:self.measuresModel];
}

- (void)teaspoonsFieldDidChange {
  [MeasureCalculator convertTeaspoons:[self.teaspoonsField.text floatValue] withModel:self.measuresModel];
}

@end
