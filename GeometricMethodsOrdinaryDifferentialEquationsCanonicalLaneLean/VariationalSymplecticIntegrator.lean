import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure VariationalSymplecticIntegratorPackage where
  lagrangian : Type u
  discreteEulerLagrange : Prop
  symplecticFormPreserved : Prop
  orderOfAccuracy : Nat
  backwardErrorAnalysis : Prop

structure VariationalSymplecticIntegratorEvidence (V : VariationalSymplecticIntegratorPackage) where
  lagrangianDefined : V.lagrangian ≠ Empty
  discreteEulerLagrangeClosed : V.discreteEulerLagrange
  symplecticFormPreservedClosed : V.symplecticFormPreserved
  orderOfAccuracyPositive : V.orderOfAccuracy ≥ 1
  backwardErrorAnalysisClosed : V.backwardErrorAnalysis

def VariationalSymplecticIntegratorClosed (V : VariationalSymplecticIntegratorPackage) : Prop :=
  V.discreteEulerLagrange ∧ V.symplecticFormPreserved ∧ V.backwardErrorAnalysis

theorem variational_symplectic_integrator_closed_from_evidence
    (V : VariationalSymplecticIntegratorPackage) (E : VariationalSymplecticIntegratorEvidence V) :
    VariationalSymplecticIntegratorClosed V := by
  exact And.intro E.discreteEulerLagrangeClosed
    (And.intro E.symplecticFormPreservedClosed E.backwardErrorAnalysisClosed)

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse