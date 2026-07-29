import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsODEsCanonicalLaneLean

structure SymplecticReductionPackage where
  phaseSpace : Type
  symplecticForm : DifferentiableForm 2 phaseSpace
  hamiltonian : DifferentiableFunction phaseSpace ℝ
  reducedSpace : Type
  quotientMap : phaseSpace → reducedSpace
  reductionRegular : Prop
  mardserWeinsteinValid : Prop

structure SymplecticReductionEvidence (S : SymplecticReductionPackage) where
  reductionRegularClosed : S.reductionRegular
  mardserWeinsteinValidClosed : S.mardserWeinsteinValid

def SymplecticReductionClosed (S : SymplecticReductionPackage) : Prop :=
  S.reductionRegular ∧ S.mardserWeinsteinValid

theorem symplectic_reduction_closed_from_evidence (S : SymplecticReductionPackage)
    (E : SymplecticReductionEvidence S) : SymplecticReductionClosed S := by
  exact And.intro E.reductionRegularClosed E.mardserWeinsteinValidClosed

end GeometricMethodsODEsCanonicalLaneLean
end HautevilleHouse