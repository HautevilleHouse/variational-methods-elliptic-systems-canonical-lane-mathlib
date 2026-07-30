import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure BanachSpace where
  carrierType : Type u
  norm : carrierType → ℝ
  completeness : Prop

structure Functional {X : BanachSpace} where
  toFun : X → ℝ
  differentiabilityClass : Nat
  lowerSemicontinuity : Prop

structure MountainPassTheoremPackage {X : BanachSpace} (J : Functional X) where
  palaisSmaleCondition : Prop
  geometricCondition : Prop
  criticalPointExists : Prop
  criticalValueCharacterization : Prop

structure MountainPassTheoremEvidence {X : BanachSpace} {J : Functional X}
    (M : MountainPassTheoremPackage J) where
  palaisSmaleConditionClosed : M.palaisSmaleCondition
  geometricConditionClosed : M.geometricCondition
  criticalPointExistsClosed : M.criticalPointExists
  criticalValueCharacterizationClosed : M.criticalValueCharacterization

def MountainPassTheoremClosed {X : BanachSpace} {J : Functional X}
    (M : MountainPassTheoremPackage J) : Prop :=
  M.palaisSmaleCondition ∧ M.geometricCondition ∧ M.criticalPointExists ∧ M.criticalValueCharacterization

theorem mountain_pass_theorem_closed_from_evidence
    {X : BanachSpace} {J : Functional X}
    (M : MountainPassTheoremPackage J) (E : MountainPassTheoremEvidence M) :
    MountainPassTheoremClosed M :=
  And.intro E.palaisSmaleConditionClosed
    (And.intro E.geometricConditionClosed
      (And.intro E.criticalPointExistsClosed E.criticalValueCharacterizationClosed))

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse