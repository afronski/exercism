module CarsAssemble

let private numCarsAtLowestSpeed = 221

let successRate (speed: int): float =
    match speed with
    | 0 -> 0.0
    | 1 | 2 | 3 | 4 -> 1.0
    | 5 | 6 | 7 | 8 -> 0.9
    | 9 -> 0.8
    | 10 -> 0.77
    | _ -> failwith "Speed not allowed"

let productionRatePerHour (speed: int): float =
    let successRate = speed |> successRate
    let carsAssembled = float(speed * numCarsAtLowestSpeed) * successRate
    carsAssembled

let workingItemsPerMinute (speed: int): int =
    let carsPerHour = speed |> productionRatePerHour
    let carsPerMinute = int(floor(carsPerHour / 60.0))
    carsPerMinute
