//
//  InputCollector.m
//  contacts
//
//  Created by shunnamiki on 2021/07/09.
//

#import "InputCollector.h"

@implementation InputCollector

- (NSString *) inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithCString:inputChars encoding:(NSUTF8StringEncoding)];
    NSString *parsedStr = [InputCollector parseStr:inputString];
    
    if([parsedStr isEqualToString:@"quit"]) exit(0);
    if([parsedStr isEqualToString:@"new"]) exit(0);
        
        
    return parsedStr;
}

+ (NSString *) parseStr: (NSString *) str {
    return [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
