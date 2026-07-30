import WaringSProblemVariantsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def waringProjection : Projection WaringEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl
  }

theorem waring_projection_idempotent (x : WaringEndgameState) :
    waringProjection.toFun (waringProjection.toFun x) = waringProjection.toFun x := by
  exact waringProjection.idempotent x

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse