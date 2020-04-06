#import "PolynomialConverter.h"

@implementation PolynomialConverter
- (NSString*)convertToStringFrom:(NSArray <NSNumber*>*)numbers {
    

           NSMutableArray *array = [NSMutableArray arrayWithArray:numbers];
          NSMutableString* resultString = [NSMutableString stringWithString:@""];
           NSUInteger count = numbers.count;
           NSInteger numb = 0;
    if (array.count==0) {
        resultString = nil;
        
    } else {
                
                NSUInteger degree = count-1;
                numb = [[numbers objectAtIndex:0] integerValue];
         if (degree > 1) {
             NSString* firstMember = [NSString stringWithFormat:@"%lix^%lu",numb, degree];
             [array replaceObjectAtIndex:0 withObject:firstMember];
         } else {
             if (degree > 0) {
                 NSString* firstMember = [NSString stringWithFormat:@"%lix",numb];
                 [array replaceObjectAtIndex:0 withObject:firstMember];
             }
            
         }
                
                for (NSUInteger i=1; i < numbers.count; i++) {

                    degree = count - 1 - i;
                    numb = [[numbers objectAtIndex:i] integerValue];
                    
                    
                 if (degree > 1) {
                        
                    
                    if (numb > 1) {
                            NSString* iMember = [NSString stringWithFormat:@" + %lix^%lu",numb,degree];
                            [array replaceObjectAtIndex:i withObject:iMember];
                    }
                    
                    if (numb < -1) {
                            numb = numb*(-1);
                            NSString* iMember = [NSString stringWithFormat:@" - %lix^%lu",numb,degree];
                            [array replaceObjectAtIndex:i withObject:iMember];
                    }
                  
                    if (numb == 1) {
                            NSString* iMember = [NSString stringWithFormat:@" + x^%lu", degree];
                            [array replaceObjectAtIndex:i withObject:iMember];
                    }
                    
                    if (numb == -1) {
                        numb = numb*(-1);
                    NSString* iMember = [NSString stringWithFormat:@" - x^%lu", degree];
                        [array replaceObjectAtIndex:i withObject:iMember];
                }
                    if (numb == 0) {
        //
                        NSString* iMember = [NSString stringWithFormat:@""];
                        [array replaceObjectAtIndex:i withObject:iMember];
                       
                    }
                 } else {
                     if (degree == 1) {
                         
                         if (numb > 1) {
                                     NSString* iMember = [NSString stringWithFormat:@" + %lix",numb];
                                     [array replaceObjectAtIndex:i withObject:iMember];
                             }
                             
                             if (numb < -1) {
                                     numb = numb*(-1);
                                     NSString* iMember = [NSString stringWithFormat:@" - %lix",numb];
                                     [array replaceObjectAtIndex:i withObject:iMember];
                             }
                           
                             if (numb == 1) {
                                     NSString* iMember = [NSString stringWithFormat:@" + x"];
                                     [array replaceObjectAtIndex:i withObject:iMember];
                             }
                             
                             if (numb == -1) {
                                 numb = numb*(-1);
                             NSString* iMember = [NSString stringWithFormat:@" - x"];
                                 [array replaceObjectAtIndex:i withObject:iMember];
                         }
                             if (numb == 0) {
                                 NSString* iMember = [NSString stringWithFormat:@""];
                                 [array replaceObjectAtIndex:i withObject:iMember];
                             }
                         
                     } else {
                if (numb == 0) {
                    NSString* iMember = [NSString stringWithFormat:@""];
                    [array replaceObjectAtIndex:i withObject:iMember];
                } else {
                    NSString* iMember = [NSString stringWithFormat:@" + %li", numb];
                    [array replaceObjectAtIndex:i withObject:iMember];
                }
                     }
                 }
                    
                }
             
             for (NSUInteger i=0; i<array.count; i++) {
                 NSString* result = [NSString stringWithFormat:@"%@",[array objectAtIndex:i]];
                 [resultString appendString:result];
                 
             }
    }


    
    return resultString;
}
@end
