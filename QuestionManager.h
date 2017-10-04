#import <Foundation/Foundation.h>

@class AdditionQuestion;

@interface QuestionManager : NSObject

@property NSMutableArray *questions;

-(NSString *) timeOutput;

@end
