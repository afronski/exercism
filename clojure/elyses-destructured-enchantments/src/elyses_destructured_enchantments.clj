(ns elyses-destructured-enchantments)

(defn first-card
  "Returns the first card from deck."
  [deck]
  (first deck))

(defn second-card
  "Returns the second card from deck."
  [deck]
  (second deck))

(defn swap-top-two-cards
  "Returns the deck with first two items reversed."
  [[one two & deck]]
  (concat [two one] deck))

(defn discard-top-card
  "Returns a vector containing the first card and
   a vector of the remaining cards in the deck."
  [[one & deck]]
  (vector one deck))

(def face-cards
  ["jack" "queen" "king"])

(defn insert-face-cards
  "Returns the deck with face cards between its head and tail."
  [deck]
  (let [[a & rest] deck]
    (if a (concat [a] face-cards rest) face-cards)))
