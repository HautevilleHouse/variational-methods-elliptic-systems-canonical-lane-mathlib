import canonicalLaneMathlib.Core

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VariationalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VariationalAdmittedObject where
  space : VariationalSpace
  functionalDefined : Prop
  criticalPointExists : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  solutionFound : Prop
  conclusion : solutionFound

def VariationalWitnessClosed (O : VariationalAdmittedObject) : Prop :=
  O.solutionFound

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse