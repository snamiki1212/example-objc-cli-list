//
//  Contact.m
//  contacts
//
//  Created by shunnamiki on 2021/07/09.
//

#import "Contact.h"

@implementation Contact
- (instancetype)initWithName: (NSString *) name andEmail:(NSString *) email
{
    self = [super init];
    if (self) {
        self.fullname = name;
        self.email = email;
    }
    return self;
}
@end
