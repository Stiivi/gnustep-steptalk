/**
    FoundationConstants.m
 
    NOTE: Do not edit this file, it is automaticaly generated.
 
    Copyright (c) 2002 Free Software Foundation
 
    This file is part of the StepTalk project.
 
    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2 of the License, or (at your option) any later version.
 
    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.
 
    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 
 */

#import <Foundation/Foundation.h>

NSDictionary *STGetFoundationConstants(void)
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    Class numberClass = [NSNumber class];
    IMP numberWithInt;
    IMP numberWithFloat;
    IMP setObject_forKey;

    SEL numberWithInt_sel = @selector(numberWithInt:);
    SEL numberWithFloat_sel = @selector(numberWithFloat:);
    SEL setObject_forKey_sel = @selector(setObject:forKey:);

    numberWithInt = [NSNumber methodForSelector:numberWithInt_sel];
    numberWithFloat = [NSNumber methodForSelector:numberWithFloat_sel];
    setObject_forKey = [dict methodForSelector:setObject_forKey_sel];

#define ADD_id_OBJECT(obj, name) \
            setObject_forKey(dict, setObject_forKey_sel, obj, name)

#define ADD_int_OBJECT(obj, name) \
            setObject_forKey(dict, setObject_forKey_sel, \
                            numberWithInt(numberClass, numberWithInt_sel, obj), \
                            name)

#define ADD_float_OBJECT(obj, name) \
            setObject_forKey(dict, setObject_forKey_sel, \
                            numberWithFloat(numberClass, numberWithInt_sel, obj), \
                            name)

#define ADD_NSPoint_OBJECT(obj, name) \
            setObject_forKey(dict, setObject_forKey_sel, \
                            [NSValue valueWithPoint:obj], \
                            name)

#define ADD_NSRange_OBJECT(obj, name) \
            setObject_forKey(dict, setObject_forKey_sel, \
                            [NSValue valueWithRange:obj], \
                            name)

#define ADD_NSSize_OBJECT(obj, name) \
            setObject_forKey(dict, setObject_forKey_sel, \
                            [NSValue valueWithSize:obj], \
                            name)

#define ADD_NSRect_OBJECT(obj, name) \
            setObject_forKey(dict, setObject_forKey_sel, \
                            [NSValue valueWithRect:obj], \
                            name)
    ADD_int_OBJECT(NO,@"NO");
    ADD_int_OBJECT(YES,@"YES");
    ADD_NSPoint_OBJECT(NSZeroPoint,@"NSZeroPoint");
    ADD_NSSize_OBJECT(NSZeroSize,@"NSZeroSize");
    ADD_NSRect_OBJECT(NSZeroRect,@"NSZeroRect");
    ADD_int_OBJECT(NSOrderedAscending,@"NSOrderedAscending");
    ADD_int_OBJECT(NSOrderedSame,@"NSOrderedSame");
    ADD_int_OBJECT(NSOrderedDescending,@"NSOrderedDescending");
    ADD_int_OBJECT(NSNotFound,@"NSNotFound");
    ADD_int_OBJECT(NSMinXEdge,@"NSMinXEdge");
    ADD_int_OBJECT(NSMinYEdge,@"NSMinYEdge");
    ADD_int_OBJECT(NSMaxXEdge,@"NSMaxXEdge");
    ADD_int_OBJECT(NSMaxYEdge,@"NSMaxYEdge");
    ADD_int_OBJECT(NS_UnknownByteOrder,@"NS_UnknownByteOrder");
    ADD_int_OBJECT(NS_LittleEndian,@"NS_LittleEndian");
    ADD_int_OBJECT(NS_BigEndian,@"NS_BigEndian");
    ADD_int_OBJECT(NSOpenStepUnicodeReservedBase,@"NSOpenStepUnicodeReservedBase");
    ADD_int_OBJECT(NSCaseInsensitiveSearch,@"NSCaseInsensitiveSearch");
    ADD_int_OBJECT(NSLiteralSearch,@"NSLiteralSearch");
    ADD_int_OBJECT(NSBackwardsSearch,@"NSBackwardsSearch");
    ADD_int_OBJECT(NSAnchoredSearch,@"NSAnchoredSearch");
    ADD_id_OBJECT(NSAMPMDesignation,@"NSAMPMDesignation");
    ADD_id_OBJECT(NSCurrencyString,@"NSCurrencyString");
    ADD_id_OBJECT(NSCurrencySymbol,@"NSCurrencySymbol");
    ADD_id_OBJECT(NSDateFormatString,@"NSDateFormatString");
    ADD_id_OBJECT(NSDateTimeOrdering,@"NSDateTimeOrdering");
    ADD_id_OBJECT(NSDecimalDigits,@"NSDecimalDigits");
    ADD_id_OBJECT(NSDecimalSeparator,@"NSDecimalSeparator");
    ADD_id_OBJECT(NSEarlierTimeDesignations,@"NSEarlierTimeDesignations");
    ADD_id_OBJECT(NSHourNameDesignations,@"NSHourNameDesignations");
    ADD_id_OBJECT(NSInternationalCurrencyString,@"NSInternationalCurrencyString");
    ADD_id_OBJECT(NSLaterTimeDesignations,@"NSLaterTimeDesignations");
    ADD_id_OBJECT(NSMonthNameArray,@"NSMonthNameArray");
    ADD_id_OBJECT(NSNextDayDesignations,@"NSNextDayDesignations");
    ADD_id_OBJECT(NSNextNextDayDesignations,@"NSNextNextDayDesignations");
    ADD_id_OBJECT(NSPriorDayDesignations,@"NSPriorDayDesignations");
    ADD_id_OBJECT(NSShortMonthNameArray,@"NSShortMonthNameArray");
    ADD_id_OBJECT(NSShortTimeDateFormatString,@"NSShortTimeDateFormatString");
    ADD_id_OBJECT(NSShortWeekDayNameArray,@"NSShortWeekDayNameArray");
    ADD_id_OBJECT(NSThisDayDesignations,@"NSThisDayDesignations");
    ADD_id_OBJECT(NSThousandsSeparator,@"NSThousandsSeparator");
    ADD_id_OBJECT(NSTimeDateFormatString,@"NSTimeDateFormatString");
    ADD_id_OBJECT(NSTimeFormatString,@"NSTimeFormatString");
    ADD_id_OBJECT(NSWeekDayNameArray,@"NSWeekDayNameArray");
    ADD_id_OBJECT(NSYearMonthWeekDesignations,@"NSYearMonthWeekDesignations");
    ADD_id_OBJECT(NSFileDeviceIdentifier,@"NSFileDeviceIdentifier");
    ADD_id_OBJECT(NSFileGroupOwnerAccountNumber,@"NSFileGroupOwnerAccountNumber");
    ADD_id_OBJECT(NSFileModificationDate,@"NSFileModificationDate");
    ADD_id_OBJECT(NSFileOwnerAccountNumber,@"NSFileOwnerAccountNumber");
    ADD_id_OBJECT(NSFilePosixPermissions,@"NSFilePosixPermissions");
    ADD_id_OBJECT(NSFileReferenceCount,@"NSFileReferenceCount");
    ADD_id_OBJECT(NSFileSize,@"NSFileSize");
    ADD_id_OBJECT(NSFileSystemFileNumber,@"NSFileSystemFileNumber");
    ADD_id_OBJECT(NSFileSystemNumber,@"NSFileSystemNumber");
    ADD_id_OBJECT(NSFileType,@"NSFileType");
    ADD_id_OBJECT(NSFileTypeBlockSpecial,@"NSFileTypeBlockSpecial");
    ADD_id_OBJECT(NSFileTypeCharacterSpecial,@"NSFileTypeCharacterSpecial");
    ADD_id_OBJECT(NSFileTypeDirectory,@"NSFileTypeDirectory");
    ADD_id_OBJECT(NSFileTypeRegular,@"NSFileTypeRegular");
    ADD_id_OBJECT(NSFileTypeSocket,@"NSFileTypeSocket");
    ADD_id_OBJECT(NSFileTypeSymbolicLink,@"NSFileTypeSymbolicLink");
    ADD_id_OBJECT(NSFileTypeUnknown,@"NSFileTypeUnknown");
    ADD_id_OBJECT(NSFileSystemSize,@"NSFileSystemSize");
    ADD_id_OBJECT(NSFileSystemFreeSize,@"NSFileSystemFreeSize");
    ADD_id_OBJECT(NSFileSystemNodes,@"NSFileSystemNodes");
    ADD_id_OBJECT(NSFileSystemFreeNodes,@"NSFileSystemFreeNodes");
    ADD_int_OBJECT(NSASCIIStringEncoding,@"NSASCIIStringEncoding");
    ADD_int_OBJECT(NSISO2022JPStringEncoding,@"NSISO2022JPStringEncoding");
    ADD_int_OBJECT(NSISOLatin1StringEncoding,@"NSISOLatin1StringEncoding");
    ADD_int_OBJECT(NSISOLatin2StringEncoding,@"NSISOLatin2StringEncoding");
    ADD_int_OBJECT(NSJapaneseEUCStringEncoding,@"NSJapaneseEUCStringEncoding");
    ADD_int_OBJECT(NSNEXTSTEPStringEncoding,@"NSNEXTSTEPStringEncoding");
    ADD_int_OBJECT(NSNonLossyASCIIStringEncoding,@"NSNonLossyASCIIStringEncoding");
    ADD_int_OBJECT(NSShiftJISStringEncoding,@"NSShiftJISStringEncoding");
    ADD_int_OBJECT(NSSymbolStringEncoding,@"NSSymbolStringEncoding");
    ADD_int_OBJECT(NSUTF8StringEncoding,@"NSUTF8StringEncoding");
    ADD_int_OBJECT(NSUnicodeStringEncoding,@"NSUnicodeStringEncoding");
    ADD_int_OBJECT(NSWindowsCP1250StringEncoding,@"NSWindowsCP1250StringEncoding");
    ADD_int_OBJECT(NSWindowsCP1251StringEncoding,@"NSWindowsCP1251StringEncoding");
    ADD_int_OBJECT(NSWindowsCP1252StringEncoding,@"NSWindowsCP1252StringEncoding");
    ADD_int_OBJECT(NSWindowsCP1253StringEncoding,@"NSWindowsCP1253StringEncoding");
    ADD_int_OBJECT(NSWindowsCP1254StringEncoding,@"NSWindowsCP1254StringEncoding");
    ADD_id_OBJECT(NSInconsistentArchiveException,@"NSInconsistentArchiveException");
    ADD_id_OBJECT(NSCharacterConversionException,@"NSCharacterConversionException");
    ADD_id_OBJECT(NSGenericException,@"NSGenericException");
    ADD_id_OBJECT(NSInternalInconsistencyException,@"NSInternalInconsistencyException");
    ADD_id_OBJECT(NSInvalidArgumentException,@"NSInvalidArgumentException");
    ADD_id_OBJECT(NSMallocException,@"NSMallocException");
    ADD_id_OBJECT(NSPortTimeoutException,@"NSPortTimeoutException");
    ADD_id_OBJECT(NSRangeException,@"NSRangeException");
    ADD_id_OBJECT(NSFailedAuthenticationException,@"NSFailedAuthenticationException");
    ADD_id_OBJECT(NSConnectionDidDieNotification,@"NSConnectionDidDieNotification");
    ADD_id_OBJECT(NSPortDidBecomeInvalidNotification,@"NSPortDidBecomeInvalidNotification");
    ADD_id_OBJECT(NSBecomingMultiThreaded,@"NSBecomingMultiThreaded");
    ADD_id_OBJECT(NSThreadExiting,@"NSThreadExiting");
    ADD_id_OBJECT(NSGlobalDomain,@"NSGlobalDomain");
    ADD_id_OBJECT(NSArgumentDomain,@"NSArgumentDomain");
    ADD_id_OBJECT(NSRegistrationDomain,@"NSRegistrationDomain");

    return dict;
}

/* -- End of file -- */