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

- (void)printDetailedContactList
{
    for (Contact *contact in self.contacts) {
        NSLog(@"full name : %@", contact.fullName);
        NSLog(@"email: %@", contact.email);
        NSLog(@"");
    }
}

- (Contact *)findContactAtIndex:(NSInteger)index
{
    Contact *foundContact = [self.contacts objectAtIndex:index];
    return foundContact;
}

- (void)findContactWith:(NSString *)searchTerm
{
    ContactList *matchingContacts = [[ContactList alloc] init];
    for (Contact *c in self.contacts) {
        if ([c.fullName containsString:searchTerm]) {
            [matchingContacts addContact:c];
        } else if ([c.email containsString:searchTerm]) {
            [matchingContacts addContact:c];
        }
    }
    [matchingContacts printDetailedContactList];
    
    if (![matchingContacts.contacts count]) {
        NSLog(@"No contacts containing [%@] found",searchTerm);
    }
}

- (BOOL)contactWithEmailExists:(NSString *)email
{
    for (Contact *c in self.contacts) {
        if ([c.email isEqualToString:email]) {
            return YES;
        }
    }
    return NO;
}

@end
