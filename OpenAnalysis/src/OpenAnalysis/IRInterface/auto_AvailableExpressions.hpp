#ifndef AvailableExpressionsIRInterface_H
#define AvailableExpressionsIRInterface_H

#include <iostream>
#include <list>
#include <string>
#include <OpenAnalysis/Utils/OA_ptr.hpp>
#include <OpenAnalysis/IRInterface/IRHandles.hpp>
#include <OpenAnalysis/NewExprTree/NewExprTree.hpp>

namespace OA {
  namespace AvailableExpressions {

class AvailableExpressionsIRInterface : public virtual IRHandlesIRInterface {
  public:
    AvailableExpressionsIRInterface() { }
    virtual ~AvailableExpressionsIRInterface() { }

    virtual OA_ptr<IRStmtIterator> getStmtIterator(ProcHandle h) = 0;

    virtual OA_ptr<MemRefHandleIterator> getAllMemRefs(StmtHandle stmt) = 0;

    virtual OA_ptr<MemRefHandleIterator> getDefMemRefs(StmtHandle stmt) = 0;

    virtual OA_ptr<MemRefHandleIterator> getUseMemRefs(StmtHandle stmt) = 0;

    virtual OA_ptr<IRCallsiteIterator> getCallsites(StmtHandle h) = 0;

    virtual OA_ptr<NewExprTree> getNewExprTree(OA::ExprHandle h) = 0;
};

  } // end of namespace AvailableExpressions
} // end of namespace OA

#endif
