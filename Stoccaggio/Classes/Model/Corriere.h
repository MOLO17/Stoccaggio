//
//  Corriere.h
//  Stoccaggio
//
//  Created by Daniele Angeli on 10/02/17.
//  Copyright © 2017 MOLO17 Srl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Corriere : NSObject

-(id)initWithTarga:(NSString *)targa volume:(NSInteger)volume andCarico:(NSInteger)carico;

@property (nonatomic, readonly) NSString *targa;
@property (nonatomic, readonly) NSInteger volume;
@property (nonatomic, readonly) NSInteger carico;

@end
