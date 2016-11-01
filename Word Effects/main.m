//
//  main.m
//  Word Effects
//
//  Created by carmen cheng on 2016-10-31.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        while(true) {

            char inputChars [255];
            int number;
            
            printf("Input a string: ");
            fgets(inputChars, sizeof(inputChars), stdin);
//            scanf("%s", inputChars);
            
            printf("1. Uppercase\n 2. Lowercase\n 3. Numberize\n 4. Canadianize\n 5. Respond\n 6. De-Space-It\n");
            printf("Choose an operation from 1 to 6: ");
            scanf("%d", &number);
            
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            
//            1.
            NSString *uppercaseString = [inputString uppercaseString];
            
//            2.
            NSString *lowercaseString = [inputString lowercaseString];
            
//            3.
            int value = [inputString intValue];

//            4.
            NSMutableString *mutableString = [NSMutableString stringWithString:inputString];
            [mutableString appendString:@", eh?"];
            
//            5. switch
            
//            6.
            NSString *deSpaceIt = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            
//            7.
            
            
            switch (number) {
                case 1:
                    NSLog(@"Input was: %@\n", uppercaseString);
                    break;
                    
                case 2:
                    NSLog (@"Input was: %@\n", lowercaseString);
                    break;
                    
                case 3:
                    NSLog(@"Input was: %d\n", value);
                    break;
                    
                case 4:
                     NSLog (@"Input was: %@\n", mutableString);
                    break;
                    
                case 5:
                    if ([inputString hasSuffix:@"?"])
                    {
                        NSLog(@"I don't know");
                    }
                    else if ([inputString hasSuffix:@"!"])
                    {
                        NSLog(@"Whoa, calm down!");
                    }
                    break;

                case 6:
                    NSLog (@"Input was: %@\n", deSpaceIt);
                    break;
                    
                    default:
                    break;
            }
    }
        
    }
    return 0;
    
}

