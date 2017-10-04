#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject
{
    
}

@property NSString *question;
@property NSInteger answer;
@property NSDate *startTime;
@property NSDate *endTime;

-(NSTimeInterval)answerTime;

@end
