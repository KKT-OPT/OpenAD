// ========== begin copyright notice ===================
// This file is part of
// ---------------
// xaifBooster
// ---------------
// which is distributed under the BSD license.
// The full COPYRIGHT notice can be found in the top
// level directory of the xaifBooster distribution.
// ========== end copyright notice =====================

#include "xaifBooster/algorithms/BasicBlockPreaccumulationTape/inc/SequenceFactory.hpp"

namespace xaifBoosterBasicBlockPreaccumulationTape {

  Sequence*
  SequenceFactory::makeNewSequence() {
    return new Sequence();
  }

  std::string
  SequenceFactory::debug() const {
    std::ostringstream out;
    out << "xaifBoosterBasicBlockPreaccumulationTape::"
	<< "SequenceFactory[" << this
	<< "]" << std::ends;
    return out.str();
  }

}
