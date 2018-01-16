//
//  Contact.h
//  ContactList
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *fullName;

- (instancetype)initWithFullName:(NSString *)fullName andEmail:(NSString *)email;

@end
