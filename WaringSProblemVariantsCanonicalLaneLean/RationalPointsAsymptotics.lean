import HardyLittlewoodCircleMethod

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure RationalPointsAsymptoticsPackage
    (H : HardyLittlewoodCircleMethodPackage) where
  densityFunction : ℕ → ℝ
  mainTerm : ℕ → ℝ
  errorTerm : ℕ → ℝ
  asymptoticBound : Prop

structure RationalPointsAsymptoticsEvidence
    {H : HardyLittlewoodCircleMethodPackage}
    (R : RationalPointsAsymptoticsPackage H) where
  asymptoticBoundClosed : R.asymptoticBound

def RationalPointsAsymptoticsClosed
    {H : HardyLittlewoodCircleMethodPackage}
    (R : RationalPointsAsymptoticsPackage H) : Prop :=
  R.asymptoticBound

theorem rational_points_asymptotics_closed_from_evidence
    {H : HardyLittlewoodCircleMethodPackage}
    (R : RationalPointsAsymptoticsPackage H)
    (E : RationalPointsAsymptoticsEvidence R) : RationalPointsAsymptoticsClosed R :=
  E.asymptoticBoundClosed

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse