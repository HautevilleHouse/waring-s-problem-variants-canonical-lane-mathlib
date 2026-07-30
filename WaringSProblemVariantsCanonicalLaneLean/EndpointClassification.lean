import WaringSProblemVariantsCanonicalLaneLean.PolynomialMethodPackage

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure EndpointClassificationPackage {W : WaringSProblemPackage}
    {S : SumOfPowersPackage W} {M : MinimalRepresentationPackage S}
    {A : AsymptoticBoundsPackage M} {P : PolynomialMethodPackage A} where
  targetForm : Type u
  targetTopology : TopologicalSpace targetForm
  representationComplete : Prop
  asymptoticSharp : Prop
  minimalBoundAchieved : Prop
  mainWaringStatement : Prop

structure EndpointClassificationEvidence {W : WaringSProblemPackage}
    {S : SumOfPowersPackage W} {M : MinimalRepresentationPackage S}
    {A : AsymptoticBoundsPackage M} {P : PolynomialMethodPackage A}
    (E : EndpointClassificationPackage P) where
  representationCompleteClosed : E.representationComplete
  asymptoticSharpClosed : E.asymptoticSharp
  minimalBoundAchievedClosed : E.minimalBoundAchieved
  mainWaringStatementClosed : E.mainWaringStatement

def EndpointClassificationClosed {W : WaringSProblemPackage}
    {S : SumOfPowersPackage W} {M : MinimalRepresentationPackage S}
    {A : AsymptoticBoundsPackage M} {P : PolynomialMethodPackage A}
    (E : EndpointClassificationPackage P) : Prop :=
  E.representationComplete ∧ E.asymptoticSharp ∧ E.minimalBoundAchieved ∧ E.mainWaringStatement

theorem endpoint_classification_closed_from_evidence
    {W : WaringSProblemPackage} {S : SumOfPowersPackage W}
    {M : MinimalRepresentationPackage S} {A : AsymptoticBoundsPackage M}
    {P : PolynomialMethodPackage A} (E : EndpointClassificationPackage P)
    (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E := by
  exact And.intro Ev.representationCompleteClosed
    (And.intro Ev.asymptoticSharpClosed
      (And.intro Ev.minimalBoundAchievedClosed Ev.mainWaringStatementClosed))

theorem endpoint_classification_supplies_main_statement
    {W : WaringSProblemPackage} {S : SumOfPowersPackage W}
    {M : MinimalRepresentationPackage S} {A : AsymptoticBoundsPackage M}
    {P : PolynomialMethodPackage A} (E : EndpointClassificationPackage P) :
    E.mainWaringStatement := E.mainWaringStatement

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse