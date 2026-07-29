import canonicallanemathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure IntegrableSystemsPackage where
  poissonManifold : Type u
  integrals : Type v
  inInvolution : Prop
  independent : Prop
  complete : Prop
  actionAngleCoordinates : Prop

structure IntegrableSystemsEvidence (I : IntegrableSystemsPackage) where
  inInvolutionClosed : I.inInvolution
  independentClosed : I.independent
  completeClosed : I.complete
  actionAngleCoordinatesClosed : I.actionAngleCoordinates

def IntegrableSystemsClosed (I : IntegrableSystemsPackage) : Prop :=
  I.inInvolution ∧ I.independent ∧ I.complete ∧ I.actionAngleCoordinates

theorem integrable_systems_closed_from_evidence
    (I : IntegrableSystemsPackage) (E : IntegrableSystemsEvidence I) :
    IntegrableSystemsClosed I := by
  exact And.intro E.inInvolutionClosed
    (And.intro E.independentClosed
      (And.intro E.completeClosed E.actionAngleCoordinatesClosed))

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
