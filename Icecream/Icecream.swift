//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream =
        [
            "Joe" : "Peanut Butter and Chocolate",
            "Tim" : "Natural Vanilla",
            "Sophie" : "Mexican Chocolate",
            "Deniz" : "Natural Vanilla",
            "Tom" : "Mexican Chocolate",
            "Jim" : "Natural Vanilla",
            "Susan" : "Cookies 'N' Cream"
        ]
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String]
    {
        var name: [String] = []
        
        for (instructorName, iceFlavor) in favoriteFlavorsOfIceCream
        {
            if iceFlavor == flavor
            {
                name.append(instructorName)
            }
        }
        return name
    }
    
    // 3.
    func count(forFlavor flavor: String) -> Int
    {
        var count = 0
        
        for (_, iceFlavor) in favoriteFlavorsOfIceCream
        {
            if iceFlavor == flavor
            {
                count += 1
            }
        }
        return count
    }
    
    // 4.
    func flavor(forPerson person: String) -> String?
    {
        return favoriteFlavorsOfIceCream[person]
    }
    
    
    // 5.
    func replace(flavor: String, forPerson pesron: String) -> Bool
    {
        if favoriteFlavorsOfIceCream[pesron] != nil
        {
            favoriteFlavorsOfIceCream[pesron] = flavor
        
        return true
        
        }
        else
        {
        return false
        }
    }





// 6.

    func remove(person: String) -> Bool
    {
        if favoriteFlavorsOfIceCream[person] != nil
        {
        favoriteFlavorsOfIceCream.removeValue(forKey: person)
            return true
        }
        else
        {
            return false
        }
    }

// 7.
    func numberOfAttendees() -> Int
    {
        return favoriteFlavorsOfIceCream.keys.count
    }


// 8.
    func  add(person: String, withFlavor flavor: String) -> Bool
    {
        
        if favoriteFlavorsOfIceCream[person] == nil
        {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
        else
        {
            return false
        }
    }

// 9.
    func attendeeList() -> String
    {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var list = ""
        var count = 0
        
        for name in allNames
        {
            count += 1
            if let iceCream = favoriteFlavorsOfIceCream[name]
            {
                list += ("\(name) likes \(iceCream)")
            }
            if count < allNames.count
            {
                list += "\n"
            }
        }
        print(list)
        return list
    }

}
