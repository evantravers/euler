(defn valid? [n]
  (or
    (= (mod n 3) 0)
    (= (mod n 5) 0)
  )
)

(reduce + (filter valid? (range 1 1000)))
