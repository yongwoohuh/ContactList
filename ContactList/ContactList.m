//
//  ContactList.m
//  ContactList
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [@[] mutableCopy];
    }
    return self;
}

- (void)addContact:(Contact *)newContact
{
    [self.contacts addObject:newContact];
}

- (void)printContactList
{
    for (Contact *contact in self.contacts) {
        NSLog(@"#%lu: <%@>", [self.contacts indexOfObject:contact],contact.fullName);
    }
}

- (Contact *)findContactAtIndex:(NSInteger)index
{
    Contact *foundContact = [self.contacts objectAtIndex:index];
    return foundContact;
}

@end
