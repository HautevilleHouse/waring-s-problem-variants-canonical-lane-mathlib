import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure MinorArcsPackage {k : ℕ} {s : ℕ} where
  harmonicAnalysisBound : Prop
  exponentialSumEstimate : Prop
  majorArcReduction : Prop
  asymptoticResultDerived : Prop

structure MinorArcsEvidence {k : ℕ} {s : ℕ} (M : MinorArcsPackage (k := k) (s := s)) where
  harmonicAnalysisBoundClosed : M.harmonicAnalysisBound
  exponentialSumEstimateClosed : M.exponentialSumEstimate
  majorArcReductionClosed : M.majorArcReduction
  asymptoticResultDerivedClosed : M.asymptoticResultDerived

def MinorArcsClosed {k : ℕ} {s : ℕ} (M : MinorArcsPackage (k := k) (s := s)) : Prop :=
  M.harmonicAnalysisBound ∧ M.exponentialSumEstimate ∧ M.majorArcReduction ∧ M.asymptoticResultDerived

theorem minor_arcs_closed_from_evidence {k : ℕ} {s : ℕ} (M : MinorArcsPackage (k := k) (s := s)) (E : MinorArcsEvidence M) : MinorArcsClosed M := by
  exact And.intro E.harmonicAnalysisBoundClosed (And.intro E.exponentialSumEstimateClosed (And.intro E.majorArcReductionClosed E.asymptoticResultDerivedClosed))

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse