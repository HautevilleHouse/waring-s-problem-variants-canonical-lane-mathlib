import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure AsymptoticBasis (k : ℕ) (s : ℕ) where
  exponent : ℕ := k
  numberOfTerms : ℕ := s
  proportion : ℝ
  proportionPositive : proportion > 0
  basisProperty : Prop

structure AsymptoticBasisEvidence (k : ℕ) (s : ℕ) (B : AsymptoticBasis k s) where
  proportionPositiveClosed : B.proportionPositive
  basisPropertyClosed : B.basisProperty

def AsymptoticBasisClosed (k : ℕ) (s : ℕ) (B : AsymptoticBasis k s) : Prop :=
  B.proportionPositive ∧ B.basisProperty

theorem asymptotic_basis_closed_from_evidence (k : ℕ) (s : ℕ) (B : AsymptoticBasis k s) (E : AsymptoticBasisEvidence k s B) : AsymptoticBasisClosed k s B :=
  And.intro E.proportionPositiveClosed E.basisPropertyClosed

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse