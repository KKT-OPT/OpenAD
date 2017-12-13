#ifndef _XAIFBOOSTERMEMOPSTRADEOFFPREACCUMULATION_ALGFACTORYMANAGER_INCLUDE_
#define _XAIFBOOSTERMEMOPSTRADEOFFPREACCUMULATION_ALGFACTORYMANAGER_INCLUDE_
// ========== begin copyright notice ===================
// This file is part of
// ---------------
// xaifBooster
// ---------------
// which is distributed under the BSD license.
// The full COPYRIGHT notice can be found in the top
// level directory of the xaifBooster distribution.
// ========== end copyright notice =====================

#include "xaifBooster/algorithms/BasicBlockPreaccumulation/inc/AlgFactoryManager.hpp"

namespace xaifBoosterMemOpsTradeoffPreaccumulation { 

  /** 
   * the singleton class for 
   * setting algorithm factory pointers
   */
  class AlgFactoryManager : public xaifBoosterBasicBlockPreaccumulation::AlgFactoryManager { 

  public: 

    static xaifBooster::AlgFactoryManager* instance();

    virtual void resets(); 

    virtual void init(); 

  }; // end of class AlgFactoryManager

}

#endif
