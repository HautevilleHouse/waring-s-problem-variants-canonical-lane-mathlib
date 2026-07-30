import GateLemmas

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

def ConstrainedWaringClosure (A : WaringAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_waring_endgame (A : WaringAdmissibleClass) : ConstrainedWaringClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse