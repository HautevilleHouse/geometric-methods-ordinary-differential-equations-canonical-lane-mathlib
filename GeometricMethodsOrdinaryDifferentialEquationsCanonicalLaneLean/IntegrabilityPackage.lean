import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsODEsCanonicalLaneLean

structure IntegrabilityPackage where
  phaseSpace : Type
  poissonBracket : PoissonBracket phaseSpace
  firstIntegrals : List (DifferentiableFunction phaseSpace ℝ)
  involutive : Prop
  independentOnOpenSet : Prop
  liouvilleArnoldValid : Prop

structure IntegrabilityEvidence (I : IntegrabilityPackage) where
  involutiveClosed : I.involutive
  independentOnOpenSetClosed : I.independentOnOpenSet
  liouvilleArnoldValidClosed : I.liouvilleArnoldValid

def IntegrabilityClosed (I : IntegrabilityPackage) : Prop :=
  I.involutive ∧ I.independentOnOpenSet ∧ I.liouvilleArnoldValid

theorem integrability_closed_from_evidence (I : IntegrabilityPackage)
    (E : IntegrabilityEvidence I) : IntegrabilityClosed I := by
  exact And.intro E.involutiveClosed
    (And.intro E.independentOnOpenSetClosed E.liouvilleArnoldValidClosed)

end GeometricMethodsODEsCanonicalLaneLean
end HautevilleHouse