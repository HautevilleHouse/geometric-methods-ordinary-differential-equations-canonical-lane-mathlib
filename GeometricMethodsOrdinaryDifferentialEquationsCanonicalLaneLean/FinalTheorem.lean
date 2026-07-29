import GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

def ConstrainedOddeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_odde_endgame (A : AdmissibleClass) :
    ConstrainedOddeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse