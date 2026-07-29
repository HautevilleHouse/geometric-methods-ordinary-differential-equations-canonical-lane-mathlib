import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMethodsODEsCanonicalLaneLean

structure GeometricODEsManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  dimension : Nat

default instance : Inhabited GeometricODEsManifold where
  default := { carrier := Unit, topology := inferInstance, smoothStructure := True, dimension := 0 }

structure GeometricODEsAdmittedObject where
  manifold : GeometricODEsManifold
  odesystem : Prop
  flowComplete : Prop
  conclusion : flowComplete

def GeometricODEsWitnessClosed (O : GeometricODEsAdmittedObject) : Prop :=
  O.flowComplete

end GeometricMethodsODEsCanonicalLaneLean
end HautevilleHouse