import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure LyapunovExponentPackage where
  linearization : Type u
  growthRate : Type v
  exponentialDichotomy : Prop
  multiplicativeErgodicTheorem : Prop
  spectrumDefined : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  exponentialDichotomyClosed : L.exponentialDichotomy
  multiplicativeErgodicTheoremClosed : L.multiplicativeErgodicTheorem
  spectrumDefinedClosed : L.spectrumDefined

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.exponentialDichotomy ∧ L.multiplicativeErgodicTheorem ∧ L.spectrumDefined

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentPackage) (E : LyapunovExponentEvidence L) :
    LyapunovExponentClosed L := by
  exact And.intro E.exponentialDichotomyClosed
    (And.intro E.multiplicativeErgodicTheoremClosed E.spectrumDefinedClosed)

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse