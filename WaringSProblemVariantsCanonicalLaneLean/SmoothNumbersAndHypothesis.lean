import ExceptionalSetEstimates

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure SmoothNumbersAndHypothesisPackage
    {H : HardyLittlewoodCircleMethodPackage}
    {R : RationalPointsAsymptoticsPackage H}
    (E : ExceptionalSetEstimatesPackage R) where
  smoothNumberSet : Set ℕ
  hypothesisCondition : Prop
  conclusion : hypothesisCondition

structure SmoothNumbersAndHypothesisEvidence
    {H : HardyLittlewoodCircleMethodPackage}
    {R : RationalPointsAsymptoticsPackage H}
    {E : ExceptionalSetEstimatesPackage R}
    (S : SmoothNumbersAndHypothesisPackage E) where
  conclusionClosed : S.conclusion

def SmoothNumbersAndHypothesisClosed
    {H : HardyLittlewoodCircleMethodPackage}
    {R : RationalPointsAsymptoticsPackage H}
    {E : ExceptionalSetEstimatesPackage R}
    (S : SmoothNumbersAndHypothesisPackage E) : Prop :=
  S.conclusion

theorem smooth_numbers_and_hypothesis_closed_from_evidence
    {H : HardyLittlewoodCircleMethodPackage}
    {R : RationalPointsAsymptoticsPackage H}
    {E : ExceptionalSetEstimatesPackage R}
    (S : SmoothNumbersAndHypothesisPackage E)
    (Ev : SmoothNumbersAndHypothesisEvidence S) : SmoothNumbersAndHypothesisClosed S :=
  Ev.conclusionClosed

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse