import canonicallanemathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure SymplecticFormPackage where
  manifold : Type u
  omega : Type v
  closedness : Prop
  nondegeneracy : Prop
  exactness : Prop

structure SymplecticFormEvidence (S : SymplecticFormPackage) where
  closednessClosed : S.closedness
  nondegeneracyClosed : S.nondegeneracy
  exactnessClosed : S.exactness

def SymplecticFormClosed (S : SymplecticFormPackage) : Prop :=
  S.closedness ∧ S.nondegeneracy ∧ S.exactness

theorem symplectic_form_closed_from_evidence
    (S : SymplecticFormPackage) (E : SymplecticFormEvidence S) :
    SymplecticFormClosed S := by
  exact And.intro E.closednessClosed (And.intro E.nondegeneracyClosed E.exactnessClosed)

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
