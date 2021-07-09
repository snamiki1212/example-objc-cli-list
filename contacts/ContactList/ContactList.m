//
//  ContactList.m
//  contacts
//
//  Created by shunnamiki on 2021/07/09.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (void) addContact: (Contact *) newContact
{
    [self.list addObject:newContact];
    return;
}

@end
