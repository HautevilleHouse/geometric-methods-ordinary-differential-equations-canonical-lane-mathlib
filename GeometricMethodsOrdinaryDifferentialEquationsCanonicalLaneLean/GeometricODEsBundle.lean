import GeometricMethodsODEsCanonicalLaneLean.GeometricODEsManifold

namespace HautevilleHouse
namespace GeometricMethodsODEsCanonicalLaneLean

structure GeometricODEsBundle (M : GeometricODEsManifold) where
  fiber : Type
  projection : fiber → M.carrier
  chartAtlas : Prop
  trivializationOverODEs : Prop

structure BundleConnection (M : GeometricODEsManifold) (B : GeometricODEsBundle M) where
  connectionForms : Prop
  curvature : Prop
  parallelTransportDefined : Prop

structure ConnectionCurvaturePackage (M : GeometricODEsManifold) where
  bundle : GeometricODEsBundle M
  connection : BundleConnection M bundle
  curvatureClosed : Prop

structure ConnectionCurvatureEvidence (M : GeometricODEsManifold) (P : ConnectionCurvaturePackage M) where
  curvatureClosedTerm : P.curvatureClosed

def ConnectionCurvatureClosed {M : GeometricODEsManifold} (P : ConnectionCurvaturePackage M) : Prop :=
  P.curvatureClosed

theorem connection_curvature_closed_from_evidence {M : GeometricODEsManifold} (P : ConnectionCurvaturePackage M) (E : ConnectionCurvatureEvidence M P) : ConnectionCurvatureClosed P := by
  exact E.curvatureClosedTerm

end GeometricMethodsODEsCanonicalLaneLean
end HautevilleHouse