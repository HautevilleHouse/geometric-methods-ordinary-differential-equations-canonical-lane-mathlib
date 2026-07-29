import canonicalLaneMathlib.AdmissibleClass
import GeometricMethodsBridge
import GeometricMethodsGate

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

def ConstrainedGeometricMethodsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometric_methods_endgame (A : AdmissibleClass) :
    ConstrainedGeometricMethodsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse