import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure PoincareBendixsonPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  vectorField : VectorField ℝ M
  compactLimitSet : Set M
  nonempty : Prop
  invariant : Prop
  minimal : Prop
  containsEquilibriumOrPeriodic : Prop
  classificationEvidence : containsEquilibriumOrPeriodic

structure PoincareBendixsonEvidence (P : PoincareBendixsonPackage M) where
  nonemptyClosed : P.nonempty
  invariantClosed : P.invariant
  minimalClosed : P.minimal
  containsEquilibriumOrPeriodicClosed : P.containsEquilibriumOrPeriodic

def PoincareBendixsonClosed (P : PoincareBendixsonPackage M) : Prop :=
  P.nonempty ∧ P.invariant ∧ P.minimal ∧ P.containsEquilibriumOrPeriodic

theorem poincare_bendixson_closed_from_evidence (P : PoincareBendixsonPackage M)
    (E : PoincareBendixsonEvidence P) : PoincareBendixsonClosed P := by
  exact And.intro E.nonemptyClosed
    (And.intro E.invariantClosed
      (And.intro E.minimalClosed E.containsEquilibriumOrPeriodicClosed))

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse