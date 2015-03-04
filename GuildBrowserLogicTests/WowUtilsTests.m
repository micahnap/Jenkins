//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by Micah on 4/03/2015.
//  Copyright (c) 2015 Charlie Fulton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "WoWUtils.h"

@interface WowUtilsTests : XCTestCase

@end

@implementation WowUtilsTests

-(void)testCharacterClassNameLookup
{
    // 2
    
    for (int i =0 ; i < 11; i++) {
        XCTAssertEqualObjects([WoWUtils classFromCharacterType:i],
                              [WoWUtils classFromCharacterType:i],
                              @"YOU ARE NO WARRIOR");
    }
    
    
    // 3
    XCTAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]],
                  @"fail should not be mage");
    
    // 4
    XCTAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]],
                 @"true should be paladin");
    // add the rest as an exercise
}

- (void)testRaceTypeLookup
{
    XCTAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], @"race type should be human");
    XCTAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], @"race type should be orc");
    XCTAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]],@"should not be night elf");
    // add the rest as an exercise
}

@end
