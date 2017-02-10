//
//  Pacco.m
//  Stoccaggio
//
//  Created by Daniele Angeli on 08/02/17.
//  Copyright © 2017 MOLO17 Srl. All rights reserved.
//

#import "Pacco.h"
#import "Utils.h"

@implementation Pacco

-(id)initWithCodice:(NSString *)codice
           mittente:(NSString *)mittente
       destinatario:(NSString *)destinatario
          lunghezza:(NSInteger)lunghezza
            altezza:(NSInteger)altezza
         profondita:(NSInteger)profondita
       andMateriale:(Materiale)materiale {
    // chiamo il costruttore del mio oggetto da cui eredito (in questo caso NSObject
    self = [super init];
    
    // controllo se il costruttore padre ha allocato il mio oggetto
    if (self) {
        // se tutto è ok procedo con l'inizializzazione delle mie properties
        _codice = codice;
        _mittente = mittente;
        _destinatario = destinatario;
        _lunghezza = lunghezza;
        _altezza = altezza;
        _profondita = profondita;
        _materiale = materiale;
    }
    
    // ritorno "me stesso" allocato o meno
    return self;
}

#pragma mark - Getters

-(NSInteger)volume {
    return _lunghezza * _altezza * _profondita;
}

-(NSInteger)peso {
    NSInteger pesoSpecifico;
    
    switch (_materiale) {
        case MaterialeCarta:
            pesoSpecifico = kPesoSpecificoCarta;
            break;
        case MaterialeFerro:
            pesoSpecifico = kPesoSpecificoFerro;
            break;
        case MaterialePlastica:
            pesoSpecifico = kPesoSpecificoPlastica;
            break;
        default:
            pesoSpecifico = 0;
            break;
    }
    
    return self.volume * pesoSpecifico;
}

#pragma mark - Overrides

-(NSString *)description {
    NSString *newDescription = [NSString stringWithFormat:@"%@\nCodice: %@\nMittente: %@\nDestinatario: %@\nLunghezza: %li\nAltezza: %li\nProfondità: %li\nMateriale: %li\nVolume: %licm3\nPeso: %likg",
                                [super description],
                                self.codice,
                                self.mittente,
                                self.destinatario,
                                self.lunghezza,
                                self.altezza,
                                self.profondita,
                                self.materiale,
                                self.volume,
                                self.peso/1000
                                ];
    
    return newDescription;
}

@end
