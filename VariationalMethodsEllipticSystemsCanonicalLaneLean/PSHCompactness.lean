import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure PalaisSmaleConditionPackage where
  functional : Type u
  sequence : Type v
  ceramiCondition : Prop
  compactnessRecovery : Prop
  convergence : Prop

structure PalaisSmaleConditionEvidence (P : PalaisSmaleConditionPackage) where
  ceramiConditionClosed : P.ceramiCondition
  compactnessRecoveryClosed : P.compactnessRecovery
  convergenceClosed : P.convergence

def PalaisSmaleConditionClosed (P : PalaisSmaleConditionPackage) : Prop :=
  P.ceramiCondition ∧ P.compactnessRecovery ∧ P.convergence

theorem palais_smale_condition_closed_from_evidence (P : PalaisSmaleConditionPackage)
    (Ev : PalaisSmaleConditionEvidence P) : PalaisSmaleConditionClosed P := by
  exact And.intro Ev.ceramiConditionClosed
    (And.intro Ev.compactnessRecoveryClosed Ev.convergenceClosed)

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse
