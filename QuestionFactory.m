//
//  QuestionFactory.m
//  Maths
//
//  Created by Carlo Namoca on 2017-10-04.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
    
- (instancetype)init
    {
        self = [super init];
        if (self) {
            _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
            
        }
        return self;
    }
    
-(Question *) generateRandomQuestion
    {
        int x = arc4random_uniform(4);
        
        Question *newQuestion = [[NSClassFromString(self.questionSubclassNames[x]) alloc]init];
        
        return newQuestion;
    };

@end
