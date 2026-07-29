import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure GeodesicExponentialMapPackage where
  manifold : Type u
  riemannianMetric : Type v
  exponentialMapDefined : Prop
  gaussLemma : Prop
  normalCoordinates : Prop
  injectivityRadiusPositive : Prop

structure GeodesicExponentialMapEvidence (G : GeodesicExponentialMapPackage) where
  exponentialMapDefinedClosed : G.exponentialMapDefined
  gaussLemmaClosed : G.gaussLemma
  normalCoordinatesClosed : G.normalCoordinates
  injectivityRadiusPositiveClosed : G.injectivityRadiusPositive

def GeodesicExponentialMapClosed (G : GeodesicExponentialMapPackage) : Prop :=
  G.exponentialMapDefined ∧ G.gaussLemma ∧ G.normalCoordinates ∧ G.injectivityRadiusPositive

theorem geodesic_exponential_map_closed_from_evidence
    (G : GeodesicExponentialMapPackage) (E : GeodesicExponentialMapEvidence G) :
    GeodesicExponentialMapClosed G := by
  exact And.intro E.exponentialMapDefinedClosed
    (And.intro E.gaussLemmaClosed
      (And.intro E.normalCoordinatesClosed E.injectivityRadiusPositiveClosed))

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse