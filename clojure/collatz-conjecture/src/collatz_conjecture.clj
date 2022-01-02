(ns collatz-conjecture)

(defn collatz [n]
  (if (< n 1)
    (throw (IllegalArgumentException. (str "Invalid 'n' provided as an argument: " n)))
    (reduce (fn [n i] (cond
                        (= n 1) (reduced i)
                        (odd? n) (inc (* n 3))
                        :else (/ n 2)))
            n
            (range))))
