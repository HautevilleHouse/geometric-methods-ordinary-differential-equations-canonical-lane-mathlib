import HautevilleHouse.GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean.TheoremStatement
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean

structure ODESpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ODEAdmittedObject where
  space : ODESpace
  flowComplete : Prop
  invariantManifold : Prop
  lyapunovFunction : Type
  stableEquilibrium : Prop
  conclusion : stableEquilibrium

structure ODEndgameState where
  object : ODEAdmittedObject

def ODEWitnessClosed (O : ODEAdmittedObject) : Prop :=
  O.stableEquilibrium

end GeometricMethodsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse