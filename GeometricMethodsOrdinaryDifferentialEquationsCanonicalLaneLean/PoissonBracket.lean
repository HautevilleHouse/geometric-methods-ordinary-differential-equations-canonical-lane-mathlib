import canonicallanemathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure PoissonBracketPackage where
  manifold : Type u
  functions : Type v
  hamiltonianVectorField : Type w
  bracketDefined : Prop
  jacobiIdentity : Prop
  derivationProperty : Prop
  antisymmetry : Prop

structure PoissonBracketEvidence (P : PoissonBracketPackage) where
  bracketDefinedClosed : P.bracketDefined
  jacobiIdentityClosed : P.jacobiIdentity
  derivationPropertyClosed : P.derivationProperty
  antisymmetryClosed : P.antisymmetry

def PoissonBracketClosed (P : PoissonBracketPackage) : Prop :=
  P.bracketDefined ∧ P.jacobiIdentity ∧ P.derivationProperty ∧ P.antisymmetry

theorem poisson_bracket_closed_from_evidence
    (P : PoissonBracketPackage) (E : PoissonBracketEvidence P) :
    PoissonBracketClosed P := by
  exact And.intro E.bracketDefinedClosed
    (And.intro E.jacobiIdentityClosed
      (And.intro E.derivationPropertyClosed E.antisymmetryClosed))

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
