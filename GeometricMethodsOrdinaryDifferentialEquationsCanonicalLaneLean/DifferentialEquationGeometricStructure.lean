import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure GeometricStructure (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  metric : RiemannianMetric M
  connection : Connection (TangentSpace M) (TangentSpace M)
  curvatureForm : Module.Dual ℝ (Alternating2 ℝ (TangentSpace M)) (TangentSpace M)
  torsionFree : Prop
  metricCompatible : Prop
  torsionFreeTerm : torsionFree
  metricCompatibleTerm : metricCompatible

structure GeometricStructureEvidence (G : GeometricStructure M) where
  torsionFreeClosed : G.torsionFree
  metricCompatibleClosed : G.metricCompatible

def GeometricStructureClosed (G : GeometricStructure M) : Prop :=
  G.torsionFree ∧ G.metricCompatible

theorem geometric_structure_closed_from_evidence (G : GeometricStructure M)
    (E : GeometricStructureEvidence G) : GeometricStructureClosed G := by
  exact And.intro E.torsionFreeClosed E.metricCompatibleClosed

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse