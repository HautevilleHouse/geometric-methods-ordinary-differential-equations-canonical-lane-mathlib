import canonicallanemathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure MomentMapPackage where
  symplecticAction : Type u
  lieAlgebra : Type v
  momentMap : Type w
  equivariance : Prop
  hamiltonianGenerated : Prop
  casimirFunctions : Prop

structure MomentMapEvidence (M : MomentMapPackage) where
  equivarianceClosed : M.equivariance
  hamiltonianGeneratedClosed : M.hamiltonianGenerated
  casimirFunctionsClosed : M.casimirFunctions

def MomentMapClosed (M : MomentMapPackage) : Prop :=
  M.equivariance ∧ M.hamiltonianGenerated ∧ M.casimirFunctions

theorem moment_map_closed_from_evidence
    (M : MomentMapPackage) (E : MomentMapEvidence M) :
    MomentMapClosed M := by
  exact And.intro E.equivarianceClosed (And.intro E.hamiltonianGeneratedClosed E.casimirFunctionsClosed)

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
