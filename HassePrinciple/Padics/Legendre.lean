/-
Copyright (c) 2026 Nirvana Coppola, María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nirvana Coppola, María Inés de Frutos-Fernández
-/

module

public import Mathlib.NumberTheory.LegendreSymbol.Basic
public import Mathlib.NumberTheory.Padics.RingHoms

@[expose] public section

--Not sure where to put this.

namespace Padic

/-- TODO -/
noncomputable def padicUnitPart_qp {p : ℕ} [hp : Fact (Nat.Prime p)] (x : ℚ_[p]ˣ) : ℚ_[p] :=
  x * (↑(p : ℚ_[p]) ^ (-(valuation x.val : ℤ)))

/-- TODO -/
lemma padic_unit_part_unit {p : ℕ} [hp : Fact (Nat.Prime p)] (x : (ℚ_[p])ˣ) :
    ‖padicUnitPart_qp x‖ = 1 := by
  sorry

/-- TODO -/
noncomputable def padicUnitPart {p : ℕ} [hp : Fact (Nat.Prime p)] (x : (ℚ_[p])ˣ) : ℤ_[p]ˣ :=
  PadicInt.mkUnits (padic_unit_part_unit x)

/-- TODO -/
lemma is_twoadic_unit_odd_p {p : ℕ} [hp : Fact (Nat.Prime p)] (hp2 : p ≠ 2) : ‖(p : ℚ_[2])‖ = 1 := by
  sorry

/-- TODO -/
noncomputable abbrev p2 {p : ℕ} [hp : Fact (Nat.Prime p)] (hp2 : p ≠ 2) : ℤ_[2]ˣ :=
  PadicInt.mkUnits (is_twoadic_unit_odd_p hp2)

--not sure how to give the name Padic.legendreSym
/-- TODO -/
noncomputable def legendreSym' {p : ℕ} [hp : Fact (Nat.Prime p)] (u : ℤ_[p]ˣ) : ℤ :=
  legendreSym p ((u.val).appr p % p)

end Padic
