import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalMethodsEllipticSystemsCanonicalLaneLean

structure FunctionSpacePackage (V : VariationalProblem) where
  sobolevSpace : Type u
  norm : Type v
  embedding : Prop
  compactness : Prop
  reflexivity : Prop

structure FunctionSpaceEvidence {V : VariationalProblem}
    (F : FunctionSpacePackage V) where
  embeddingClosed : F.embedding
  compactnessClosed : F.compactness
  reflexivityClosed : F.reflexivity

def FunctionSpaceClosed {V : VariationalProblem}
    (F : FunctionSpacePackage V) : Prop :=
  F.embedding ∧ F.compactness ∧ F.reflexivity

theorem function_space_closed_from_evidence
    {V : VariationalProblem} (F : FunctionSpacePackage V)
    (E : FunctionSpaceEvidence F) : FunctionSpaceClosed F := by
  exact And.intro E.embeddingClosed
    (And.intro E.compactnessClosed E.reflexivityClosed)

end VariationalMethodsEllipticSystemsCanonicalLaneLean
end HautevilleHouse