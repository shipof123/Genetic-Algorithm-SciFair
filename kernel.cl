(defstruct individual
  program
  (std-fitness 0)
  (adj-fitness 0)
  (norm-fitness)
  (hits 0))
  
(defvar *number-of-fitness-cases* :unbound)
  
(defvar *max-depth-for-new-individuals* :unbound)
  
(defvar *max-depth-for-individuals-after-crossover* :unbound)

(defvar *fitness-proportionate-reproduction-fraction* :unbound)

(defvar *crossover-at-any-point-fraction* :unbound)

(defvar *crossover-at-function-point-fraction* :unbound)

(defvar *max-depth-for-new-subtrees-in-mutants* :unbound)

(defvar *method-of-selection** :unbound)

(defvar *method-of-generation* :unbound)

(defvar *rand-seed* :unbound)

(defvar *best-of-run-individual* :unbound)

(defvar *generation-of-best-of-run-individual* :unbound)

(defun run-genetic-programming-system
  (problem-function
   seed
   maximum-generations
   size-of-population
   &rest seeded-programs)
   
   ;; Validity check
   (assert (and (integerp maximum-generations)
                (not (minusp maximum-generations)))
           (maximum-generations)
           mmaximum-generations)
   )
