import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure SobolevEmbeddingPackage where
  sobolevSpace : Type u
  targetSpace : Type v
  continuousEmbedding : Prop
  compactEmbedding : Prop
  sobolevInequality : Prop

structure SobolevEmbeddingEvidence (E : SobolevEmbeddingPackage) where
  continuousEmbeddingClosed : E.continuousEmbedding
  compactEmbeddingClosed : E.compactEmbedding
  sobolevInequalityClosed : E.sobolevInequality

def SobolevEmbeddingClosed (E : SobolevEmbeddingPackage) : Prop :=
  E.continuousEmbedding ∧ E.compactEmbedding ∧ E.sobolevInequality

theorem sobolev_embedding_closed_from_evidence (E : SobolevEmbeddingPackage)
    (Ev : SobolevEmbeddingEvidence E) : SobolevEmbeddingClosed E := by
  exact And.intro Ev.continuousEmbeddingClosed
    (And.intro Ev.compactEmbeddingClosed Ev.sobolevInequalityClosed)

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse
