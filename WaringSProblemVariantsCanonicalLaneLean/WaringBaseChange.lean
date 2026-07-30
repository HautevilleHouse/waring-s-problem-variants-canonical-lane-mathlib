import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure WaringBaseChange (k : ℕ) (s : ℕ) where
  originalExponent : ℕ := k
  newExponent : ℕ
  transformationMap : ℕ → ℕ
  transformPreservesRepresentations : Prop

structure WaringBaseChangeEvidence (k : ℕ) (s : ℕ) (B : WaringBaseChange k s) where
  transformPreservesRepresentationsClosed : B.transformPreservesRepresentations

def WaringBaseChangeClosed (k : ℕ) (s : ℕ) (B : WaringBaseChange k s) : Prop :=
  B.transformPreservesRepresentations

theorem waring_base_change_closed_from_evidence (k : ℕ) (s : ℕ) (B : WaringBaseChange k s) (E : WaringBaseChangeEvidence k s B) : WaringBaseChangeClosed k s B :=
  E.transformPreservesRepresentationsClosed

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse