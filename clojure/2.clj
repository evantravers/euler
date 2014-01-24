(defn fibonacci [a b]
  (lazy-seq (cons a (fibonacci b (+ a b))))
)

(reduce + (filter even? (take-while #(< % 4000000) (fibonacci 1 2))))
