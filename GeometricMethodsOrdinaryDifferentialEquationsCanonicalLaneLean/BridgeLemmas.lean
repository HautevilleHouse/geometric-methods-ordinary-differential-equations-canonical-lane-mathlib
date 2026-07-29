import GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  trivial

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse