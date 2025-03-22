func ifLetFunction(optionalName: String?) {
    // Try to unwrap optionalName
    if let name = optionalName {
        print("ifLet has a name: \(name)")
    } else {
        print("No name provided for ifLet!")
        return
    }
    // Outside of the if block, `name` no longer exists!
    // print(name) //ERROR: Cannot find 'name' in scope
    
    // We have to unwrap it again or force unwrap optionalName with ! which is not ideal.
    print("I want to reuse optionalName in ifLet but I have to force unwrap or re-unwrap it: \(optionalName!)") //Not ideal!
}

func guardLetFunction(optionalName: String?) {
    // Try to unwrap optionalName
    guard let name = optionalName else {
        print("No name provided for guardLet!")
        return
    }
    // Outside of the guard block, name is still available!
    print("guardLet has a name: \(name)")

    // We can keep using `name` without any issues
    print("Say hello to \(name) in guardLet again!")
}

//Optional String originally made nil
var name : String? = nil
//Both functions handle the optional properly
ifLetFunction(optionalName: name)
guardLetFunction(optionalName: name)
//We give name an actual value
name = "Jacob"
//ifLet function returns correct value but uses force unwrapping.
ifLetFunction(optionalName: name)
//guardLet returns the correct value but is cleaner and less code.
guardLetFunction(optionalName: name)



