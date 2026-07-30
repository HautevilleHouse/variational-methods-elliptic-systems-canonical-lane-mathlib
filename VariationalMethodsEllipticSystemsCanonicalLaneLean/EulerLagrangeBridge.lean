import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure EulerLagrangePackage where
  functional : Type u
  criticalPoint : Type v
  eulerLagrangeEquations : Prop
  weakSolution : Prop
  regularity : Prop

structure EulerLagrangeEvidence (P : EulerLagrangePackage) where
  eulerLagrangeEquationsClosed : P.eulerLagrangeEquations
  weakSolutionClosed : P.weakSolution
  regularityClosed : P.regularity

def EulerLagrangeClosed (P : EulerLagrangePackage) : Prop :=
  P.eulerLagrangeEquations ∧ P.weakSolution ∧ P.regularity

theorem euler_lagrange_closed_from_evidence (P : EulerLagrangePackage) (E : EulerLagrangeEvidence P) : EulerLagrangeClosed P := by
  exact And.intro E.eulerLagrangeEquationsClosed (And.intro E.weakSolutionClosed E.regularityClosed)

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse