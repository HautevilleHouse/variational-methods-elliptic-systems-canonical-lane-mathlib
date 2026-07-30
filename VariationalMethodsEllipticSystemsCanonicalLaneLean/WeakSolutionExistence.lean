import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure SobolevSpace where
  exponent : Nat
  domainType : Type u
  normDefined : Prop
  completeness : Prop

structure WeakFormulation {S : SobolevSpace} where
  bilinearForm : S → S → ℝ
  linearForm : S → ℝ
  ellipticity : Prop
  boundedness : Prop

structure WeakSolutionExistencePackage {S : SobolevSpace} (W : WeakFormulation S) where
  coercivityCondition : Prop
  solutionExists : Prop
  solutionUnique : Prop
  stabilityUnderApproximation : Prop

structure WeakSolutionExistenceEvidence {S : SobolevSpace} {W : WeakFormulation S}
    (P : WeakSolutionExistencePackage W) where
  coercivityConditionClosed : P.coercivityCondition
  solutionExistsClosed : P.solutionExists
  solutionUniqueClosed : P.solutionUnique
  stabilityUnderApproximationClosed : P.stabilityUnderApproximation

def WeakSolutionExistenceClosed {S : SobolevSpace} {W : WeakFormulation S}
    (P : WeakSolutionExistencePackage W) : Prop :=
  P.coercivityCondition ∧ P.solutionExists ∧ P.solutionUnique ∧ P.stabilityUnderApproximation

theorem weak_solution_existence_closed_from_evidence
    {S : SobolevSpace} {W : WeakFormulation S}
    (P : WeakSolutionExistencePackage W) (E : WeakSolutionExistenceEvidence P) :
    WeakSolutionExistenceClosed P :=
  And.intro E.coercivityConditionClosed
    (And.intro E.solutionExistsClosed
      (And.intro E.solutionUniqueClosed E.stabilityUnderApproximationClosed))

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse