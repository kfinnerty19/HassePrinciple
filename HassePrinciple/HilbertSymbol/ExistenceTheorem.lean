/-
Copyright (c) 2026b Nirvana Coppola, María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nirvana Coppola, María Inés de Frutos-Fernández
-/
module

public import HassePrinciple.HilbertSymbol.Basic

@[expose] public section

noncomputable section

namespace HilbertSymbol

/-
# Approximation and Existence theorem
-/

/-- TODO -/
theorem existence {I : Type*} [Finite I] (a : I → ℚˣ) (efin : I × ℕ → ℤˣ) (einf : I → ℤˣ) :
    ∃ x : ℚˣ, ∀ i : I, ∀ n : ℕ, efin (i, n) = at_p x (a i) (Nat.nth Nat.Prime n) ∧
      einf i = at_infty x (a i) ↔
      ∃ S : Finset ℕ, ∀ n , n ∉ S → efin (i, n) = 1 ∧
        ∀ i : I, einf i * ∏ (n ∈ S), efin (i, n) = 1 ∧
        ∀ n : ℕ, ∃ xn : ℚ_[Nat.nth Nat.Prime n], efin (i, n) = HilbertSymbol xn (a i) ∧
          ∃ xr : ℝ, einf i = HilbertSymbol xr (a i) := by
  sorry

end HilbertSymbol
