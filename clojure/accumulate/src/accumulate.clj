(ns accumulate)

(defn accumulate [f coll]
  (lazy-seq
    (if-let [[x & xs] (seq coll)]
      (cons (f x) (accumulate f xs)))))
