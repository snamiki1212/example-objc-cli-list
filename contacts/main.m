//
//  main.m
//  contacts
//
//  Created by shunnamiki on 2021/07/09.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"
#import "Contact.h"

const NSString *MENU_DESCRIPTION = @"What would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n";

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *contacts = [ContactList new];
        InputCollector *ic = [InputCollector new];

        // append example list
        Contact *dummyContact1 = [[Contact alloc] initWithName:@"John" andEmail:@"john@corner.stone"];
        [contacts addContact: dummyContact1];
        Contact *dummyContact2 = [[Contact alloc] initWithName:@"taro" andEmail:@"taro@corner.stone"];
        [contacts addContact: dummyContact2];
        
        while(true) {
            NSString *menuInput = [ic inputForPrompt: MENU_DESCRIPTION];
            if([menuInput isEqualToString:@"quit"]) break;
            
            if([menuInput isEqualToString:@"list"]) {
                NSLog(@"%@", [contacts show]);
                continue;
            }
            
            if([menuInput isEqualToString:@"new"]) {
                NSString *nameInput = [ic inputForPrompt:@"Enter your username"];
                NSString *emailInput = [ic inputForPrompt:@"Enter your email"];
                
                Contact *contact = [[Contact alloc] initWithName:nameInput andEmail:emailInput];
                [contacts addContact: contact];
                continue;
            }
        }
    }
    
    
    
    return 0;
}
