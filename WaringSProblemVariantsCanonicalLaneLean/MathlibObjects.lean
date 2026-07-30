import WaringSProblemVariantsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure WaringSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WaringAdmittedObject where
  space : WaringSpace
  finiteSetRepresentations : Prop
  minimalRepresentationExists : Prop
  representationModel : Type
  representationTopology : TopologicalSpace representationModel
  boundAchieved : Prop
  conclusion : boundAchieved

structure WaringEndgameState where
  object : WaringAdmittedObject

def WaringWitnessClosed (O : WaringAdmittedObject) : Prop :=
  O.boundAchieved

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse