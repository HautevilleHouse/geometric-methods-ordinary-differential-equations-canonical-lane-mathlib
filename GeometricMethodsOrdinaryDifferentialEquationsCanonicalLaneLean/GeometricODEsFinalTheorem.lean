import GeometricMethodsODEsCanonicalLaneLean.GeometricODEsGateLemmas

namespace HautevilleHouse
namespace GeometricMethodsODEsCanonicalLaneLean

def ConstrainedGeometricODEsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometric_odes_endgame (A : AdmissibleClass) :
    ConstrainedGeometricODEsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricMethodsODEsCanonicalLaneLean
end HautevilleHouse