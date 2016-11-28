//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream: [String:String] = ["Joe": "Peanut Butter & Chocolate", "Tim": "Natural Vanilla", "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla", "Tom": "Mexican Chocolate", "Jim": "Natural Vanilla", "Susan": "Cookies 'N' Cream"]
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var matchedNames: [String] = []
        for (name, favoriteFlavor) in favoriteFlavorsOfIceCream  {
            if favoriteFlavor == flavor {
                matchedNames.append(name)
            }
        }
        
        return matchedNames
        
    }
    
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int{
        var counter = 0
        for (name, favoriteFlavor) in favoriteFlavorsOfIceCream {
            if favoriteFlavor == flavor {
                counter += 1
            }
        }
        
        return counter
    }
    
    
    
    
    
    // 4.
   
    func flavor(forPerson flavor: String) -> String? {
        if favoriteFlavorsOfIceCream[flavor] != nil {
            return favoriteFlavorsOfIceCream[flavor]
        } else {
            return nil
        }
    }
    
    
    
    
    
    // 5.
   
    func replace(flavor: String, forPerson: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[forPerson] {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson)
            return true
        } else {
            return false
        }
        
    }
    
    
    
    
    
    // 6.
    
    func remove(flavor: String, forPerson: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[forPerson] {
            favoriteFlavorsOfIceCream[forPerson] = nil
            return true
        } else {
            return false
        }
        
    }
    
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        let listofAttendees = Array(favoriteFlavorsOfIceCream.keys)
        return listofAttendees.count
    }
    
    
    
    
    
    
    // 8.
    
    func add(flavor: String, forPerson: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[forPerson] {
            favoriteFlavorsOfIceCream[forPerson] = flavor
            return true
        } else {
            return false
        }
        
    }
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        var sortedList: String = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for name in allNames {
            if !sortedList.isEmpty{
                sortedList += "\n"
            }
            
            sortedList += "\(name) likes \(favoriteFlavorsOfIceCream[name])!"
            
            }
        
        return sortedList
        
        }


}
