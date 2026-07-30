import WaringSProblemVariantsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure AdmissibleClass where
  object : WaringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WaringWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse