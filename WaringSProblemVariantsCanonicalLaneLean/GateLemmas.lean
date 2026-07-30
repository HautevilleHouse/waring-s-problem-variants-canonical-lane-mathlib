import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WaringSProblemVariantsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse