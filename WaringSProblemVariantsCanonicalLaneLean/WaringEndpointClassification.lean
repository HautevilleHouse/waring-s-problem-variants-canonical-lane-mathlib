import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure EndpointClassificationPackage {k : ℕ} {s : ℕ} (M1 : MinorArcsPackage (k := k) (s := s)) (M2 : MajorArcsPackage (k := k) (s := s)) where
  asymptoticFormulaObtained : Prop
  g_k_function_computed : Prop
  minimal_s_determined : Prop

structure EndpointClassificationEvidence {k : ℕ} {s : ℕ} {M1 : MinorArcsPackage (k := k) (s := s)} {M2 : MajorArcsPackage (k := k) (s := s)} (E : EndpointClassificationPackage M1 M2) where
  asymptoticFormulaObtainedClosed : E.asymptoticFormulaObtained
  g_k_function_computedClosed : E.g_k_function_computed
  minimal_s_determinedClosed : E.minimal_s_determined

def EndpointClassificationClosed {k : ℕ} {s : ℕ} {M1 : MinorArcsPackage (k := k) (s := s)} {M2 : MajorArcsPackage (k := k) (s := s)} (E : EndpointClassificationPackage M1 M2) : Prop :=
  E.asymptoticFormulaObtained ∧ E.g_k_function_computed ∧ E.minimal_s_determined

theorem endpoint_classification_closed_from_evidence {k : ℕ} {s : ℕ} {M1 : MinorArcsPackage (k := k) (s := s)} {M2 : MajorArcsPackage (k := k) (s := s)} (E : EndpointClassificationPackage M1 M2) (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E := by
  exact And.intro Ev.asymptoticFormulaObtainedClosed (And.intro Ev.g_k_function_computedClosed Ev.minimal_s_determinedClosed)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse