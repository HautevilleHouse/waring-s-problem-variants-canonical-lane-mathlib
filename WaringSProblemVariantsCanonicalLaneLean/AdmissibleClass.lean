import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WaringSProblemVariantsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure AdmissibleClass where
  object : WaringSProblemAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WaringSProblemWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse