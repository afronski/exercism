(ns cars-assemble)

(def cars-produced-per-h 221)

(defn- success-rate
  "Returns the success rate which is dependent on the speed"
  [speed]
  (cond
    (= speed 0) 0.0
    (<= 1 speed 4) 1.0
    (<= 5 speed 8) 0.9
    (= speed 9) 0.8
    (= speed 10) 0.77))

(defn production-rate
  "Returns the assembly line's production rate per hour,
   taking into account its success rate"
  [speed]
  (* speed cars-produced-per-h (success-rate speed)))

(defn working-items
  "Calculates how many working cars are produced per minute"
  [speed]
  (int (/ (production-rate speed) 60)))
