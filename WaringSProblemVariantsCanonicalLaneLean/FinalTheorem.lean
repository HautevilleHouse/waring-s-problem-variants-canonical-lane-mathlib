import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WaringSProblemVariantsCanonicalLaneLean.WaringSProjection
import HautevilleHouse.WaringSProblemVariantsCanonicalLaneLean.WaringSSumsSets

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

def constrainedWaringSClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_waring_s_endgame (A : AdmissibleClass) :
    constrainedWaringSClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse