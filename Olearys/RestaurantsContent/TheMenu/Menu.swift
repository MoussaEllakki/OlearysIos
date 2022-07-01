

import Foundation

class Menu {
    
   
    
    //------------------------------------------------------------------------------------------
                                      // Food Menu
    //------------------------------------------------------------------------------------------
    
    var snacknShare = [Food]()
    var burgers = [Food]()
    var mains = [Food]()
    var sauces = [Food]()
    
    var desserts = [Dessert]()
  
    
    var food = [[Food]]()
    var allDesserts = [[Dessert]]()
    
    
    
    
    
    // SNACK ́N SHARE
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
     
    
    //BURGERS
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
    
    // DIP SAUCES
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
    
    //MAINS
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
    
    //------------------------------------------------------------------------------------------
                                      // Dessert Menu
    //------------------------------------------------------------------------------------------
    
    
    // Desserts
     let chooclateBrowine =  Dessert(name: "CHOCOLATE BROWNIE", price: 59.0)
     let sweetLemonTiramisu = Dessert(name: " SWEET LEMON TIRAMISU", price:39.0)
     let deepFiedBroWine  = Dessert(name: "DEEP FRIED BROWNIE", price:29.0)
     let iceCreamSundae   = Dessert(name: "ICE CREAM SUNDAE", price:49.0)
     let cheeseCake   = Dessert(name: "CHEESE CAKE", price:59.0)
    
     
    func fillDeserts (){
        self.desserts = [chooclateBrowine,sweetLemonTiramisu,deepFiedBroWine,
        iceCreamSundae,cheeseCake]
        
    }

    
     //------------------------------------------------------------------------------------------
     //COFFEE DRINKS
    
    let espressomartini = Dessert(name: "ESPRESSO MARTINI", price: 119.0)
    let tullamore = Dessert(name: "ULLAMORE IRISH COFFEE", price: 119.0)
    let gallianoMartini = Dessert(name: "GALLIANO MARTINI", price: 119.0)
    let jamaicanCoffe = Dessert(name: "JAMAICAN COFFEE", price: 119.0)
    
  
    
 
    
    
    
}


