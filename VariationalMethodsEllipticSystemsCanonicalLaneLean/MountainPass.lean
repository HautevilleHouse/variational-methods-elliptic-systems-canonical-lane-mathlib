import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure MountainPassPackage where
  functional : Type u
  pathSpace : Type v
  mountainPassGeometry : Prop
  criticalPoint : Prop
  criticalValue : Prop

structure MountainPassEvidence (M : MountainPassPackage) where
  mountainPassGeometryClosed : M.mountainPassGeometry
  criticalPointClosed : M.criticalPoint
  criticalValueClosed : M.criticalValue

def MountainPassClosed (M : MountainPassPackage) : Prop :=
  M.mountainPassGeometry ∧ M.criticalPoint ∧ M.criticalValue

theorem mountain_pass_closed_from_evidence (M : MountainPassPackage)
    (Ev : MountainPassEvidence M) : MountainPassClosed M := by
  exact And.intro Ev.mountainPassGeometryClosed
    (And.intro Ev.criticalPointClosed Ev.criticalValueClosed)

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse
