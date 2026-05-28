/-
Copyright (c) 2026 Nirvana Coppola, María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nirvana Coppola, María Inés de Frutos-Fernández
-/
module

public import Mathlib.Algebra.MvPolynomial.PDeriv
public import Mathlib.NumberTheory.Padics.PadicIntegers


/-! # Multivariable Hensel's Lemma. -/


@[expose] public section

open PadicInt

/-! ## Multivariable Hensel's Lemma -/

theorem multivariable_hensel {p : ℕ} [Fact (Nat.Prime p)] {m : ℕ}
    {F : MvPolynomial (Fin m) ℤ_[p]} {a : Fin m → ℤ_[p]}
    {n k : ℤ} {j : Fin m}
    (hF : valuation (MvPolynomial.aeval a F) = n)
    (hJ : valuation (MvPolynomial.aeval a (MvPolynomial.pderiv j F)) = k) :
      ∃ (z : Fin m → ℤ_[p]), (MvPolynomial.aeval z F = 0) ∧ ∀ i, valuation (z i - a i) > 0 :=
  sorry

#min_imports
