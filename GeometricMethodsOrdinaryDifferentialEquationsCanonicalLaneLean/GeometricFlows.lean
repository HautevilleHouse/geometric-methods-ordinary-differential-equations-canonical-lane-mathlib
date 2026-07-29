import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure GeometricFlowPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  vectorField : Type v
  flowMap : Type w
  smoothManifold : Prop
  vectorFieldSmooth : Prop
  flowDefined : Prop
  flowGroupProperty : Prop

structure GeometricFlowEvidence (G : GeometricFlowPackage) where
  smoothManifoldClosed : G.smoothManifold
  vectorFieldSmoothClosed : G.vectorFieldSmooth
  flowDefinedClosed : G.flowDefined
  flowGroupPropertyClosed : G.flowGroupProperty

def GeometricFlowClosed (G : GeometricFlowPackage) : Prop :=
  G.smoothManifold ∧ G.vectorFieldSmooth ∧ G.flowDefined ∧ G.flowGroupProperty

theorem geometric_flow_closed_from_evidence (G : GeometricFlowPackage) (E : GeometricFlowEvidence G) :
    GeometricFlowClosed G := by
  exact And.intro E.smoothManifoldClosed (And.intro E.vectorFieldSmoothClosed
    (And.intro E.flowDefinedClosed E.flowGroupPropertyClosed))

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse