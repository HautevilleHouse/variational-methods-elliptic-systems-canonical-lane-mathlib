import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

def ConstrainedVariationalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_variational_endgame (A : AdmissibleClass) :
    ConstrainedVariationalClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse