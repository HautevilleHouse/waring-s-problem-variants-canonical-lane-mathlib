import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaringSProblemVariantsCanonicalLaneLean

def bridgeClosed (A : WaringAdmissibleClass) : Prop :=
  A.object.condition

theorem bridge_from_admissible_class (A : WaringAdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end WaringSProblemVariantsCanonicalLaneLean
end HautevilleHouse