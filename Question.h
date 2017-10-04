#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSString *question;
@property NSInteger answer;
@property NSDate *startTime;
@property NSDate *endTime;

-(NSTimeInterval)answerTime;

@end
