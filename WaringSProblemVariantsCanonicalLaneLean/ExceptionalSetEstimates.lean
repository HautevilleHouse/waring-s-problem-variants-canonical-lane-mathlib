import RationalPointsAsymptotics

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure ExceptionalSetEstimatesPackage
    {H : HardyLittlewoodCircleMethodPackage}
    (R : RationalPointsAsymptoticsPackage H) where
  exceptionalSet : Set ℕ
  exceptionalDensity : ℝ
  densityBound : Prop

structure ExceptionalSetEstimatesEvidence
    {H : HardyLittlewoodCircleMethodPackage}
    {R : RationalPointsAsymptoticsPackage H}
    (E : ExceptionalSetEstimatesPackage R) where
  densityBoundClosed : E.densityBound

def ExceptionalSetEstimatesClosed
    {H : HardyLittlewoodCircleMethodPackage}
    {R : RationalPointsAsymptoticsPackage H}
    (E : ExceptionalSetEstimatesPackage R) : Prop :=
  E.densityBound

theorem exceptional_set_estimates_closed_from_evidence
    {H : HardyLittlewoodCircleMethodPackage}
    {R : RationalPointsAsymptoticsPackage H}
    (E : ExceptionalSetEstimatesPackage R)
    (Ev : ExceptionalSetEstimatesEvidence E) : ExceptionalSetEstimatesClosed E :=
  Ev.densityBoundClosed

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse