#ifndef _ENDLOOP_INCLUDE_
#define _ENDLOOP_INCLUDE_
// ========== begin copyright notice ===================
// This file is part of
// ---------------
// xaifBooster
// ---------------
// which is distributed under the BSD license.
// The full COPYRIGHT notice can be found in the top
// level directory of the xaifBooster distribution.
// ========== end copyright notice =====================

#include "xaifBooster/system/inc/ControlFlowGraphVertex.hpp"

namespace xaifBooster { 

  /**
   * class EndLoop 
   */
  class EndLoop : public ControlFlowGraphVertex {
  public:
    
    EndLoop();

    ~EndLoop();

    void printXMLHierarchy(std::ostream& os) const;

    std::string debug() const ;

    /**
     * name for this class as represented in XAIF schema
     */
    static const std::string ourXAIFName;

    /**
     * name for inherited member myId as represented in XAIF schema
     */
    static const std::string our_myId_XAIFName;

    virtual ControlFlowGraphVertexKind::ControlFlowGraphVertexKind_E getKind() const { return ControlFlowGraphVertexKind::ENDLOOP_VKIND;}

  };
 
} // end of namespace xaifBooster
                                                                     
#endif
