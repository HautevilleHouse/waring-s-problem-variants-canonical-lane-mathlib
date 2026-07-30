import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure HardyLittlewoodCircleMethodPackage where
  exponentialSum : ℕ → ℂ
  majorArcs : Prop
  minorArcs : Prop
  singularIntegral : ℂ
  asymptoticFormula : Prop

structure HardyLittlewoodEvidence (H : HardyLittlewoodCircleMethodPackage) where
  majorArcsClosed : H.majorArcs
  minorArcsClosed : H.minorArcs
  asymptoticFormulaClosed : H.asymptoticFormula

def HardyLittlewoodClosed (H : HardyLittlewoodCircleMethodPackage) : Prop :=
  H.majorArcs ∧ H.minorArcs ∧ H.asymptoticFormula

theorem hardy_littlewood_closed_from_evidence (H : HardyLittlewoodCircleMethodPackage)
    (E : HardyLittlewoodEvidence H) : HardyLittlewoodClosed H :=
  And.intro E.majorArcsClosed (And.intro E.minorArcsClosed E.asymptoticFormulaClosed)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse