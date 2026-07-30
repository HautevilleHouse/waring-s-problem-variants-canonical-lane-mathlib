import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure WaringAdmittedObject where
  k : ℕ
  s : ℕ
  admissibleExponent : ℕ
  asymptoticFormulaKnown : Prop
  conclusion : asymptoticFormulaKnown

structure AdmissibleClass where
  object : WaringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WaringWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse