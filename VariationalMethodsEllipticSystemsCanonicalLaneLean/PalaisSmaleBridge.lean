import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure PalaisSmalePackage (E : EulerLagrangePackage) where
  palaisSmaleCondition : Prop
  boundedness : Prop
  compactness : Prop
  criticalPointSetFinite : Prop

structure PalaisSmaleEvidence {E : EulerLagrangePackage} (P : PalaisSmalePackage E) where
  palaisSmaleConditionClosed : P.palaisSmaleCondition
  boundednessClosed : P.boundedness
  compactnessClosed : P.compactness
  criticalPointSetFiniteClosed : P.criticalPointSetFinite

def PalaisSmaleClosed {E : EulerLagrangePackage} (P : PalaisSmalePackage E) : Prop :=
  P.palaisSmaleCondition ∧ P.boundedness ∧ P.compactness ∧ P.criticalPointSetFinite

theorem palais_smale_closed_from_evidence {E : EulerLagrangePackage} (P : PalaisSmalePackage E) (Ev : PalaisSmaleEvidence P) : PalaisSmaleClosed P := by
  exact And.intro Ev.palaisSmaleConditionClosed (And.intro Ev.boundednessClosed (And.intro Ev.compactnessClosed Ev.criticalPointSetFiniteClosed))

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse