#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        
        NSInteger firtsRandomNumber = arc4random_uniform(100) + 10;
        NSInteger secondRandomNumber = arc4random_uniform(100) + 10;
        
        _question = [NSString stringWithFormat:@"%li + %li = ", (long)firtsRandomNumber, (long)secondRandomNumber];
        _answer = firtsRandomNumber + secondRandomNumber;

    
    }
    return self;
}

@end
