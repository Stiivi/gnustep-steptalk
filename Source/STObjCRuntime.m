/**
    STObjCRuntime.m
    Objective C runtime additions 
 
    Copyright (c) 2002 Free Software Foundation
 
    Written by: Stefan Urbanek <urbanek@host.sk>
    Date: 2000
   
    This file is part of the StepTalk project.
 
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.
 
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02111, USA.
 
 */

#import <StepTalk/STObjCRuntime.h>
#import <StepTalk/STExterns.h>

#import <Foundation/NSDebug.h>
#import <Foundation/NSDictionary.h>
#import <Foundation/NSException.h>
#import <Foundation/NSMethodSignature.h>
#import <Foundation/NSString.h>
#import <Foundation/NSValue.h>

@class NSProcessInfo ;
/* FIXME: this is just for testing */
#define SELECTOR_TYPES_COUNT 6
static const char *selector_types[] = 
                        {
                            "@8@0:4",
                            "@12@0:4@8",
                            "@16@0:4@8@12",
                            "@20@0:4@8@12@16",
                            "@24@0:4@8@12@16@20",
                            "@28@0:4@8@12@16@20@24" 
                        };

NSMutableDictionary *STAllObjectiveCClasses(void)
{
    NSString            *name;
    NSMutableDictionary *dict;
    void                *state = NULL;
    Class                class;

    dict = [NSMutableDictionary dictionary];

    while( (class = objc_next_class(&state)) )
    {
        name = [NSString stringWithCString:class_get_class_name(class)];
        
        [dict setObject:class forKey:name];
    }
    
//    NSLog(@"%i Objective-C classes found",[dict count]);

    return dict;
}

NSMutableDictionary *STClassDictionaryFromNames(NSArray *classNames)
{
    NSEnumerator        *enumerator = [classNames objectEnumerator];
    NSString            *className;
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    Class               *class;
    
    while( (className = [enumerator nextObject]) )
    {
        class = NSClassFromString(className);
        if(class)
        {
            [dict setObject:NSClassFromString(className) forKey:className];
        }
        else
        {
            NSLog(@"Warning: Class with name '%@' not found", className);
        }
    }
    
    return dict;
}

NSValue *STValueFromSelector(SEL sel)
{
    return [NSValue value:&sel withObjCType:@encode(SEL)];
}

SEL STSelectorFromValue(NSValue *val)
{
    SEL sel;
    [val getValue:&sel];
    return sel;
}

SEL STSelectorFromString(NSString *aString)
{
    const char *name = [aString cString];
    const char *ptr;
    int         argc = 0;

    SEL sel;

    sel = NSSelectorFromString(aString);
    if(!sel)
    {

        ptr = name;

        while(*ptr)
        {
            if(*ptr == ':')
            {
                argc ++;
            }
            ptr++;
        }

        if( argc < SELECTOR_TYPES_COUNT )
        {
            NSDebugLLog(@"STSending",
                       @"registering selector '%s' "
                       @"with %i arguments, types:'%s'",
                        name,argc,selector_types[argc]);
                    
            sel = sel_register_typed_name(name, selector_types[argc]);
        }

        if(!sel)
        {
            [NSException raise:STInternalInconsistencyException
                         format:@"Unable to register selector '%@'",
                                aString];
            return NULL;
        }
    }
    else
    {
        /* FIXME: temporary hack */
    }

    return sel;
}

NSMethodSignature *STMethodSignatureForSelector(SEL sel)
{
    return [NSMethodSignature signatureWithObjCTypes:sel_get_type(sel)];
}