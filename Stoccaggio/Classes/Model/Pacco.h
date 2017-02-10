//
//  Pacco.h
//  Stoccaggio
//
//  Created by Daniele Angeli on 08/02/17.
//  Copyright © 2017 MOLO17 Srl. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Materiale) {
    MaterialeFerro = 0,
    MaterialePlastica = 1,
    MaterialeCarta = 2
};

@interface Pacco : NSObject

/// Initializer (Costruttore)
-(id)initWithCodice:(NSString *)codice
           mittente:(NSString *)mittente
       destinatario:(NSString *)destinatario
          lunghezza:(NSInteger)lunghezza
            altezza:(NSInteger)altezza
         profondita:(NSInteger)profondita
       andMateriale:(Materiale)materiale;

/// Il codice indentificativo del pacco
@property (nonatomic, strong, readonly) NSString *codice;

/// Il mittente che ha spedito il pacco
@property (nonatomic, strong, readonly) NSString *mittente;

/// Il destinatario del pacco
@property (nonatomic, strong) NSString *destinatario;

/// Lunghezza del pacco
@property (nonatomic, readonly) NSInteger lunghezza;

/// Altezza del pacco
@property (nonatomic, readonly) NSInteger altezza;

/// Profondità del pacco
@property (nonatomic, readonly) NSInteger profondita;

/// Volume del pacco -> to be calculated
@property (nonatomic, readonly) NSInteger volume;

/// Peso del pacco -> to be calculated
@property (nonatomic, readonly) NSInteger peso;

/// Tipologia Materiale contenuto nel pacco
@property (nonatomic, readonly) Materiale materiale;

@end
