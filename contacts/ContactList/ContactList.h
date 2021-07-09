//
//  ContactList.h
//  contacts
//
//  Created by shunnamiki on 2021/07/09.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject
@property NSMutableArray<Contact *> *list;
- (void) addContact: (Contact *) newContact;
- (NSString *) show;
@end

NS_ASSUME_NONNULL_END
