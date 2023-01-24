

import Foundation

class FoodMenus {
    
    var snacknShareMenu = Menu()
    var burgersMenu = Menu()
    var mainsMenu = Menu()
    var saucesMenu = Menu()
    var foodMenus = [Menu]()
    
    init(){
        
        let hotbuffalowings = Food(name:  "Hot BUFFALO WINGS", price: 99.0)
        let parmesanGarlicWings  = Food(name: " PARMESAN GARLIC WINGS", price: 99.0)
        let olearysComboPlate = Food(name: "COMBO PLATE", price: 129.0)
        let pannoumiCheesSticks = Food(name: "PANNOUMI CHEESE STICKS", price: 55.0)
        let garlicCheeseBread = Food(name: "GARLIC & CHEESE BREAD", price: 25.0)
        let beefCheeseNachos = Food(name: "BEEF & CHEESE NACHOS", price: 109.0)
        let beefCheeseNachosGuacamole = Food(name: "BEEF CHEESE Guacamole", price: 119.0)
        let nachos = Food(name: "NACHOS", price: 55.0)
        let grilledChickenQuesadillas = Food(name: "GRILLED QUESADILLAS", price: 135.0)
        let oumphQuesadillasVagen = Food(name: "OUMPH QUESADILLAS", price: 269)
        
        self.snacknShareMenu.tittle = "Snack And Share"
        self.snacknShareMenu.types = [hotbuffalowings,
                                      parmesanGarlicWings,
                                      olearysComboPlate,pannoumiCheesSticks,garlicCheeseBread,beefCheeseNachos,beefCheeseNachosGuacamole,
                                      nachos,grilledChickenQuesadillas,oumphQuesadillasVagen]
        //---------------------------------------------------------------------------------------
        
        
        // 2 BURGERS  -> belogs to food menu
        let chilliCheeseBurger = Food(name: "CHILLI CHEESE BURGER", price: 185.0)
        let baconBbqBurger = Food(name: "BACON BBQ BURGER", price: 185.0)
        let truffleOozingBurger = Food(name: "TRUFFLE OOZING BURGER", price: 185.0)
        let giantDoubleCheeseBurger = Food(name: "GIANT DOUBLE CHEESE", price: 209.0)
        let cheedarCheeseBurger = Food(name: "CHEDAR CHEESE BURGER ", price: 169.0)
        let crispyNachoBurger = Food(name: "Crispy NACHO BURGER", price: 175)
        let texMexOumphburger = Food(name: "TEX OUMPH BURGER", price: 175.0)
        let sweetPotatoFries = Food(name: "SWEET POTATO FRIES", price: 15.0)
        let cheesyFries = Food(name: "CHEESY FRIES", price: 25.0)
        let onionRings2p = Food(name: "ONION RINGS 2P", price: 15.0)
        let jalapenoPoppers2p = Food(name: "JALAPENO POPPERS 2P", price: 15.0)
        let mozzarellaSticks2p = Food(name: "MOZZARELLA STICKS 2P", price: 15.0)
        let bacon = Food(name: "BACON", price: 10.0)
        
        self.burgersMenu.tittle = "Burger"
        self.burgersMenu.types = [chilliCheeseBurger,baconBbqBurger,truffleOozingBurger,giantDoubleCheeseBurger,
                                  cheedarCheeseBurger,crispyNachoBurger,texMexOumphburger,sweetPotatoFries,
                                  cheesyFries,onionRings2p,jalapenoPoppers2p,mozzarellaSticks2p,bacon]
        //------------------------------------------------------------------------------------------
        
        //3 DIP SAUCES  -> belogs to food menu
        let aioli = Food(name: "AIOLI", price: 10.0)
        let parmesanAndgarlic = Food(name: "PARMESAN & GARLIC", price: 10.0)
        let hotCheedar = Food(name: "HOT CHEEDAR", price: 10.0)
        let blueCheese = Food(name: "Blue CHEESE", price: 10.0)
        let bearnaise = Food(name: "Béarnaise", price: 10.0)
        let truffleFlavouredMayo = Food(name: "TRUFFLE FLAVOURED MAYO", price:10.0)
        let chilleMayo = Food(name: "chilli MAYO", price: 10.0)
        
        self.saucesMenu.tittle = "Sauses"
        self.saucesMenu.types = [aioli,parmesanAndgarlic,hotCheedar,blueCheese,bearnaise,truffleFlavouredMayo,chilleMayo]
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
        
        self.mainsMenu.tittle = "Main"
        self.mainsMenu.types = [ryggBiff,oxFile,bourbonBqqRibs,fishNChips,creamypastaRäkor,creamypastaOxFile,
                                creamypastaVegetarisk,oLearysMixedGrill]
        //------------------------------------------------------------------------------------------
        
        self.foodMenus = [snacknShareMenu,burgersMenu,saucesMenu,mainsMenu]
        
    }
    
    
}
