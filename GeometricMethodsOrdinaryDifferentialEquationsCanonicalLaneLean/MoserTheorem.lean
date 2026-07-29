import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure MoserTheoremPackage where
  symplecticManifold : Type u
  twoFormsCoisotropic : Prop
  isotopyExists : Prop
  stabilityUnderDeformation : Prop
  darbouxTheoremCorollary : Prop

structure MoserTheoremEvidence (M : MoserTheoremPackage) where
  symplecticManifoldNonempty : M.symplecticManifold ≠ Empty
  twoFormsCoisotropicClosed : M.twoFormsCoisotropic
  isotopyExistsClosed : M.isotopyExists
  stabilityUnderDeformationClosed : M.stabilityUnderDeformation
  darbouxTheoremCorollaryClosed : M.darbouxTheoremCorollary

def MoserTheoremClosed (M : MoserTheoremPackage) : Prop :=
  M.twoFormsCoisotropic ∧ M.isotopyExists ∧ M.stabilityUnderDeformation ∧ M.darbouxTheoremCorollary

theorem moser_theorem_closed_from_evidence
    (M : MoserTheoremPackage) (E : MoserTheoremEvidence M) :
    MoserTheoremClosed M := by
  exact And.intro E.twoFormsCoisotropicClosed
    (And.intro E.isotopyExistsClosed
      (And.intro E.stabilityUnderDeformationClosed E.darbouxTheoremCorollaryClosed))

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse