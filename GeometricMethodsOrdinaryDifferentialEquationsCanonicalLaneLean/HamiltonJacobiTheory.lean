import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure HamiltonJacobiPackage where
  hamiltonian : Type u
  symplecticPhaseSpace : Type v
  generatingFunction : Type w
  hamiltonJacobiEquation : Prop
  canonicalTransformationGenerated : Prop

structure HamiltonJacobiEvidence (H : HamiltonJacobiPackage) where
  hamiltonianDefined : H.hamiltonian ≠ Empty
  symplecticPhaseSpaceDefined : H.symplecticPhaseSpace ≠ Empty
  generatingFunctionDefined : H.generatingFunction ≠ Empty
  hamiltonJacobiEquationClosed : H.hamiltonJacobiEquation
  canonicalTransformationGeneratedClosed : H.canonicalTransformationGenerated

def HamiltonJacobiClosed (H : HamiltonJacobiPackage) : Prop :=
  H.hamiltonJacobiEquation ∧ H.canonicalTransformationGenerated

theorem hamilton_jacobi_closed_from_evidence
    (H : HamiltonJacobiPackage) (E : HamiltonJacobiEvidence H) :
    HamiltonJacobiClosed H := by
  exact And.intro E.hamiltonJacobiEquationClosed E.canonicalTransformationGeneratedClosed

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse