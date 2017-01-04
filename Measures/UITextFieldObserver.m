//
//  UITextFieldObserver.m
//  Measures
//
//  Created by Rich Halliday on 2017-01-03.
//  Copyright © 2017 SFN. All rights reserved.
//

#import "UITextFieldObserver.h"

@implementation UITextFieldObserver

- (void)setModel:(id)model andPropToObserve:(NSString *)prop {
  [model addObserver:self forKeyPath:prop options:NSKeyValueObservingOptionNew context:NULL];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
  self.text = [NSString stringWithFormat:@"%.4g", [change[@"new"] floatValue]];
}

@end
