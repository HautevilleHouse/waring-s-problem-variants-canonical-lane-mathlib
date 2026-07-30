import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure WaringSAdmittedObject where
  k : ℕ
  s : ℕ
  representationTheorem : Prop
  representationTheoremClosed : representationTheorem

def WaringSProjection : Projection WaringSAdmittedObject := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem waring_s_projection_idempotent (x : WaringSAdmittedObject) :
    WaringSProjection.toFun (WaringSProjection.toFun x) = WaringSProjection.toFun x := by
  exact WaringSProjection.idempotent x

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse