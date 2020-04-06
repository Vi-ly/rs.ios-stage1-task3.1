#import "Combinator.h"

@implementation Combinator
- (NSNumber*)chechChooseFromArray:(NSArray <NSNumber*>*)array {
    
      
       NSUInteger n = [[array objectAtIndex:1] integerValue];
       NSUInteger x = [[array objectAtIndex:0] integerValue];
       
       NSUInteger nFac = 1;   // factorial n
       
       for (NSUInteger i = 1; i < n ; i++)
       {
           nFac = nFac * ( i + 1 );
       }
       
       for ( NSUInteger i = 1; i < n; i++)
       {
           NSUInteger fac = 1;    // factorial (n-m)
           NSUInteger m = 1;
           
           for (NSUInteger XXX = 1; XXX < ( n - i ); XXX++)
           {
               fac = fac * ( XXX + 1 );
           }
           for (NSUInteger XXX = 1; XXX < i; XXX++)
           {
               
               m = m * ( XXX + 1 );
  /*
               
               NSUInteger m = 1;
               
               if (( i - 1 ) != 0 )
               {
                   m = m * XXX;
               } else
               {
                   m = 1;
               }
*/           }
           
           NSUInteger result = nFac / (fac * m);
           NSLog (@"%li", result);
           
           if (result >= x)
           {
               return @(i);
           }
       }
    return nil;
}
@end
