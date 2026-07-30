import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure WaringGoldbachPackage where
  exponent : Nat
  numberOfPrimes : Nat
  representationsByPrimes : Prop
  asymptoticForPrimes : Prop
  exceptionalSetBound : Prop

structure WaringGoldbachEvidence (W : WaringGoldbachPackage) where
  representationsByPrimesClosed : W.representationsByPrimes
  asymptoticForPrimesClosed : W.asymptoticForPrimes
  exceptionalSetBoundClosed : W.exceptionalSetBound

def WaringGoldbachClosed (W : WaringGoldbachPackage) : Prop :=
  W.representationsByPrimes ∧ W.asymptoticForPrimes ∧ W.exceptionalSetBound

theorem waring_goldbach_closed_from_evidence (W : WaringGoldbachPackage)
    (E : WaringGoldbachEvidence W) : WaringGoldbachClosed W := by
  exact And.intro E.representationsByPrimesClosed
    (And.intro E.asymptoticForPrimesClosed E.exceptionalSetBoundClosed)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse