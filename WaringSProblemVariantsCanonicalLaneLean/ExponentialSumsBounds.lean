import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

structure ExponentialSumBoundPackage where
  exponent : Nat
  modulus : Nat
  weylSumBound : Prop
  vaughanIdentityApplied : Prop
  meanValueEstimate : Prop

structure ExponentialSumBoundEvidence (E : ExponentialSumBoundPackage) where
  weylSumBoundClosed : E.weylSumBound
  vaughanIdentityAppliedClosed : E.vaughanIdentityApplied
  meanValueEstimateClosed : E.meanValueEstimate

def ExponentialSumBoundClosed (E : ExponentialSumBoundPackage) : Prop :=
  E.weylSumBound ∧ E.vaughanIdentityApplied ∧ E.meanValueEstimate

theorem exponential_sum_bound_closed_from_evidence (E : ExponentialSumBoundPackage)
    (Ev : ExponentialSumBoundEvidence E) : ExponentialSumBoundClosed E := by
  exact And.intro Ev.weylSumBoundClosed
    (And.intro Ev.vaughanIdentityAppliedClosed Ev.meanValueEstimateClosed)

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse