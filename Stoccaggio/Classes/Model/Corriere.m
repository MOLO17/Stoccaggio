//
//  Corriere.m
//  Stoccaggio
//
//  Created by Daniele Angeli on 10/02/17.
//  Copyright © 2017 MOLO17 Srl. All rights reserved.
//

#import "Corriere.h"

@implementation Corriere

-(id)initWithTarga:(NSString *)targa volume:(NSInteger)volume andCarico:(NSInteger)carico {
    self = [super init];
    
    if (self) {
        _targa = targa;
        _volume = volume;
        _carico = carico;
    }
    
    return self;
}

#pragma mark - Overrides

-(NSString *)description {
    return [NSString stringWithFormat:@"%@\nTarga: %@\nVolume: %li\nCarico: %li",
            [super description],
            self.targa,
            self.volume,
            self.carico/1000
            ];
}

@end
