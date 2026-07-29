import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsODEsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeometricODEsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometricMethodsODEsCanonicalLaneLean
end HautevilleHouse