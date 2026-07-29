import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure InvariantManifoldPackage where
  equilibrium : Type u
  stableManifold : Type v
  unstableManifold : Type w
  centerManifold : Type x
  stabilityProperties : Prop
  invariantProperties : Prop

structure InvariantManifoldEvidence (I : InvariantManifoldPackage) where
  stabilityPropertiesClosed : I.stabilityProperties
  invariantPropertiesClosed : I.invariantProperties

def InvariantManifoldClosed (I : InvariantManifoldPackage) : Prop :=
  I.stabilityProperties ∧ I.invariantProperties

theorem invariant_manifold_closed_from_evidence (I : InvariantManifoldPackage) (E : InvariantManifoldEvidence I) :
    InvariantManifoldClosed I := by
  exact And.intro E.stabilityPropertiesClosed E.invariantPropertiesClosed

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse