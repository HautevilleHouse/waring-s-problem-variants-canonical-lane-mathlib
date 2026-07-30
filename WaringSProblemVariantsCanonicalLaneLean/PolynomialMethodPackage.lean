import WaringSProblemVariantsCanonicalLaneLean.AsymptoticBoundsPackage

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure PolynomialMethodPackage {W : WaringSProblemPackage}
    {S : SumOfPowersPackage W} {M : MinimalRepresentationPackage S}
    {A : AsymptoticBoundsPackage M} where
  polynomialIdentity : Prop
  substitutionMethod : Prop
  coefficientBounds : Prop
  mainTheoremDerived : Prop

structure PolynomialMethodEvidence {W : WaringSProblemPackage}
    {S : SumOfPowersPackage W} {M : MinimalRepresentationPackage S}
    {A : AsymptoticBoundsPackage M} (P : PolynomialMethodPackage A) where
  polynomialIdentityClosed : P.polynomialIdentity
  substitutionMethodClosed : P.substitutionMethod
  coefficientBoundsClosed : P.coefficientBounds
  mainTheoremDerivedClosed : P.mainTheoremDerived

def PolynomialMethodClosed {W : WaringSProblemPackage}
    {S : SumOfPowersPackage W} {M : MinimalRepresentationPackage S}
    {A : AsymptoticBoundsPackage M} (P : PolynomialMethodPackage A) : Prop :=
  P.polynomialIdentity ∧ P.substitutionMethod ∧ P.coefficientBounds ∧ P.mainTheoremDerived

theorem polynomial_method_closed_from_evidence
    {W : WaringSProblemPackage} {S : SumOfPowersPackage W}
    {M : MinimalRepresentationPackage S} {A : AsymptoticBoundsPackage M}
    (P : PolynomialMethodPackage A) (E : PolynomialMethodEvidence P) :
    PolynomialMethodClosed P := by
  exact And.intro E.polynomialIdentityClosed
    (And.intro E.substitutionMethodClosed
      (And.intro E.coefficientBoundsClosed E.mainTheoremDerivedClosed))

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse