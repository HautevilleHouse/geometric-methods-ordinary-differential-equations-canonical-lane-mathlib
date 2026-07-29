import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure OddeAdmittedObject where
  geometricContext : Type u
  vectorFieldDefined : True
  conclusion : True

structure AdmissibleClass where
  object : OddeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  True ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse