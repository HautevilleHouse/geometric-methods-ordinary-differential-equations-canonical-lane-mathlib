import GeometricMethodsODEsCanonicalLaneLean.GeometricODEsBundle

namespace HautevilleHouse
namespace GeometricMethodsODEsCanonicalLaneLean

structure IntegrabilityPackage {M : GeometricODEsManifold} {B : GeometricODEsBundle M} (C : BundleConnection M B) where
  frobeniusCondition : Prop
  leafSpaceDefined : Prop
  maximalIntegralManifolds : Prop

structure IntegrabilityEvidence {M : GeometricODEsManifold} {B : GeometricODEsBundle M} {C : BundleConnection M B} (I : IntegrabilityPackage C) where
  frobeniusConditionClosed : I.frobeniusCondition
  leafSpaceDefinedClosed : I.leafSpaceDefined
  maximalIntegralManifoldsClosed : I.maximalIntegralManifolds

def IntegrabilityClosed {M : GeometricODEsManifold} {B : GeometricODEsBundle M} {C : BundleConnection M B} (I : IntegrabilityPackage C) : Prop :=
  I.frobeniusCondition ∧ I.leafSpaceDefined ∧ I.maximalIntegralManifolds

theorem integrability_closed_from_evidence {M : GeometricODEsManifold} {B : GeometricODEsBundle M} {C : BundleConnection M B} (I : IntegrabilityPackage C) (E : IntegrabilityEvidence I) : IntegrabilityClosed I := by
  exact And.intro E.frobeniusConditionClosed (And.intro E.leafSpaceDefinedClosed E.maximalIntegralManifoldsClosed)

end GeometricMethodsODEsCanonicalLaneLean
end HautevilleHouse