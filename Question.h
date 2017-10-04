#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSString *question;
@property (nonatomic) NSInteger answer;
@property NSDate *startTime;
@property NSDate *endTime;
@property int rightvalue;
@property int leftvalue;
    

-(NSTimeInterval)answerTime;
    
-(void) setQuestionAndAnswer;

@end
