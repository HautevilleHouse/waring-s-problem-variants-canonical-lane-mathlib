import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure MajorArcsPackage {k : ℕ} {s : ℕ} where
  singularIntegralConverges : Prop
  singularSeriesSummable : Prop
  mainTermAsymptotic : Prop
  errorTermBound : Prop

structure MajorArcsEvidence {k : ℕ} {s : ℕ} (M : MajorArcsPackage (k := k) (s := s)) where
  singularIntegralConvergesClosed : M.singularIntegralConverges
  singularSeriesSummableClosed : M.singularSeriesSummable
  mainTermAsymptoticClosed : M.mainTermAsymptotic
  errorTermBoundClosed : M.errorTermBound

def MajorArcsClosed {k : ℕ} {s : ℕ} (M : MajorArcsPackage (k := k) (s := s)) : Prop :=
  M.singularIntegralConverges ∧ M.singularSeriesSummable ∧ M.mainTermAsymptotic ∧ M.errorTermBound

theorem major_arcs_closed_from_evidence {k : ℕ} {s : ℕ} (M : MajorArcsPackage (k := k) (s := s)) (E : MajorArcsEvidence M) : MajorArcsClosed M := by
  exact And.intro E.singularIntegralConvergesClosed (And.intro E.singularSeriesSummableClosed (And.intro E.mainTermAsymptoticClosed E.errorTermBoundClosed))

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse