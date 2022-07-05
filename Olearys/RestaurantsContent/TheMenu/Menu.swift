

import Foundation

class Menu {
    
   
    //Food
    var snacknShare = [Food]()
    var burgers = [Food]()
    var mains = [Food]()
    var sauces = [Food]()
    var food = [[Food]]()
    
    
    //Desserts
    var desserts = [Dessert]()
    var coffeDrinks = [Dessert]()
    var avec = [Dessert]()
    var kids = [Dessert]()
    var allDesserts = [[Dessert]]()
   
    //Coktails
    var coktails = [Drink]()
    var beers = [Drink]()
    var cidersAndSoda = [Drink]()
    var wines = [Drink]()
    
    
    //-----------------------------------------------------------------------------------
                                      // 1 Food Menu
    //-----------------------------------------------------------------------------------
  
    // 1 SNACK ́N SHARE -> belogs to food menu
    let hotbuffalowings5Pcs = Food(name:  "Hot BUFFALO WINGS 5P", price: 99.0)
    let hotbuffalowings10Pcs = Food(name: "Hot Buffalo Wings 10P", price: 159.0)
    let hotbuffalowings15Pcs = Food(name: "Hot Buffalo Wings 15P", price: 199.0)
    
    let parmesanGarlicWings5p  = Food(name: " PARMESAN & GARLIC WINGS 5P", price: 99.0)
    let parmesanGarlicWings10p = Food(name: " PARMESAN & GARLIC WINGS 10P", price: 159.0)
    let parmesanGarlicWings15p = Food(name: " PARMESAN & GARLIC WINGS 15P", price: 199.0)
    
    let olearysComboPlate = Food(name: "OLEARYS COMBO PLATE", price: 129.0)
    let pannoumiCheesSticks = Food(name: "PANNOUMI CHEESE STICKS", price: 55.0)
    
    let garlicCheeseBread = Food(name: "GARLIC & CHEESE BREAD", price: 25.0)
    let beefCheeseNachos = Food(name: "BEEF & CHEESE NACHOS", price: 109.0)
    let beefCheeseNachosGuacamole = Food(name: "BEEF & CHEESE NACHOS Guacamole", price: 119.0)
    let nachos = Food(name: "NACHOS", price: 55.0)
    let grilledChickenQuesadillas = Food(name: "GRILLED CHICKEN QUESADILLAS", price: 135.0)
    let oumphQuesadillasVagen = Food(name: "OUMPH QUESADILLAS (VEGAN)", price: 269)
    
  
    
    func filSnacknShare (){
        self.snacknShare = [hotbuffalowings5Pcs,hotbuffalowings10Pcs,hotbuffalowings15Pcs,
                            parmesanGarlicWings5p,parmesanGarlicWings10p,parmesanGarlicWings15p,
                            olearysComboPlate,pannoumiCheesSticks,garlicCheeseBread,beefCheeseNachos,
                            nachos,grilledChickenQuesadillas,oumphQuesadillasVagen]
    }
    
    //------------------------------------------------------------------------------------------
     
    
    // 2 BURGERS  -> belogs to food menu
    let chilliCheeseBurger = Food(name: "CHILLI CHEESE BURGER", price: 185.0)
    let baconBbqBurger = Food(name: "BACON BBQ BURGER", price: 185.0)
    let truffleOozingBurger = Food(name: "TRUFFLE OOZING BURGER", price: 185.0)
    let giantDoubleCheeseBurger = Food(name: "GIANT DOUBLE CHEESE BURGER", price: 209.0)
    let cheedarCheeseBurger = Food(name: "CHEDAR CHEESE BURGER ", price: 169.0)
    let crispyNachoBurger = Food(name: "Crispy NACHO BURGER", price: 175)
    let texMexOumphburger = Food(name: "TEX - MEX OUMPH BURGER VEGAN", price: 175.0)
    let sweetPotatoFries = Food(name: "SWEET POTATO FRIES", price: 15.0)
    let cheesyFries = Food(name: "CHEESY FRIES", price: 25.0)
    let onionRings2p = Food(name: "ONION RINGS 2P", price: 15.0)
    let jalapenoPoppers2p = Food(name: "JALAPENO POPPERS 2P", price: 15.0)
    let mozzarellaSticks2p = Food(name: "MOZZARELLA STICKS 2P", price: 15.0)
    let bacon = Food(name: "BACON", price: 10.0)
  
   func filBurgers (){
        self.burgers = [chilliCheeseBurger,baconBbqBurger,truffleOozingBurger,giantDoubleCheeseBurger,
                        cheedarCheeseBurger,crispyNachoBurger,texMexOumphburger,sweetPotatoFries,
                        cheesyFries,onionRings2p,jalapenoPoppers2p,mozzarellaSticks2p,bacon]
    }
    
    //------------------------------------------------------------------------------------------
    
    //3 DIP SAUCES  -> belogs to food menu
    let aioli = Food(name: "AIOLI", price: 10.0)
    let parmesanAndgarlic = Food(name: "PARMESAN & GARLIC", price: 10.0)
    let hotCheedar = Food(name: "HOT CHEEDAR", price: 10.0)
    let blueCheese = Food(name: "Blue CHEESE", price: 10.0)
    let bearnaise = Food(name: "Béarnaise", price: 10.0)
    let truffleFlavouredMayo = Food(name: "TRUFFLE FLAVOURED MAYO", price:10.0)
    let chilleMayo = Food(name: "chilli MAYO", price: 10.0)
    

    
    func filSauces (){
        self.sauces = [aioli,parmesanAndgarlic,hotCheedar,blueCheese,bearnaise,truffleFlavouredMayo,chilleMayo]
        
    }
    
    //------------------------------------------------------------------------------------------
    
    // 4 MAINS  -> belogs to food menu
    let ryggBiff = Food(name: "RYGGBIFF", price: 299.0)
    let oxFile = Food(name: "OXFILÉ", price: 299.0)
    let bourbonBqqRibs = Food(name: "BOURBON BBQ RIBS", price: 209.0)
    let fishNChips = Food(name: "FISH N’CHIPS", price: 169.0)
    let creamypastaRäkor = Food(name: "CREAMY PASTA RÄKOR", price: 199.0)
    let creamypastaOxFile = Food(name: "CREAMY PASTA OXFILE", price: 209.0)
    let creamypastaVegetarisk = Food(name: "CREAMY PASTA VEGETARISK ", price: 179.0)
    let oLearysMixedGrill = Food(name: "O’Learys Mixed Grill ", price: 305.0)
    
   
    
    func fillMain (){
        self.mains = [ryggBiff,oxFile,bourbonBqqRibs,fishNChips,creamypastaRäkor,creamypastaOxFile,
                 creamypastaVegetarisk,oLearysMixedGrill]
        
    }
    
    //------------------------------------------------------------------------------------------
    
   
    func fillFoodMenu (){
        
        filSnacknShare()
        filBurgers()
        filSauces()
        fillMain()
        self.food = [snacknShare,burgers,sauces,mains]
    }
    
    //--------------------------------------------------------------------------------------
                                      //2 Dessert Menu
    //--------------------------------------------------------------------------------------
    
    
    //1 Desserts -> belogs to desserts menu
     let chooclateBrowine =  Dessert(name: "CHOCOLATE BROWNIE", price: 59.0)
     let sweetLemonTiramisu = Dessert(name: " SWEET LEMON TIRAMISU", price:39.0)
     let deepFiedBroWine  = Dessert(name: "DEEP FRIED BROWNIE", price:29.0)
     let iceCreamSundae   = Dessert(name: "ICE CREAM SUNDAE", price:49.0)
     let cheeseCake   = Dessert(name: "CHEESE CAKE", price:59.0)
     let strawberryMilkshake = Dessert(name: "STRAWBERRY MILKSHAKE", price:69.0 )
     let chocolateMilkshake = Dessert(name: "CHOCOLATE MILKSHAKE", price:69.0 )
   
    
    func fillDeserts (){
        self.desserts = [chooclateBrowine,sweetLemonTiramisu,deepFiedBroWine,
        iceCreamSundae,cheeseCake,strawberryMilkshake,chocolateMilkshake]
    }

    
     //------------------------------------------------------------------------------------------
     //2 COFFEE DRINKS -> belogs to desserts menu
    let espressomartini = Dessert(name: "ESPRESSO MARTINI", price: 119.0)
    let tullamore = Dessert(name: "ULLAMORE IRISH COFFEE", price: 119.0)
    let gallianoMartini = Dessert(name: "GALLIANO MARTINI", price: 119.0)
    let jamaicanCoffe = Dessert(name: "JAMAICAN COFFEE", price: 119.0)
    let coffe = Dessert(name: "COFFEE", price: 29.0)
    let tea = Dessert(name: "TEA", price: 29.0)
    let espressoSmall = Dessert(name: "ESPRESSO SMALL", price: 29.0)
    let espressoBig = Dessert(name: "ESPRESSO BIG", price: 39.0)
    let cappucciono = Dessert(name: "CAPPUCCINO", price: 45.0)
    let coffeLatte  = Dessert(name: "CAFFE LATTE", price: 45.0)
    
    
    func fillCoffeDrinks (){
        self.coffeDrinks = [espressomartini,tullamore,gallianoMartini,jamaicanCoffe,coffe,tea,
                     espressoSmall,espressoBig,cappucciono,coffeLatte]
    }
    
    //------------------------------------------------------------------------------------------
    
    //3 AVEC -> belogs to desserts menu
    let braastadVs = Dessert(name: "BRAASTAD VS", price: 112.0)
    let boulardCalvados = Dessert(name: "BOULARD CALVADOS", price: 120.0)
    let makersMars = Dessert(name: "MAKERS MARK", price: 112.0)
    let limoncelloVillaMassa = Dessert(name: "LIMONCELLO VILLA MASSA", price: 100.0)
    let bacardiSpiced = Dessert(name: "BACARDI SPICED", price: 100.0)
    let gentelmanJack = Dessert(name: "GENTLEMAN JACK", price: 144.0)
    let jackDaniels = Dessert(name: "JACK DANIELS", price: 112.0)
    let jimBean = Dessert(name: "JIM BEAM", price: 100.0)
    
    let famousGrouse = Dessert(name: "FAMOUS GROUSE", price: 104.0)
    let highlandPark12 = Dessert(name: "HIGHLAND PARK 12", price: 112.0)
    let macallanDbCask12 = Dessert(name: "MACALLAN DB CASK 12", price: 144.0)
    let laphroaig10 = Dessert(name: "LAPHROAIG 10", price: 112.0)
    let theKraken = Dessert(name: "THE KRAKEN", price: 100.0)
    let bacaradi8Anos = Dessert(name: "BACARDI 8 AÑOS", price: 112.0)
    let baileys = Dessert(name: "BAILEYS", price: 88.0)
    let vaccariSambuca = Dessert(name: "VACCARI SAMBUCA", price: 94.0)
    
    func fillAvec (){
        
        self.avec = [braastadVs,boulardCalvados,makersMars,limoncelloVillaMassa,bacardiSpiced,
                    gentelmanJack,jackDaniels,jimBean,famousGrouse,highlandPark12,laphroaig10,theKraken,bacaradi8Anos,baileys,vaccariSambuca]
        }
    
  //------------------------------------------------------------------------------------------
    
    // 4 kids -> belogs to desserts menu
    let cheesBurger = Dessert(name: "Cheeseburger", price: 69.0 )
    let fishAndChips = Dessert(name: "FISH & CHIPS", price: 69.9 )
    let chickenNuggets = Dessert(name: "CHICKEN NUGGETS", price: 69.0 )
    let quesadilla = Dessert(name: "quesadilla", price: 69.0 )
    let brownie = Dessert(name: "BROWNIE", price: 35.0)
    let sundae = Dessert(name: "SUNDAE", price: 29.9)
    let pancakes = Dessert(name: "PANCAKES", price: 29.0 )
    
    
    
    func fillKidsMenu (){
        
        self.kids = [cheesBurger,fishAndChips,chickenNuggets,quesadilla,brownie,sundae, pancakes]
        
    }
    
    func fillDessertsMenu (){
        
        fillDeserts()
        fillCoffeDrinks()
        fillAvec()
        fillKidsMenu()
        self.allDesserts = [desserts,coffeDrinks,avec,kids]
        
    }
    
    //--------------------------------------------------------------------------------------
                                      // Drinks Menu
    //--------------------------------------------------------------------------------------
    
    // 1 COCKTAILS -> belogs to drinks Menu
    let aperolSpritz = Drink(name: "APEROL SPRITZ", price: 125.0)
    let vodkaRedBull = Drink(name: "VODKA RED BULL", price:129.0)
    let classicMargareta = Drink(name: "CLASSIC MARGARITA", price: 119.0 )
    let classicMintMojito = Drink(name: "CLASSIC MINT MOJITO", price: 119.0)
    let heroGinFentimansTonic = Drink(name: "HERNÖ GIN & FENTIMANS TONIC", price: 119.0 )
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
    let strawberryLemonMocktail = Drink(name: "STRAWBERRY LEMONADE MOCKTAIL", price: 109.0 )
    let brancaMenta = Drink(name: "BRANCA MENTA", price:88.0 )
    let bacardiRazz = Drink(name: "BACARDI RAZZ", price: 88.0)
    let sourFiskIcePear = Drink(name: "SOUR FISK ICE PEAR", price:88.0 )
    let jackDanielsHoney = Drink(name: "JACK DANIELS HONEY", price: 100.0)
    
    
    func filCoktails (){
        
        self.coktails = [aperolSpritz,vodkaRedBull,classicMargareta,classicMintMojito
        ,heroGinFentimansTonic,ginAndTonic,fishShot,sourFiskCola,gammelDansk,fernetBranca,
        jimBeamHighBall,jackAndCola,passionFruitCobbler,negroni,espressoMartini,strawberryLemonMocktail,
        brancaMenta,bacardiRazz,sourFiskIcePear,jackDanielsHoney]
    }
    //------------------------------------------------------------------------------------------
    
    // 2 BEER -> belogs to drinks Menu
    let brooklynLager40cl = Drink(name: "BROOKLYN LAGER 40cl ", price: 72.0)
    let brooklynLager50cl = Drink(name: "BROOKLYN LAGER 50cl ", price: 90.0)
    let carlsbergHof40cl = Drink(name: "CARLSBERG HOF 40cl ", price:59.0 )
    let carlsbergHof50cl = Drink(name: "CARLSBERG HOF 40cl ", price:69.0 )
    let staropramen40cl = Drink(name: "STAROPRAMEN 40cl ", price:79.0 )
    let staropramen50 = Drink(name: "STAROPRAMEN 50cl ", price:89.0 )
    let carlsbergExport40cl = Drink(name: "CARLSBERG EXPORT 40cl ", price:72.0 )
    let carlsbergExport50cl = Drink(name: "CARLSBERG EXPORT 50cl ", price:82.0 )
    let brooklynDefenderIpa40cl = Drink(name: "BROOKLYN DEFENDER IPA 40cl ", price:75.0 )
    let brooklynDefenderIpa50cl = Drink(name: "BROOKLYN DEFENDER IPA 50cl ", price:94.0 )
    let guinnesDraught = Drink(name: "GUINNESS DRAUGHT", price: 85.0)
 
    let samuelAdamBostonLager = Drink(name: "SAMUEL ADAMS BOSTON LAGER", price:69.0 )
    let eriksbergLager = Drink(name: "ERIKSBERG LAGER", price: 75.0)
    let eriksbergKaraktarBarnStenlager =  Drink(name: "ERIKSBERG KARAKTÄR BÄRNSTENSLAGER", price:65.0 )
    let coronaExtra =  Drink(name: "CORONA EXTRA", price: 69.0)
    let blancWitbier1664 = Drink(name: "1664 BLANC WITBIER", price: 69.0)
    let erdingerHefeWeissbier = Drink(name: "ERDINGER HEFE WEISSBIER", price: 85.0)
    let grimbergenblondeAle = Drink(name: "GRIMBERGEN BLONDE ALE", price:69.0 )
    let brooklynEipa = Drink(name: "BROOKLYN EIPA", price:79.0 )
    let lagunitas = Drink(name: "LAGUNITAS IPA", price:79.0 )
    let brooklynBelAir = Drink(name: "BROOKLYN BEL AIR", price:79.0 )
    let ncbBreWery = Drink(name: "NCB BREWERY", price: 85.0)
    let brooklynSpecialEffects = Drink(name: "BROOKLYN SPECIAL EFFECTS", price:45.0)
    let stigunaNapa = Drink(name: "SIGTUNA NAPA", price:49.0)
    let carlsBergEko = Drink(name: "CARLSBERG EKO", price: 39.0)
    
    
    func filBeers (){
        
        self.beers = [brooklynLager40cl,brooklynLager50cl,carlsbergHof40cl,carlsbergHof50cl,staropramen40cl,staropramen50,
        carlsbergExport40cl,carlsbergExport50cl,brooklynDefenderIpa40cl,brooklynDefenderIpa50cl,guinnesDraught,
        samuelAdamBostonLager,eriksbergLager,eriksbergKaraktarBarnStenlager,coronaExtra,blancWitbier1664,
        erdingerHefeWeissbier,grimbergenblondeAle,brooklynEipa,lagunitas,brooklynBelAir,ncbBreWery,brooklynSpecialEffects,
        stigunaNapa,carlsBergEko]
        
    }
    
