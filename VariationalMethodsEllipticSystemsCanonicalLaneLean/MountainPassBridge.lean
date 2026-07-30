import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure MountainPassPackage (E : EulerLagrangePackage) where
  functionalIsC1 : Prop
  geometricCondition : Prop
  mountainPassGeometry : Prop
  criticalValueExists : Prop
  criticalPoint : Type w

structure MountainPassEvidence {E : EulerLagrangePackage} (M : MountainPassPackage E) where
  functionalIsC1Closed : M.functionalIsC1
  geometricConditionClosed : M.geometricCondition
  mountainPassGeometryClosed : M.mountainPassGeometry
  criticalValueExistsClosed : M.criticalValueExists

def MountainPassClosed {E : EulerLagrangePackage} (M : MountainPassPackage E) : Prop :=
  M.functionalIsC1 ∧ M.geometricCondition ∧ M.mountainPassGeometry ∧ M.criticalValueExists

theorem mountain_pass_closed_from_evidence {E : EulerLagrangePackage} (M : MountainPassPackage E) (Ev : MountainPassEvidence M) : MountainPassClosed M := by
  exact And.intro Ev.functionalIsC1Closed (And.intro Ev.geometricConditionClosed (And.intro Ev.mountainPassGeometryClosed Ev.criticalValueExistsClosed))

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse