import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure WaringAdmittedObject where
  exponent : ℕ
  baseField : ℕ
  representationCount : ℕ
  gFunction : ℕ → ℕ
  gValue : ℕ
  conclusion : gFunction baseField = gValue

structure AdmissibleClass where
  object : WaringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse