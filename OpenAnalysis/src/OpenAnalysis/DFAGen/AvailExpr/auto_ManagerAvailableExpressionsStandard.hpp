
/* ManagerAutoAvailableExpressionsStandard.hpp
   NOTE: This file was automatically generated by DFAGen.  It is the interface
         for the AvailableExpressions analysis manager.
*/

#ifndef ManagerAutoAvailableExpressionsStandard_H
#define ManagerAutoAvailableExpressionsStandard_H

//--------------------------------------------------------------------
// OpenAnalysis headers
#include <OpenAnalysis/Utils/OA_ptr.hpp>
#include <OpenAnalysis/IRInterface/auto_AvailableExpressionsIRInterface.hpp>
#include <OpenAnalysis/AvailableExpressions/auto_AvailableExpressionsStandard.hpp>

#include <OpenAnalysis/Alias/Interface.hpp>

#include <OpenAnalysis/DataFlow/CFGDFProblem.hpp>
#include <OpenAnalysis/Location/Location.hpp>
#include <OpenAnalysis/DataFlow/IRHandleDataFlowSet.hpp>
#include <OpenAnalysis/SideEffect/InterSideEffectInterface.hpp>
#include <OpenAnalysis/DataFlow/CFGDFSolver.hpp>

#include <OpenAnalysis/CFG/CFG.hpp>
#include <OpenAnalysis/CFG/CFGInterface.hpp>

namespace OA {
  namespace AvailableExpressions {


class ManagerAvailableExpressionsStandard
    : public virtual DataFlow::CFGDFProblem
{
  public:
    ManagerAvailableExpressionsStandard(OA_ptr<AvailableExpressionsIRInterface> _ir);
    ~ManagerAvailableExpressionsStandard () {}

    OA_ptr<AvailableExpressionsStandard> performAnalysis(
        ProcHandle proc,
        OA_ptr<CFG::CFGInterface> cfg,
        OA_ptr<Alias::Interface> alias,
        OA_ptr<SideEffect::InterSideEffectInterface> interSE);

  private:
    OA_ptr<DataFlow::DataFlowSet> initializeTop();
    OA_ptr<DataFlow::DataFlowSet> initializeBottom();

    OA_ptr<DataFlow::DataFlowSet>
       initializeNodeIN(OA_ptr<CFG::NodeInterface> n);

    OA_ptr<DataFlow::DataFlowSet>
       initializeNodeOUT(OA_ptr<CFG::NodeInterface> n);

    void dumpset(OA_ptr<AvailableExpressionsDFSet> inSet);

    OA_ptr<DataFlow::DataFlowSet> meet(
        OA_ptr<DataFlow::DataFlowSet> set1,
        OA_ptr<DataFlow::DataFlowSet> set2);

    OA_ptr<DataFlow::DataFlowSet> genSet(StmtHandle stmt);

    OA_ptr<DataFlow::DataFlowSet> killSet(StmtHandle stmt,
        OA_ptr<DataFlow::DataFlowSet> X);

    OA_ptr<DataFlow::DataFlowSet> transfer(
        OA_ptr<DataFlow::DataFlowSet> X,
        OA::StmtHandle Stmt);

    OA_ptr<AvailableExpressionsIRInterface> mIR;
    OA_ptr<Alias::Interface> mAlias;
    OA_ptr<AvailableExpressionsStandard> mAvailableExpressionsMap;
    OA_ptr<DataFlow::CFGDFSolver> mSolver;

    std::map<StmtHandle, set<OA_ptr<Location> > > mStmt2MayDefMap;
    std::map<StmtHandle, set<OA_ptr<Location> > > mStmt2MustDefMap;
    std::map<StmtHandle, set<OA_ptr<NewExprTree> > > mStmt2MayExprMap;
    std::map<StmtHandle, set<OA_ptr<NewExprTree> > > mStmt2MustExprMap;
    std::map<StmtHandle, set<OA_ptr<Location> > > mStmt2MayUseMap;
    std::map<StmtHandle, set<OA_ptr<Location> > > mStmt2MustUseMap;
};

  } // end of AvailableExpressions namespace
} // end of OA namespace

#endif
