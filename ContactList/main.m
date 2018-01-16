//
//  main.m
//  ContactList
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputColloctor.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *cL1 = [[ContactList alloc] init];
        
        // fake data
        Contact *contact1 = [[Contact alloc] initWithFullName:@"Paul" andEmail:@"paul.gmail.com"];
        Contact *contact2 = [[Contact alloc] initWithFullName:@"Bri" andEmail:@"bri@bri.com"];
        Contact *contact3 = [[Contact alloc] initWithFullName:@"Sam" andEmail:@"sam.yahoo.com"];
        
        [cL1 addContact:contact1];
        [cL1 addContact:contact2];
        [cL1 addContact:contact3];
        
        while (YES) {
        NSString *userInput = [InputColloctor inputFromPrompt:@"What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application >"];
        
            if ([userInput isEqualToString:@"quit"]) {
                NSLog(@"Thank you for using my app. Have a nice day 😀");
                break;
                
            } else if ([userInput isEqualToString:@"new"]) {
                NSString *fullName = [InputColloctor inputFromPrompt:
                                      @"Please enter full name:"];
                NSString *email = [InputColloctor inputFromPrompt:
                                   @"Please enter email:"];
                
                [cL1 addContact:[[Contact alloc] initWithFullName:fullName andEmail:email]];
            } else if ([userInput isEqualToString:@"list"]) {
                [cL1 printContactList];
            }
        }
    }
    return 0;
}
