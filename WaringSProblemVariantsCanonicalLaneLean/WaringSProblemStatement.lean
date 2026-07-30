import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure WaringAdmittedObject where
  k : ℕ
  s : ℕ
  N : ℕ
  representation : ℕ → ℕ
  condition : ∀ n : ℕ, n ≥ N → ∃ (x : Fin s → ℕ), representation n = ∑ i, (x i)^k
  conclusion : condition

structure WaringAdmissibleClass where
  object : WaringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : WaringAdmissibleClass) : Prop :=
  (A.object.condition) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse