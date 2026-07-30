import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure GlobalBifurcationPackage where
  linearization : Type u
  bifurcationBranch : Type v
  bifurcationPoint : Prop
  globalStructure : Prop

structure GlobalBifurcationEvidence (G : GlobalBifurcationPackage) where
  bifurcationPointClosed : G.bifurcationPoint
  globalStructureClosed : G.globalStructure

def GlobalBifurcationClosed (G : GlobalBifurcationPackage) : Prop :=
  G.bifurcationPoint ∧ G.globalStructure

theorem global_bifurcation_closed_from_evidence (G : GlobalBifurcationPackage)
    (Ev : GlobalBifurcationEvidence G) : GlobalBifurcationClosed G := by
  exact And.intro Ev.bifurcationPointClosed Ev.globalStructureClosed

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse
