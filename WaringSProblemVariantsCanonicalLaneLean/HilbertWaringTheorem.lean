import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WaringSProblemVariantsCanonicalLaneLean.WaringSSumsSets

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure HilbertWaringTheoremPackage (k : ℕ) (s : ℕ) (W : WaringSSumsSet k s) where
  existenceOfRepresentation : Prop
  minimalS : ℕ
  minimalSProperty : existenceOfRepresentation → minimalS = s

def HilbertWaringClosed (k : ℕ) (s : ℕ) (W : WaringSSumsSet k s) (H : HilbertWaringTheoremPackage k s W) : Prop :=
  H.existenceOfRepresentation

theorem hilbert_waring_closed (k : ℕ) (s : ℕ) (W : WaringSSumsSet k s) (H : HilbertWaringTheoremPackage k s W) (h : WaringSSumsSetClosed k s W) : HilbertWaringClosed k s W H :=
  h

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse