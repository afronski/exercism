module LuciansLusciousLasagna

let minutesPerLayer = 2
let expectedMinutesInOven = 40

let remainingMinutesInOven actualMinutes = expectedMinutesInOven - actualMinutes

let preparationTimeInMinutes layers = minutesPerLayer * layers

let elapsedTimeInMinutes layers minutesInOven = preparationTimeInMinutes layers + minutesInOven
