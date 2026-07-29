import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure IntegralCurvePackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  vectorField : VectorField ℝ M
  initialCondition : M
  existenceInterval : Set ℝ
  maximalSolution : ℝ → M
  localExistence : Prop
  uniqueness : Prop
  smoothDependence : Prop

structure IntegralCurveEvidence (I : IntegralCurvePackage M) where
  localExistenceClosed : I.localExistence
  uniquenessClosed : I.uniqueness
  smoothDependenceClosed : I.smoothDependence

def IntegralCurveClosed (I : IntegralCurvePackage M) : Prop :=
  I.localExistence ∧ I.uniqueness ∧ I.smoothDependence

theorem integral_curve_closed_from_evidence (I : IntegralCurvePackage M)
    (E : IntegralCurveEvidence I) : IntegralCurveClosed I := by
  exact And.intro E.localExistenceClosed
    (And.intro E.uniquenessClosed E.smoothDependenceClosed)

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse