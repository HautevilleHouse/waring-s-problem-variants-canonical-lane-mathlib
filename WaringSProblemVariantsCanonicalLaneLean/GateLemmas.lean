import BridgeLemmas

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

def gateClosed (A : WaringAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : WaringAdmissibleClass) : gateClosed A :=
  A.gateWitness

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse