import canonicallanemathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure KAMTheoryPackage where
  integrableSystem : Type u
  perturbation : Type v
  nondegeneracyCondition : Prop
  smallnessCondition : Prop
  invariantToriPersistence : Prop

structure KAMTheoryEvidence (K : KAMTheoryPackage) where
  nondegeneracyConditionClosed : K.nondegeneracyCondition
  smallnessConditionClosed : K.smallnessCondition
  invariantToriPersistenceClosed : K.invariantToriPersistence

def KAMTheoryClosed (K : KAMTheoryPackage) : Prop :=
  K.nondegeneracyCondition ∧ K.smallnessCondition ∧ K.invariantToriPersistence

theorem kam_theory_closed_from_evidence
    (K : KAMTheoryPackage) (E : KAMTheoryEvidence K) :
    KAMTheoryClosed K := by
  exact And.intro E.nondegeneracyConditionClosed (And.intro E.smallnessConditionClosed E.invariantToriPersistenceClosed)

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