    //------------------------------------------------------------------------------------------
    
    // 3 CIDER & Läsk -> belogs to drinks Menu
    
    let boulardCiderEko = Drink(name: "BOULARD CIDRE EKO", price: 75.0 )
    let somersbySweetCider = Drink(name: "SOMERSBY SWEET CIDER", price: 69.9)
    let somersbyCider  = Drink(name: "SOMERSBY CIDER 0,0%", price:45.0 )
    
    let pepsimax = Drink(name: "PEPSI MAX", price: 39.0)
    let pepsi = Drink(name: "PEPSI", price: 39.0)
    let zingo = Drink(name: "ZINGO", price: 39.0)
    let sevenUp  = Drink(name: "7-UP", price: 39.0)
    let ramlosa = Drink(name: "RAMLÖSA ", price: 29.0)
    let redBull  = Drink(name: "RED BULL", price: 49.0)
    let redBullSugarFree = Drink(name: "RED BULL SUGARFREE", price: 49.0)
   
    
    func fillCiderAndSoda (){
      
        self.cidersAndSoda = [boulardCiderEko,somersbySweetCider,somersbyCider,pepsimax,pepsi,
                             zingo,sevenUp,ramlosa,redBull,redBullSugarFree]
        
    }

    //------------------------------------------------------------------------------------------
    
    // 4 Wine -> belogs to drinks Menu
    let champangeBrutMajeurAyalaGlas  = Drink(name: "CHAMPAGNE BRUT MAJEUR AYALA / G", price: 139.0 )
    let champangeBrutMajeurAyalaFlaska  = Drink(name: "CHAMPAGNE BRUT MAJEUR AYALA / F", price: 869.0 )
    
    let cavaJuameSeeraEkoGlas = Drink(name: "CAVA JAUME SERRA EKO / G", price: 89.0 )
    let cavaJuameSeeraEkoFlaska = Drink(name: "CAVA JAUME SERRA EKO / F", price: 449.0 )
    
    let proseccoAbbaziaExtraDryGlas = Drink(name: "PROSECCO ABBAZIA EXTRA DRY / G", price: 89.0 )
    let proseccoAbbaziaExtraDryFlaska = Drink(name: "PROSECCO ABBAZIA EXTRA DRY / F", price: 449.0 )
    
    let vintenseSparklingAlcoholFreeGlas = Drink(name: "VINTENSE SPARKLING Alcohol FREE / G", price: 69.0)
    let vintenseSparklingAlcoholFreeFlaska = Drink(name: "VINTENSE SPARKLING Alcohol FREE / F", price: 289.0)
    
    let loCaTourCreamyChardonnayGlas = Drink(name: "LO.CA.TOUR CREAMY CHARDONNAY / G", price: 119.0)
    let loCaTourCreamyChardonnayFlaska = Drink(name: "LO.CA.TOUR CREAMY CHARDONNAY / F", price: 496.0)
    
    let turckheimPinotBlancEkoGlas = Drink(name: "TURCKHEIM PINOT BLANC EKO / G", price: 119.0 )
    let turckheimPinotBlancEkoFlaska = Drink(name: "TURCKHEIM PINOT BLANC EKO / F", price: 496.0 )
    
    let settesoliGrilloEkoGlas = Drink(name: "SETTESOLI GRILLO EKO / G", price: 89.0 )
    let settesoliGrilloEkoFlaska = Drink(name: "SETTESOLI GRILLO EKO / F", price: 371.0 )
    
    let vintenseChardonnayAlcoholFreeGlas = Drink(name: "VINTENSE CHARDONNAY ALCOHOL FREE / G", price: 69.0 )
    let vintenseChardonnayAlcoholFreeFlaska = Drink(name: "VINTENSE CHARDONNAY ALCOHOL FREE / F", price: 289.0 )
    
    let mariuspeyolCotesDeprovenceRoseGlas = Drink(name: "MARIUS PEYOL CÔTES DE PROVENCE ROSÉ / G", price: 119.0)
    let mariuspeyolCotesDeprovenceRoseFlaska = Drink(name: "MARIUS PEYOL CÔTES DE PROVENCE ROSÉ / F", price: 496.0 )
    
    let settesoliRoseEkoGlas = Drink(name: "SETTESOLI ROSÉ EKO / G", price: 89.0)
    let settesoliRoseEkoFlaska = Drink(name: "SETTESOLI ROSÉ EKO / F", price: 371.0)
    
    let loCaTourZinfandelGlas = Drink(name: "LO.CA.TOUR ZINFANDEL / G", price: 119.0)
    let loCaTourZinfandelFlaska = Drink(name: "LO.CA.TOUR ZINFANDEL / F", price: 496.0)
    
    let poggioAlCasoneChiantiSuperioreGlas = Drink(name: "POGGIO AL CASONE CHIANTI SUPERIORE / G", price: 119.0 )
    let poggioAlCasoneChiantiSuperioreFlaska = Drink(name: "POGGIO AL CASONE CHIANTI SUPERIORE / F", price: 496.0)
    
    let faustinoViiRiojaGlas  = Drink(name: "FAUSTINO VII RIOJA / G", price: 119.0)
    let faustinoViiRiojaFlaska  = Drink(name: "FAUSTINO VII RIOJA / F", price:496.0 )
    
    let paulJabouletCotesDuParalleleGlas = Drink(name: "PAUL JABOULET CÔTES DU RHÔNE PARALLÈLE / G", price: 119.0)
    let paulJabouletCotesDuParalleleFlaska = Drink(name: "PAUL JABOULET CÔTES DU RHÔNE PARALLÈLE / F", price: 496.0 )
    
    let settesoliNeroDAvolaEkoGlas = Drink(name: "SETTESOLI NERO D ́AVOLA EKO / G", price: 89.0)
    let settesoliNeroDAvolaEkoFlaska = Drink(name: "SETTESOLI NERO D ́AVOLA EKO / F", price: 371.0)
    
    let vintenseMerlotAlcoholoFreeGlas = Drink(name: "VINTENSE MERLOT Alcohol free / G", price: 69.0)
    let vintenseMerlotAlcoholoFreeflaska = Drink(name: "VINTENSE MERLOT Alcohol free / F", price: 289.0 )
  
    
    func fillWines (){
        wines = [champangeBrutMajeurAyalaGlas,champangeBrutMajeurAyalaFlaska,cavaJuameSeeraEkoGlas,cavaJuameSeeraEkoFlaska,
        proseccoAbbaziaExtraDryGlas,proseccoAbbaziaExtraDryFlaska,vintenseSparklingAlcoholFreeGlas,vintenseSparklingAlcoholFreeFlaska,loCaTourCreamyChardonnayGlas,loCaTourCreamyChardonnayFlaska,turckheimPinotBlancEkoGlas,turckheimPinotBlancEkoFlaska,settesoliGrilloEkoGlas,settesoliRoseEkoFlaska,vintenseChardonnayAlcoholFreeGlas,vintenseChardonnayAlcoholFreeFlaska,mariuspeyolCotesDeprovenceRoseGlas,
        mariuspeyolCotesDeprovenceRoseFlaska,settesoliRoseEkoGlas,settesoliRoseEkoFlaska,loCaTourZinfandelGlas,loCaTourZinfandelFlaska,poggioAlCasoneChiantiSuperioreGlas,poggioAlCasoneChiantiSuperioreFlaska,
        faustinoViiRiojaGlas,faustinoViiRiojaFlaska,paulJabouletCotesDuParalleleGlas,paulJabouletCotesDuParalleleFlaska,
        settesoliNeroDAvolaEkoGlas,settesoliNeroDAvolaEkoFlaska,vintenseMerlotAlcoholoFreeGlas,vintenseMerlotAlcoholoFreeflaska]
        
    }
    

    func fillDrinksMenu (){
        
        filCoktails ()
        filBeers ()
        fillCiderAndSoda ()
        fillWines()
    }
  
    
    
    
    

  
    

    
    
}


