import VariationalMethodsEllipticSystemsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure BridgePackage where
  ellipticOperator : Type
  weakSolution : Type
  gateClosed : Prop

def BridgeClosed (B : BridgePackage) : Prop :=
  B.gateClosed

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse
