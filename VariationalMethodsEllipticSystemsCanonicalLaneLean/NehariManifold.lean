import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure NehariManifoldPackage where
  functional : Type u
  nehariSet : Prop
  groundState : Prop
  energyEstimates : Prop

structure NehariManifoldEvidence (N : NehariManifoldPackage) where
  nehariSetClosed : N.nehariSet
  groundStateClosed : N.groundState
  energyEstimatesClosed : N.energyEstimates

def NehariManifoldClosed (N : NehariManifoldPackage) : Prop :=
  N.nehariSet ∧ N.groundState ∧ N.energyEstimates

theorem nehari_manifold_closed_from_evidence (N : NehariManifoldPackage)
    (Ev : NehariManifoldEvidence N) : NehariManifoldClosed N := by
  exact And.intro Ev.nehariSetClosed
    (And.intro Ev.groundStateClosed Ev.energyEstimatesClosed)

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse
