import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure PoincareMapPackage where
  sectionSurface : Type u
  returnMap : Type v
  periodicOrbit : Prop
  transversalIntersection : Prop
  stability : Prop

structure PoincareMapEvidence (P : PoincareMapPackage) where
  periodicOrbitClosed : P.periodicOrbit
  transversalIntersectionClosed : P.transversalIntersection
  stabilityClosed : P.stability

def PoincareMapClosed (P : PoincareMapPackage) : Prop :=
  P.periodicOrbit ∧ P.transversalIntersection ∧ P.stability

theorem poincare_map_closed_from_evidence (P : PoincareMapPackage) (E : PoincareMapEvidence P) :
    PoincareMapClosed P := by
  exact And.intro E.periodicOrbitClosed
    (And.intro E.transversalIntersectionClosed E.stabilityClosed)

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse