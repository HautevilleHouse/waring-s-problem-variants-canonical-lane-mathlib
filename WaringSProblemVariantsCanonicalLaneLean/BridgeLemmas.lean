import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WaringWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse