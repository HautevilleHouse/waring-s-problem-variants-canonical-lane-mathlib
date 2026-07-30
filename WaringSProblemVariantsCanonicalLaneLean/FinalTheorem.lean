import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WaringSProblemVariantsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

def ConstrainedWaringSProblemClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_waring_s_problem_endgame (A : AdmissibleClass) :
    ConstrainedWaringSProblemClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse