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
        Contact *c1 = [[Contact alloc] initWithFullName:@"Paul" andEmail:@"paul.gmail.com"];
        Contact *c2 = [[Contact alloc] initWithFullName:@"Bri" andEmail:@"bri@bri.com"];
        Contact *c3 = [[Contact alloc] initWithFullName:@"Sam" andEmail:@"sam.yahoo.com"];
        
        [cL1 addContact:c1];
        [cL1 addContact:c2];
        [cL1 addContact:c3];
        
        while (YES) {
            NSString *userInput = [InputColloctor inputFromPrompt:@"What would you like do next? new - Create a new contact | list - List all contacts | quit - Exit Application | show #(index) - display details >"];
            
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
            else if ([userInput containsString:@"show"]) {
                NSArray *inputParse = [userInput componentsSeparatedByString:@" "];
                if ([inputParse count] != 2) {
                    NSLog(@"Please input index with show command(ex]show 2)");
                } else {
                    NSInteger index = [inputParse[1] integerValue];
                    if (index <= [cL1.contacts count] - 1) {
                    Contact *contact = [cL1 findContactAtIndex:index];
                    
                    NSLog(@"full name: %@", contact.fullName);
                    NSLog(@"email: %@", contact.email);
                    } else {
                        NSLog(@"not found");
                    }

                }
            }
        }
    }
    return 0;
}
