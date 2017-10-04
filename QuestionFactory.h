//
//  QuestionFactory.h
//  Maths
//
//  Created by Carlo Namoca on 2017-10-04.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject
    
@property(nonatomic) NSArray *questionSubclassNames;
-(Question *) generateRandomQuestion;
    


@end
