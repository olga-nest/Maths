#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        
        NSInteger firtsRandomNumber = arc4random_uniform(100) + 10;
        NSInteger secondRandomNumber = arc4random_uniform(100) + 10;
        
        _startTime = [NSDate date];
        
        _question = [NSString stringWithFormat:@"%li + %li = ", (long)firtsRandomNumber, (long)secondRandomNumber];
        _answer = firtsRandomNumber + secondRandomNumber;
        
    }
    return self;
}

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    NSTimeInterval secondsBetween = [_endTime timeIntervalSinceDate:_startTime];
    return secondsBetween;
}

@end
