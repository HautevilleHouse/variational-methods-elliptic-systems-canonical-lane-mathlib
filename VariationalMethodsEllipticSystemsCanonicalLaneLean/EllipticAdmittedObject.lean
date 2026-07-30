import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure EllipticSystemSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EllipticAdmittedObject where
  space : EllipticSystemSpace
  boundedDomain : Prop
  ellipticOperator : Prop
  weakSolutionExists : Prop
  conclusion : weakSolutionExists

structure EllipticEndgameState where
  object : EllipticAdmittedObject

def EllipticWitnessClosed (O : EllipticAdmittedObject) : Prop :=
  O.weakSolutionExists

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse