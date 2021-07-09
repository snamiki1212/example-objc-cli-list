//
//  main.m
//  contacts
//
//  Created by shunnamiki on 2021/07/09.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSString *usernameInput = [InputCollector inputForPrompt:@"Enter your username"];
        
        NSLog(@"%@", usernameInput);
    }
    
    
    
    return 0;
}
