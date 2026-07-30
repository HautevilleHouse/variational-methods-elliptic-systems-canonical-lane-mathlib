import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure EllipticRegularityPackage (E : EulerLagrangePackage) where
  sobolevSpacesDefined : Prop
  bootstrappingRegularity : Prop
  strongSolution : Prop
  smoothness : Prop

structure EllipticRegularityEvidence {E : EulerLagrangePackage} (R : EllipticRegularityPackage E) where
  sobolevSpacesDefinedClosed : R.sobolevSpacesDefined
  bootstrappingRegularityClosed : R.bootstrappingRegularity
  strongSolutionClosed : R.strongSolution
  smoothnessClosed : R.smoothness

def EllipticRegularityClosed {E : EulerLagrangePackage} (R : EllipticRegularityPackage E) : Prop :=
  R.sobolevSpacesDefined ∧ R.bootstrappingRegularity ∧ R.strongSolution ∧ R.smoothness

theorem elliptic_regularity_closed_from_evidence {E : EulerLagrangePackage} (R : EllipticRegularityPackage E) (Ev : EllipticRegularityEvidence R) : EllipticRegularityClosed R := by
  exact And.intro Ev.sobolevSpacesDefinedClosed (And.intro Ev.bootstrappingRegularityClosed (And.intro Ev.strongSolutionClosed Ev.smoothnessClosed))

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse