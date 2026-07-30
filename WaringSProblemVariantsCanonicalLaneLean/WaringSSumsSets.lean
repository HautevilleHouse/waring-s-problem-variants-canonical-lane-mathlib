import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure WaringSSumsSet (k : ℕ) (s : ℕ) where
  exponent : ℕ := k
  numberOfTerms : ℕ := s
  allowedBases : Set ℕ
  sums : Set ℕ
  sumsAreAllNumbers : Prop

structure WaringSSumsSetEvidence (k : ℕ) (s : ℕ) (W : WaringSSumsSet k s) where
  sumsAreAllNumbersClosed : W.sumsAreAllNumbers

def WaringSSumsSetClosed (k : ℕ) (s : ℕ) (W : WaringSSumsSet k s) : Prop :=
  W.sumsAreAllNumbers

theorem waring_s_sums_set_closed_from_evidence (k : ℕ) (s : ℕ) (W : WaringSSumsSet k s) (E : WaringSSumsSetEvidence k s W) : WaringSSumsSetClosed k s W :=
  E.sumsAreAllNumbersClosed

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse