(ns bird-watcher)

(def last-week
  [0 2 5 3 7 8 4])

(defn today [birds]
  (last birds))

(defn inc-bird [birds]
  (conj (pop birds) (inc (today birds))))

(defn day-without-birds? [birds]
  (boolean (some #(= 0 %) birds)))

(defn n-days-count [birds n]
  (reduce + (take n birds)))

(defn busy-days [birds]
  (count (filter #(>= % 5) birds)))

(defn odd-week? [birds]
  (let [even-days (take-nth 2 birds)
        odd-days (take-nth 2 (rest birds))]
    (and
     (every? #(= 1 %) even-days)
     (every? zero? odd-days))))
