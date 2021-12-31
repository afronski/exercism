(ns acronym
  (:require [clojure.string :as str]))

(defn acronym [long-name]
  (->> (re-seq #"([A-Z][A-Z]*|\b[a-z])" long-name)
       (map ffirst)
       (map str/upper-case)
       (str/join)))
