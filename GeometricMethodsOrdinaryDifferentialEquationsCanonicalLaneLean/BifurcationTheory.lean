import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsODEsCanonicalLaneLean

structure BifurcationPackage where
  parameterSpace : Type
  odeFamily : parameterSpace → ODE
  trivialBranch : Set (parameterSpace × Point)
  bifurcationPoint : parameterSpace × Point
  centerManifoldExists : Prop
  normalFormComputed : Prop

structure BifurcationEvidence (B : BifurcationPackage) where
  centerManifoldExistsClosed : B.centerManifoldExists
  normalFormComputedClosed : B.normalFormComputed

def BifurcationClosed (B : BifurcationPackage) : Prop :=
  B.centerManifoldExists ∧ B.normalFormComputed

theorem bifurcation_closed_from_evidence (B : BifurcationPackage)
    (E : BifurcationEvidence B) : BifurcationClosed B := by
  exact And.intro E.centerManifoldExistsClosed E.normalFormComputedClosed

end GeometricMethodsODEsCanonicalLaneLean
end HautevilleHouse