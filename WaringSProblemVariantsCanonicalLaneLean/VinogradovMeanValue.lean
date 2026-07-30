import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure VinogradovMeanValuePackage where
  exponent : Nat
  numberOfVariables : Nat
  meanValueTheorem : Prop
  optimalBound : Prop
  applicationsToWaring : Prop

structure VinogradovMeanValueEvidence (V : VinogradovMeanValuePackage) where
  meanValueTheoremClosed : V.meanValueTheorem
  optimalBoundClosed : V.optimalBound
  applicationsToWaringClosed : V.applicationsToWaring

def VinogradovMeanValueClosed (V : VinogradovMeanValuePackage) : Prop :=
  V.meanValueTheorem ∧ V.optimalBound ∧ V.applicationsToWaring

theorem vinogradov_mean_value_closed_from_evidence (V : VinogradovMeanValuePackage)
    (E : VinogradovMeanValueEvidence V) : VinogradovMeanValueClosed V := by
  exact And.intro E.meanValueTheoremClosed
    (And.intro E.optimalBoundClosed E.applicationsToWaringClosed)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse