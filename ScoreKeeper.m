#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)outputScore {
    
    NSLog(@"Your score is: %i rights and %i wrongs", _right, _wrong);

}

-(int)countOfRight {
    _right++;
    return _right;
}

-(int)countOfWrong {
    _wrong++;
    return _wrong;
}
@end
