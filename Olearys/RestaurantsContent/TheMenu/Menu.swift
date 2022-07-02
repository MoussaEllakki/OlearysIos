

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
    var allDesserts = [[Dessert]]()
    
    //Coktails
    var coktails = [Drink]()
    
    
    //-----------------------------------------------------------------------------------
                                      // 1 Food Menu
    //-----------------------------------------------------------------------------------
  
    // 1 SNACK ́N SHARE
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
     
    
    // 2 BURGERS
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
    
    //3 DIP SAUCES
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
    
    // 4 MAINS
    let ryggBiff = Food(name: "RYGGBIFF", price: 299.0)
    let oxFile = Food(name: "OXFILÉ", price: 299.0)
    let bourbonBqqRibs = Food(name: "BOURBON BBQ RIBS", price: 209.0)
    let fishNChips = Food(name: "FISH N’CHIPS", price: 169.0)
    let creamypastaRäkor = Food(name: "CREAMY PASTA RÄKOR", price: 199.0)
    let creamypastaOxFile = Food(name: "CREAMY PASTA OXFILE", price: 209.0)
    let creamypastaVegetarisk = Food(name: "CREAMY PASTA VEGETARISK ", price: 179.0)
    let oLearysMixedGrill = Food(name: "O’Learys Mixed Grill ", price: 305.0)
    
   
    
    func filMain (){
        self.mains = [ryggBiff,oxFile,bourbonBqqRibs,fishNChips,creamypastaRäkor,creamypastaOxFile,
                 creamypastaVegetarisk,oLearysMixedGrill]
        
    }
    
    //------------------------------------------------------------------------------------------
    
   
    func fillFoodMenu (){
        
        filSnacknShare()
        filBurgers()
        filSauces()
        filMain()
        self.food = [snacknShare,burgers,sauces,mains]
    }
    
    //--------------------------------------------------------------------------------------
                                      //2 Dessert Menu
    //--------------------------------------------------------------------------------------
    
    
    //1 Desserts
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
     //2 COFFEE DRINKS
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
    
    //3 AVEC
    
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
    
    
    func fillDessertsMenu (){
        
        fillDeserts()
        fillCoffeDrinks()
        fillAvec()
        self.allDesserts = [desserts,coffeDrinks,avec]
        
    }
    
    //--------------------------------------------------------------------------------------
                                      // Drinks Menu
    //--------------------------------------------------------------------------------------
    
    // 1 COCKTAILS
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
    
    
    
  
    
    

    
}


