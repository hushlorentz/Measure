//
//  UITextFieldObserver.h
//  Measures
//
//  Created by Rich Halliday on 2017-01-03.
//  Copyright © 2017 SFN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UITextFieldObserver : UITextField

- (void)setModel:(id)model andPropToObserve:(NSString *)prop;

@end
