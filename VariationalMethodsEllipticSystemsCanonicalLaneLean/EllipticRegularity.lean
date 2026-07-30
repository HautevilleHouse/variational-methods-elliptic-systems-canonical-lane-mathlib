import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure EllipticRegularityPackage where
  pdeSystem : Type u
  weakSolution : Type v
  interiorRegularity : Prop
  boundaryRegularity : Prop

structure EllipticRegularityEvidence (E : EllipticRegularityPackage) where
  interiorRegularityClosed : E.interiorRegularity
  boundaryRegularityClosed : E.boundaryRegularity

def EllipticRegularityClosed (E : EllipticRegularityPackage) : Prop :=
  E.interiorRegularity ∧ E.boundaryRegularity

theorem elliptic_regularity_closed_from_evidence (E : EllipticRegularityPackage)
    (Ev : EllipticRegularityEvidence E) : EllipticRegularityClosed E := by
  exact And.intro Ev.interiorRegularityClosed Ev.boundaryRegularityClosed

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse
