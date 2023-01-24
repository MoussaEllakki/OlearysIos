
import Foundation

class DrinksMenus {
    
    
    let coktailsmenu = Menu()
    let beerMenu = Menu()
    let ciderAndSodaMenue = Menu()
    let wineMenu = Menu()
    
    var drinksmenus = [Menu]()
    
    init (){
        
        
        // 1 COCKTAILS
        let aperolSpritz = Drink(name: "APEROL SPRITZ", price: 125.0)
        let vodkaRedBull = Drink(name: "VODKA RED BULL", price:129.0)
        let classicMargareta = Drink(name: "CLASSIC MARGARITA", price: 119.0 )
        let classicMintMojito = Drink(name: "CLASSIC MINT MOJITO", price: 119.0)
        let heroGinFentimansTonic = Drink(name: "HERNÖ GIN & TONIC", price: 119.0 )
        let ginAndTonic = Drink(name: "GIN & TONIC", price: 109.0 )
        let fishShot = Drink(name: "FISHSHOT", price:88.0 )
        let sourFiskCola = Drink(name: "SOUR FISK COLA", price: 88.0)
        let gammelDansk = Drink(name: "GAMMEL DANSK", price: 88.0)
        let fernetBranca = Drink(name: "FERNET BRANCA", price: 88.0)
        
        let jimBeamHighBall = Drink(name: "JIM BEAM HIGHBALL", price: 109.0)
        let jackAndCola = Drink(name: "JACK & COLA", price: 109.0 )
        let passionFruitCobbler = Drink(name: "PASSION FRUIT COBBLER", price: 125.0 )
        let negroni = Drink(name: "NEGRONI", price: 109.0)
        let espressoMartini = Drink(name: "ESPRESSO MARTINI", price: 119.0)
        let strawberryLemonMocktail = Drink(name: "STRAWBERRY MOCKTAIL", price: 109.0 )
        let brancaMenta = Drink(name: "BRANCA MENTA", price:88.0 )
        let bacardiRazz = Drink(name: "BACARDI RAZZ", price: 88.0)
        let sourFiskIcePear = Drink(name: "SOUR FISK ICE PEAR", price:88.0 )
        let jackDanielsHoney = Drink(name: "JACK DANIELS HONEY", price: 100.0)
        
        
        self.coktailsmenu.tittle = "Coktail"
        self.coktailsmenu.types = [aperolSpritz,vodkaRedBull,classicMargareta,classicMintMojito
                                   ,heroGinFentimansTonic,ginAndTonic,fishShot,sourFiskCola,gammelDansk,fernetBranca,
                                   jimBeamHighBall,jackAndCola,passionFruitCobbler,negroni,espressoMartini,strawberryLemonMocktail,
                                   brancaMenta,bacardiRazz,sourFiskIcePear,jackDanielsHoney]
        
        
        
        //-------------------------------------------------------------------------------------------------------
        
        // 2 BEER
        let brooklynLager40cl = Drink(name: "BROOKLYN LAGER 40cl ", price: 72.0)
        let brooklynLager50cl = Drink(name: "BROOKLYN LAGER 50cl ", price: 90.0)
        let carlsbergHof40cl = Drink(name: "CARLSBERG HOF 40cl ", price:59.0 )
        let carlsbergHof50cl = Drink(name: "CARLSBERG HOF 40cl ", price:69.0 )
        let staropramen40cl = Drink(name: "STAROPRAMEN 40cl ", price:79.0 )
        let staropramen50 = Drink(name: "STAROPRAMEN 50cl ", price:89.0 )
        let carlsbergExport40cl = Drink(name: "CARLSBERG EXPORT 40cl ", price:72.0 )
        let carlsbergExport50cl = Drink(name: "CARLSBERG EXPORT 50cl ", price:82.0 )
        let brooklynDefenderIpa40cl = Drink(name: "BROOKLYN DEFENDER IPA", price:75.0 )
        let guinnesDraught = Drink(name: "GUINNESS DRAUGHT", price: 85.0)
        let samuelAdamBostonLager = Drink(name: "SAMUEL ADAMS BOSTON", price:69.0 )
        let eriksbergLager = Drink(name: "ERIKSBERG LAGER", price: 75.0)
        let eriksbergKaraktarBarnStenlager =  Drink(name: "ERIKSBERG", price:65.0 )
        let coronaExtra =  Drink(name: "CORONA EXTRA", price: 69.0)
        let blancWitbier1664 = Drink(name: "1664 BLANC WITBIER", price: 69.0)
        let erdingerHefeWeissbier = Drink(name: "ERDINGER WEISSBIER", price: 85.0)
        let grimbergenblondeAle = Drink(name: "GRIMBERGEN BLONDE ALE", price:69.0 )
        let brooklynEipa = Drink(name: "BROOKLYN EIPA", price:79.0 )
        let lagunitas = Drink(name: "LAGUNITAS IPA", price:79.0 )
        let brooklynBelAir = Drink(name: "BROOKLYN BEL AIR", price:79.0 )
        let ncbBreWery = Drink(name: "NCB BREWERY", price: 85.0)
        let brooklynSpecialEffects = Drink(name: "BROOKLYN SPECIAL", price:45.0)
        let stigunaNapa = Drink(name: "SIGTUNA NAPA", price:49.0)
        let carlsBergEko = Drink(name: "CARLSBERG EKO", price: 39.0)
        
        
        self.beerMenu.tittle = "Beer"
        self.beerMenu.types = [brooklynLager40cl,brooklynLager50cl,carlsbergHof40cl,carlsbergHof50cl,staropramen40cl,staropramen50,
                               carlsbergExport40cl,carlsbergExport50cl,brooklynDefenderIpa40cl,guinnesDraught,
                               samuelAdamBostonLager,eriksbergLager,eriksbergKaraktarBarnStenlager,coronaExtra,blancWitbier1664,
                               erdingerHefeWeissbier,grimbergenblondeAle,brooklynEipa,lagunitas,brooklynBelAir,ncbBreWery,brooklynSpecialEffects,
                               stigunaNapa,carlsBergEko]
        
        //-------------------------------------------------------------------------------------------------------
        // 3 Cider And Soda
        
        
        let boulardCiderEko = Drink(name: "BOULARD CIDRE EKO", price: 75.0 )
        let somersbySweetCider = Drink(name: "SOMERSBY SWEET CIDER", price: 69.0)
        let somersbyCider  = Drink(name: "SOMERSBY CIDER 0,0%", price:45.0 )
        
        let pepsimax = Drink(name: "PEPSI MAX", price: 39.0)
        let pepsi = Drink(name: "PEPSI", price: 39.0)
        let zingo = Drink(name: "ZINGO", price: 39.0)
        let sevenUp  = Drink(name: "7-UP", price: 39.0)
        let ramlosa = Drink(name: "RAMLÖSA ", price: 29.0)
        let redBull  = Drink(name: "RED BULL", price: 49.0)
        let redBullSugarFree = Drink(name: "RED BULL SUGARFREE", price: 49.0)
        
        self.ciderAndSodaMenue.tittle = "Cider & Soda"
        self.ciderAndSodaMenue.types =  [boulardCiderEko,somersbySweetCider,somersbyCider,pepsimax,pepsi,
                                         zingo,sevenUp,ramlosa,redBull,redBullSugarFree]
        
        //-------------------------------------------------------------------------------------------------------
        // 4 Wine
        
        let champangeBrutMajeurAyalaGlas  = Drink(name: "CHAMPAGNE MAJEUR AYALA", price: 139.0 )
        let cavaJuameSeeraEkoGlas = Drink(name: "CAVA JAUME SERRA EKO", price: 89.0 )
        let proseccoAbbaziaExtraDryGlas = Drink(name: "PROSECCO ABBAZIA", price: 89.0 )
        let vintenseSparklingAlcoholFreeGlas = Drink(name: "VINTENSE SPARKLING", price: 69.0)
        let loCaTourCreamyChardonnayGlas = Drink(name: "LO.CA.TOUR CREAMY", price: 119.0)
        let turckheimPinotBlancEkoGlas = Drink(name: "TURCKHEIM PINOT", price: 119.0 )
        let settesoliGrilloEkoGlas = Drink(name: "SETTESOLI GRILLO", price: 89.0 )
        let vintenseChardonnayAlcoholFreeGlas = Drink(name: "VINTENSE CHARDONNAY", price: 69.0 )
        let mariuspeyolCotesDeprovenceRoseGlas = Drink(name: "MARIUS PEYOL", price: 119.0)
        let settesoliRoseEkoGlas = Drink(name: "SETTESOLI ROSÉ", price: 89.0)
        let loCaTourZinfandelGlas = Drink(name: "LO.CA.TOUR ZINFANDEL", price: 119.0)
        let poggioAlCasoneChiantiSuperioreGlas = Drink(name: "POGGIO AL CASONE CHIANTI", price: 119.0 )
        let faustinoViiRiojaGlas  = Drink(name: "FAUSTINO VII RIOJA", price: 119.0)
        let paulJabouletCotesDuParalleleGlas = Drink(name: "PAUL JABOULET CÔTES", price: 119.0)
        let settesoliNeroDAvolaEkoGlas = Drink(name: "SETTESOLI NERO D", price: 89.0)
        let vintenseMerlotAlcoholoFreeGlas = Drink(name: "VINTENSE MERLOT", price: 69.0)
 
        self.wineMenu.tittle = "Wine"
        self.wineMenu.types = [champangeBrutMajeurAyalaGlas,cavaJuameSeeraEkoGlas,
                               proseccoAbbaziaExtraDryGlas,vintenseSparklingAlcoholFreeGlas,loCaTourCreamyChardonnayGlas,turckheimPinotBlancEkoGlas,settesoliGrilloEkoGlas,vintenseChardonnayAlcoholFreeGlas,mariuspeyolCotesDeprovenceRoseGlas,
                         settesoliRoseEkoGlas,loCaTourZinfandelGlas,poggioAlCasoneChiantiSuperioreGlas,
                               faustinoViiRiojaGlas,paulJabouletCotesDuParalleleGlas,
                               settesoliNeroDAvolaEkoGlas,vintenseMerlotAlcoholoFreeGlas]
        
        
        self.drinksmenus = [coktailsmenu,beerMenu,ciderAndSodaMenue,wineMenu]
        
    }
    
    
    
    
}
