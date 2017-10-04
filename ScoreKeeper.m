#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)outputScore {
    
    NSLog(@"Your score is: %i rights and %i wrongs ---%i ", _right, _wrong, ((_wrong * 100)/(_wrong + _right)));

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
