//
//  ContactList.m
//  contacts
//
//  Created by shunnamiki on 2021/07/09.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.list = [NSMutableArray new];
    }
    return self;
}
- (void) addContact: (Contact *) newContact
{
    [self.list addObject:newContact];
    return;
}

- (NSString *) show {
    // init
    NSMutableString *output = [NSMutableString new];
    [output appendString: @"\n"];
    
    // loop
    NSUInteger idx = 0;
    for (Contact *item in self.list ) {
        NSString *line = [[NSString alloc] initWithFormat:@"%lu: <%@> (%@)\n", (unsigned long)idx, item.fullname, item.email];
        [output appendString: line];
        idx++;
    }
    return output;
}

@end
