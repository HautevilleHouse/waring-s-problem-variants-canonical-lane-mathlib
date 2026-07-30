import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure WaringDecompositionPackage where
  representationType : Type u
  exponent : Nat
  numberOfTerms : Nat
  representationsExist : Prop
  asymptoticDensity : Prop
  sumsetProperties : Prop

structure WaringDecompositionEvidence (W : WaringDecompositionPackage) where
  representationsExistClosed : W.representationsExist
  asymptoticDensityClosed : W.asymptoticDensity
  sumsetPropertiesClosed : W.sumsetProperties

def WaringDecompositionClosed (W : WaringDecompositionPackage) : Prop :=
  W.representationsExist ∧ W.asymptoticDensity ∧ W.sumsetProperties

theorem waring_decomposition_closed_from_evidence (W : WaringDecompositionPackage)
    (E : WaringDecompositionEvidence W) : WaringDecompositionClosed W := by
  exact And.intro E.representationsExistClosed
    (And.intro E.asymptoticDensityClosed E.sumsetPropertiesClosed)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse