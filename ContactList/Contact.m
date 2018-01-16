//
//  Contact.m
//  ContactList
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithFullName:(NSString *)fullName andEmail:(NSString *)email
{
    self = [super init];
    if (self) {
        _fullName = fullName;
        _email = email;
    }
    return self;
}

@end
