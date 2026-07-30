import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure EulerLagrangeSystem (V : VariationalProblem) where
  systemType : Type u
  boundaryConditions : Prop
  weakFormulation : Prop
  strongFormulation : Prop
  existenceOfWeakSolutions : Prop
  regularityOfWeakSolutions : Prop

structure EulerLagrangeEvidence {V : VariationalProblem}
    (E : EulerLagrangeSystem V) where
  boundaryConditionsClosed : E.boundaryConditions
  weakFormulationClosed : E.weakFormulation
  strongFormulationClosed : E.strongFormulation
  existenceOfWeakSolutionsClosed : E.existenceOfWeakSolutions
  regularityOfWeakSolutionsClosed : E.regularityOfWeakSolutions

def EulerLagrangeClosed {V : VariationalProblem}
    (E : EulerLagrangeSystem V) : Prop :=
  E.boundaryConditions ∧ E.weakFormulation ∧ E.strongFormulation ∧
  E.existenceOfWeakSolutions ∧ E.regularityOfWeakSolutions

theorem euler_lagrange_closed_from_evidence
    {V : VariationalProblem} (E : EulerLagrangeSystem V)
    (Ev : EulerLagrangeEvidence E) : EulerLagrangeClosed E := by
  exact And.intro Ev.boundaryConditionsClosed
    (And.intro Ev.weakFormulationClosed
      (And.intro Ev.strongFormulationClosed
        (And.intro Ev.existenceOfWeakSolutionsClosed
          Ev.regularityOfWeakSolutionsClosed)))

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse