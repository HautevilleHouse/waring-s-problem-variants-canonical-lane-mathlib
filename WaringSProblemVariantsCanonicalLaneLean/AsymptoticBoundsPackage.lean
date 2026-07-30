import WaringSProblemVariantsCanonicalLaneLean.MinimalRepresentationPackage

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure AsymptoticBoundsPackage {W : WaringSProblemPackage}
    {S : SumOfPowersPackage W} {M : MinimalRepresentationPackage S} where
  gFunction : Type u
  asymptoticFormula : Prop
  growthRate : Prop
  errorTerm : Prop

structure AsymptoticBoundsEvidence {W : WaringSProblemPackage}
    {S : SumOfPowersPackage W} {M : MinimalRepresentationPackage S}
    (A : AsymptoticBoundsPackage M) where
  asymptoticFormulaClosed : A.asymptoticFormula
  growthRateClosed : A.growthRate
  errorTermClosed : A.errorTerm

def AsymptoticBoundsClosed {W : WaringSProblemPackage}
    {S : SumOfPowersPackage W} {M : MinimalRepresentationPackage S}
    (A : AsymptoticBoundsPackage M) : Prop :=
  A.asymptoticFormula ∧ A.growthRate ∧ A.errorTerm

theorem asymptotic_bounds_closed_from_evidence
    {W : WaringSProblemPackage} {S : SumOfPowersPackage W}
    {M : MinimalRepresentationPackage S} (A : AsymptoticBoundsPackage M)
    (E : AsymptoticBoundsEvidence A) : AsymptoticBoundsClosed A := by
  exact And.intro E.asymptoticFormulaClosed
    (And.intro E.growthRateClosed E.errorTermClosed)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse