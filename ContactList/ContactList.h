//
//  ContactList.h
//  ContactList
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic) NSMutableArray *contacts;

- (void)addContact:(Contact *)newContact;
- (void)printContactList;

@end
