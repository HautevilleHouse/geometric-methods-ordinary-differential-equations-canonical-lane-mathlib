import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure LyapunovStabilityPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  vectorField : VectorField ℝ M
  equilibriumPoint : M
  lyapunovFunction : M → ℝ
  positiveDefinite : Prop
  derivativeNonpositive : Prop
  stabilityConclusion : Prop
  asymptoticStabilityConclusion : Prop

structure LyapunovStabilityEvidence (L : LyapunovStabilityPackage M) where
  positiveDefiniteClosed : L.positiveDefinite
  derivativeNonpositiveClosed : L.derivativeNonpositive
  stabilityConclusionClosed : L.stabilityConclusion
  asymptoticStabilityConclusionClosed : L.asymptoticStabilityConclusion

def LyapunovStabilityClosed (L : LyapunovStabilityPackage M) : Prop :=
  L.positiveDefinite ∧ L.derivativeNonpositive ∧ L.stabilityConclusion ∧ L.asymptoticStabilityConclusion

theorem lyapunov_stability_closed_from_evidence (L : LyapunovStabilityPackage M)
    (E : LyapunovStabilityEvidence L) : LyapunovStabilityClosed L := by
  exact And.intro E.positiveDefiniteClosed
    (And.intro E.derivativeNonpositiveClosed
      (And.intro E.stabilityConclusionClosed E.asymptoticStabilityConclusionClosed))

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse