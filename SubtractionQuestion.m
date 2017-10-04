//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Carlo Namoca on 2017-10-04.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion
-(void) setQuestionAndAnswer
    {
        self.question = [NSString stringWithFormat:@"%li - %li = ", (long)self.rightvalue, (long)self.leftvalue];
        self.answer = self.rightvalue - self.leftvalue;
        
        
    };
    
- (instancetype)init
    {
        self = [super init];
        if (self) {
            [self setQuestionAndAnswer];
        }
        return self;
    }
@end
