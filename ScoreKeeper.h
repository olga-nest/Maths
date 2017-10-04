#import <Foundation/Foundation.h>
@class InputHandler;

@interface ScoreKeeper : NSObject

@property int right;
@property int wrong;

-(void)outputScore;
-(int)countOfRight;
-(int)countOfWrong;

@end
