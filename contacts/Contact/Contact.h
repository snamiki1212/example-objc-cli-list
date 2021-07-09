//
//  Contact.h
//  contacts
//
//  Created by shunnamiki on 2021/07/09.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject
@property NSString *fullname;
@property NSString *email;
- (instancetype)initWithName: (NSString *) name andEmail:(NSString *) email;
@end

NS_ASSUME_NONNULL_END
