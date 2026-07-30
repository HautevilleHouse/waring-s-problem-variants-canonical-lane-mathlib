import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure CircleMethodEstimatePackage where
  exponent : Nat
  numberOfVariables : Nat
  majorArcContribution : Prop
  minorArcBound : Prop
  asymptoticFormula : Prop

structure CircleMethodEstimateEvidence (C : CircleMethodEstimatePackage) where
  majorArcContributionClosed : C.majorArcContribution
  minorArcBoundClosed : C.minorArcBound
  asymptoticFormulaClosed : C.asymptoticFormula

def CircleMethodEstimateClosed (C : CircleMethodEstimatePackage) : Prop :=
  C.majorArcContribution ∧ C.minorArcBound ∧ C.asymptoticFormula

theorem circle_method_estimate_closed_from_evidence (C : CircleMethodEstimatePackage)
    (E : CircleMethodEstimateEvidence C) : CircleMethodEstimateClosed C := by
  exact And.intro E.majorArcContributionClosed
    (And.intro E.minorArcBoundClosed E.asymptoticFormulaClosed)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse