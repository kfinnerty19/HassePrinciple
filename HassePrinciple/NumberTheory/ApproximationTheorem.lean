/-
Copyright (c) 2026b Nirvana Coppola, María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nirvana Coppola, María Inés de Frutos-Fernández
-/
module

public import Mathlib.NumberTheory.Padics.PadicNumbers
public import Mathlib.NumberTheory.PrimeCounting

@[expose] public section


noncomputable section

namespace Rat


/-- TODO -/
instance fact_prime_nth_prime (n : ℕ) : Fact (Nat.Prime (Nat.nth Nat.Prime n)) := by
  rw [fact_iff]
  exact Nat.prime_nth_prime n

open Padic

/- Since the proof concerns with the case where ℝ is part of the product, we assume it here
from the beginning. We can also do a different version if needed. -/
/-- TODO -/
abbrev prod_over_S (S : Finset ℕ) := ℝ × (Π n : S, ℚ_[Nat.nth Nat.Prime n])

--If we state the approximation theorem in a concrete way as below, we don't need this definition.
/-- TODO -/
def finite_embedding (S : Finset ℕ) : ℚ → prod_over_S S :=
  fun x => ⟨algebraMap ℚ ℝ x, fun n => (algebraMap ℚ ℚ_[Nat.nth Nat.Prime n]) x⟩

-- I tried a concrete version without using topology. Can reformulate with sup if needed.
/-- TODO -/
theorem approximation' (S : Finset ℕ) :
    ∀ ε > 0, ∀ y : prod_over_S S, ∃ x : ℚ,
      ‖y.1 - x‖ + Finset.sum (Finset.attach S) (fun n => ‖y.2 n - x‖) < ε := by
  sorry

theorem approximation (S : Finset ℕ) :
    Dense (Set.range (finite_embedding S)) := by
  sorry

end Rat