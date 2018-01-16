//
//  InputColloctor.m
//  ContactList
//
//  Created by Yongwoo Huh on 1/16/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "InputColloctor.h"

@implementation InputColloctor

+ (NSString *)inputFromPrompt:(NSString *)promptString
{
    char inputCString[255];
    
    NSLog(@"%@", promptString);
    fgets(inputCString, 255, stdin);
    
    NSString *result = [NSString stringWithCString:inputCString encoding:NSUTF8StringEncoding];
    result = [result stringByTrimmingCharactersInSet:
              [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return result;
}

@end
