import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VariationalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse