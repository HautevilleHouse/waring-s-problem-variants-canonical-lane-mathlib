import WaringSProblemVariantsCanonicalLaneLean.WaringSProblemPackage

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure SumOfPowersPackage (W : WaringSProblemPackage) where
  finiteSetOfSums : Type u
  sumRepresentation : Prop
  countingFunction : Type v
  asymptoticEstimate : Prop

structure SumOfPowersEvidence {W : WaringSProblemPackage} (S : SumOfPowersPackage W) where
  sumRepresentationClosed : S.sumRepresentation
  asymptoticEstimateClosed : S.asymptoticEstimate

def SumOfPowersClosed {W : WaringSProblemPackage} (S : SumOfPowersPackage W) : Prop :=
  S.sumRepresentation ∧ S.asymptoticEstimate

theorem sum_of_powers_closed_from_evidence
    {W : WaringSProblemPackage} (S : SumOfPowersPackage W) (E : SumOfPowersEvidence S) :
    SumOfPowersClosed S := by
  exact And.intro E.sumRepresentationClosed E.asymptoticEstimateClosed

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse