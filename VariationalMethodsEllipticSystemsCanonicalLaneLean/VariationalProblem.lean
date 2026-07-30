import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure VariationalProblem where
  domain : Type u
  functionSpace : Type v
  lagrangian : Type w
  eulerLagrangeEquation : Prop
  regularity : Prop
  coercivity : Prop

structure VariationalEvidence (V : VariationalProblem) where
  eulerLagrangeEquationClosed : V.eulerLagrangeEquation
  regularityClosed : V.regularity
  coercivityClosed : V.coercivity

def VariationalClosed (V : VariationalProblem) : Prop :=
  V.eulerLagrangeEquation ∧ V.regularity ∧ V.coercivity

theorem variational_closed_from_evidence (V : VariationalProblem)
    (E : VariationalEvidence V) : VariationalClosed V := by
  exact And.intro E.eulerLagrangeEquationClosed
    (And.intro E.regularityClosed E.coercivityClosed)

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse