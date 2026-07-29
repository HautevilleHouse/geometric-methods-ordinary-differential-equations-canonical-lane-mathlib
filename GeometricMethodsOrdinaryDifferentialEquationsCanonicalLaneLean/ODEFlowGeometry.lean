import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsODEsCanonicalLaneLean

structure ODEOpenSetGeometry where
  carrier : Type
  topology : TopologicalSpace carrier
  manifold : SmoothManifold carrier
  vectorField : VectorField carrier
  flow : Flow carrier
  flowClosure : TheFlowIsComplete carrier flow

structure ODEFlowPackage (G : ODEOpenSetGeometry) where
  initialCondition : G.carrier
  existenceInterval : Prop
  uniqueness : Prop
  smoothDependence : Prop
  continuityOnParameters : Prop

structure ODEFlowEvidence (F : ODEFlowPackage) where
  initialConditionClosed : F.initialCondition
  existenceIntervalClosed : F.existenceInterval
  uniquenessClosed : F.uniqueness
  smoothDependenceClosed : F.smoothDependence
  continuityOnParametersClosed : F.continuityOnParameters

def ODEFlowClosed (F : ODEFlowPackage) : Prop :=
  F.initialCondition ∧ F.existenceInterval ∧ F.uniqueness ∧
  F.smoothDependence ∧ F.continuityOnParameters

theorem odf_flow_closed_from_evidence (F : ODEFlowPackage) (E : ODEFlowEvidence F) :
    ODEFlowClosed F := by
  exact And.intro E.initialConditionClosed
    (And.intro E.existenceIntervalClosed
      (And.intro E.uniquenessClosed
        (And.intro E.smoothDependenceClosed E.continuityOnParametersClosed)))

end GeometricMethodsODEsCanonicalLaneLean
end HautevilleHouse