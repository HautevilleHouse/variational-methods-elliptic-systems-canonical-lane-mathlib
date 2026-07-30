import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure CriticalPointPackage {V : VariationalProblem}
    {F : FunctionSpacePackage V} where
  functional : Type u
  criticalPoints : Prop
  mountainPassGeometry : Prop
  linkingGeometry : Prop
  palaisSmaleCondition : Prop
  multiplicity : Prop

structure CriticalPointEvidence {V : VariationalProblem}
    {F : FunctionSpacePackage V}
    (C : CriticalPointPackage F) where
  criticalPointsClosed : C.criticalPoints
  mountainPassGeometryClosed : C.mountainPassGeometry
  linkingGeometryClosed : C.linkingGeometry
  palaisSmaleConditionClosed : C.palaisSmaleCondition
  multiplicityClosed : C.multiplicity

def CriticalPointClosed {V : VariationalProblem}
    {F : FunctionSpacePackage V}
    (C : CriticalPointPackage F) : Prop :=
  C.criticalPoints ∧ C.mountainPassGeometry ∧ C.linkingGeometry ∧
  C.palaisSmaleCondition ∧ C.multiplicity

theorem critical_point_closed_from_evidence
    {V : VariationalProblem} {F : FunctionSpacePackage V}
    (C : CriticalPointPackage F) (E : CriticalPointEvidence C) :
    CriticalPointClosed C := by
  exact And.intro E.criticalPointsClosed
    (And.intro E.mountainPassGeometryClosed
      (And.intro E.linkingGeometryClosed
        (And.intro E.palaisSmaleConditionClosed E.multiplicityClosed)))

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse