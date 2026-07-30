import WaringSProblemVariantsCanonicalLaneLean.SumOfPowersPackage

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure MinimalRepresentationPackage {W : WaringSProblemPackage}
    (S : SumOfPowersPackage W) where
  minimalTermCount : ℕ
  representationExists : Prop
  uniquenessUpToPermutation : Prop
  boundTight : Prop

structure MinimalRepresentationEvidence {W : WaringSProblemPackage}
    {S : SumOfPowersPackage W} (M : MinimalRepresentationPackage S) where
  representationExistsClosed : M.representationExists
  uniquenessUpToPermutationClosed : M.uniquenessUpToPermutation
  boundTightClosed : M.boundTight

def MinimalRepresentationClosed {W : WaringSProblemPackage}
    {S : SumOfPowersPackage W} (M : MinimalRepresentationPackage S) : Prop :=
  M.representationExists ∧ M.uniquenessUpToPermutation ∧ M.boundTight

theorem minimal_representation_closed_from_evidence
    {W : WaringSProblemPackage} {S : SumOfPowersPackage W}
    (M : MinimalRepresentationPackage S) (E : MinimalRepresentationEvidence M) :
    MinimalRepresentationClosed M := by
  exact And.intro E.representationExistsClosed
    (And.intro E.uniquenessUpToPermutationClosed E.boundTightClosed)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse