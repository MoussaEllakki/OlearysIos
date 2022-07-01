//
//  Menu.swift
//  Olearys
//
//  Created by Moussa El Lakki on 2022-07-01.
//

import Foundation

class Menu {
    
    
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
    
    var snacknShare = [Food]()
    
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
    
    var burgers = [Food]()
    
    func filBurgers (){
        self.burgers = [chilliCheeseBurger,baconBbqBurger,truffleOozingBurger,giantDoubleCheeseBurger,
                        cheedarCheeseBurger,crispyNachoBurger,texMexOumphburger,sweetPotatoFries,
                        cheesyFries,onionRings2p,jalapenoPoppers2p,mozzarellaSticks2p,bacon]
    }
    
    //------------------------------------------------------------------------------------------
    
    // DIP SAUCES
    let aioli = Sauce(name: "AIOLI", price: 10.0)
    let parmesanAndgarlic = Sauce(name: "PARMESAN & GARLIC", price: 10.0)
    let hotCheedar = Sauce(name: "HOT CHEEDAR", price: 10.0)
    let blueCheese = Sauce(name: "Blue CHEESE", price: 10.0)
    let bearnaise = Sauce(name: "Béarnaise", price: 10.0)
    let truffleFlavouredMayo = Sauce(name: "TRUFFLE FLAVOURED MAYO", price:10.0)
    let chilleMayo = Sauce(name: "chilli MAYO", price: 10.0)
    
    var sauces = [Sauce]()
    
    func filSauces (){
        
    self.sauces = [aioli,parmesanAndgarlic,hotCheedar,blueCheese,bearnaise,truffleFlavouredMayo,chilleMayo]
        
    }
    
    //------------------------------------------------------------------------------------------
    
    //MAINS
    
    
    
    
}
