import WaringSProblemVariantsCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure WaringSProblemPackage where
  exponent : ℕ
  numberOfTerms : ℕ
  representationProperty : Prop
  asymptoticBound : Prop
  minimalRepresentation : Prop

structure WaringSProblemEvidence (W : WaringSProblemPackage) where
  representationPropertyClosed : W.representationProperty
  asymptoticBoundClosed : W.asymptoticBound
  minimalRepresentationClosed : W.minimalRepresentation

def WaringSProblemClosed (W : WaringSProblemPackage) : Prop :=
  W.representationProperty ∧ W.asymptoticBound ∧ W.minimalRepresentation

theorem waring_s_problem_closed_from_evidence
    (W : WaringSProblemPackage) (E : WaringSProblemEvidence W) :
    WaringSProblemClosed W := by
  exact And.intro E.representationPropertyClosed
    (And.intro E.asymptoticBoundClosed E.minimalRepresentationClosed)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse