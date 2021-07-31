(ns core)

(defn sieve [coll]
  (lazy-seq
    (cons (first coll) (sieve (->> coll
                                   (rest)
                                   (filter #(not= (rem % (first coll)) 0)))))))

(def sieve-of-eratosthenes (sieve (iterate inc 2)))

(defn -main []
  (println (take 100 sieve-of-eratosthenes)))
