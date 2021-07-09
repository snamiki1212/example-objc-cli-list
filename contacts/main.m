//
//  main.m
//  contacts
//
//  Created by shunnamiki on 2021/07/09.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *contacts = [ContactList new];
        InputCollector *ic = [InputCollector new];
        
        while(true) {
            NSString *usernameInput = [ic inputForPrompt:@"Enter your username"];
            NSLog(@"%@", usernameInput);
        }
    }
    
    
    
    return 0;
}
