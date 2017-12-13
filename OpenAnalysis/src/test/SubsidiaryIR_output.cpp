// /!\ ATTENTION:
//
//     THIS IS AN AUTOMATICALLY GENERATED FILE
//     CREATED BY THE genOutputMethod UTILITY.
//     DO NOT EDIT THIS FILE DIRECTLY AS IT WILL
//     BE OVERWRITTEN.

#include "SubsidiaryIR.hpp"

void SubsidiaryIR::output(OA::OA_ptr<OA::IRHandlesIRInterface> ir)
{
    sOutBuild->objStart("SubsidiaryIR");

    sOutBuild->mapStart("mProcString", "OA::ProcHandle", "std::string");
    std::map<OA::ProcHandle, std::string>::iterator reg_mProcString_iterator;
    for(reg_mProcString_iterator = mProcString.begin();
        reg_mProcString_iterator != mProcString.end();
        reg_mProcString_iterator++)
    {
        const OA::ProcHandle &first = reg_mProcString_iterator->first;
        std::string &second = reg_mProcString_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValue(second);
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mProcString");

    sOutBuild->mapStart("mStmtString", "OA::StmtHandle", "std::string");
    std::map<OA::StmtHandle, std::string>::iterator reg_mStmtString_iterator;
    for(reg_mStmtString_iterator = mStmtString.begin();
        reg_mStmtString_iterator != mStmtString.end();
        reg_mStmtString_iterator++)
    {
        const OA::StmtHandle &first = reg_mStmtString_iterator->first;
        std::string &second = reg_mStmtString_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValue(second);
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mStmtString");

    sOutBuild->mapStart("mMemRefString", "OA::MemRefHandle", "std::string");
    std::map<OA::MemRefHandle, std::string>::iterator reg_mMemRefString_iterator;
    for(reg_mMemRefString_iterator = mMemRefString.begin();
        reg_mMemRefString_iterator != mMemRefString.end();
        reg_mMemRefString_iterator++)
    {
        const OA::MemRefHandle &first = reg_mMemRefString_iterator->first;
        std::string &second = reg_mMemRefString_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValue(second);
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mMemRefString");

    sOutBuild->mapStart("mSymString", "OA::SymHandle", "std::string");
    std::map<OA::SymHandle, std::string>::iterator reg_mSymString_iterator;
    for(reg_mSymString_iterator = mSymString.begin();
        reg_mSymString_iterator != mSymString.end();
        reg_mSymString_iterator++)
    {
        const OA::SymHandle &first = reg_mSymString_iterator->first;
        std::string &second = reg_mSymString_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValue(second);
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mSymString");

    sOutBuild->mapStart("mExprString", "OA::ExprHandle", "std::string");
    std::map<OA::ExprHandle, std::string>::iterator reg_mExprString_iterator;
    for(reg_mExprString_iterator = mExprString.begin();
        reg_mExprString_iterator != mExprString.end();
        reg_mExprString_iterator++)
    {
        const OA::ExprHandle &first = reg_mExprString_iterator->first;
        std::string &second = reg_mExprString_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValue(second);
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mExprString");

    sOutBuild->mapStart("mOpString", "OA::OpHandle", "std::string");
    std::map<OA::OpHandle, std::string>::iterator reg_mOpString_iterator;
    for(reg_mOpString_iterator = mOpString.begin();
        reg_mOpString_iterator != mOpString.end();
        reg_mOpString_iterator++)
    {
        const OA::OpHandle &first = reg_mOpString_iterator->first;
        std::string &second = reg_mOpString_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValue(second);
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mOpString");

    sOutBuild->mapStart("mCallString", "OA::CallHandle", "std::string");
    std::map<OA::CallHandle, std::string>::iterator reg_mCallString_iterator;
    for(reg_mCallString_iterator = mCallString.begin();
        reg_mCallString_iterator != mCallString.end();
        reg_mCallString_iterator++)
    {
        const OA::CallHandle &first = reg_mCallString_iterator->first;
        std::string &second = reg_mCallString_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValue(second);
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mCallString");

    sOutBuild->mapStart("mConstValString", "OA::ConstValHandle", "std::string");
    std::map<OA::ConstValHandle, std::string>::iterator reg_mConstValString_iterator;
    for(reg_mConstValString_iterator = mConstValString.begin();
        reg_mConstValString_iterator != mConstValString.end();
        reg_mConstValString_iterator++)
    {
        const OA::ConstValHandle &first = reg_mConstValString_iterator->first;
        std::string &second = reg_mConstValString_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValue(second);
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mConstValString");

    sOutBuild->mapStart("mConstSymString", "OA::ConstSymHandle", "std::string");
    std::map<OA::ConstSymHandle, std::string>::iterator reg_mConstSymString_iterator;
    for(reg_mConstSymString_iterator = mConstSymString.begin();
        reg_mConstSymString_iterator != mConstSymString.end();
        reg_mConstSymString_iterator++)
    {
        const OA::ConstSymHandle &first = reg_mConstSymString_iterator->first;
        std::string &second = reg_mConstSymString_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValue(second);
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mConstSymString");

    sOutBuild->mapStart("mProcSym", "OA::ProcHandle", "OA::SymHandle");
    std::map<OA::ProcHandle, OA::SymHandle>::iterator reg_mProcSym_iterator;
    for(reg_mProcSym_iterator = mProcSym.begin();
        reg_mProcSym_iterator != mProcSym.end();
        reg_mProcSym_iterator++)
    {
        const OA::ProcHandle &first = reg_mProcSym_iterator->first;
        OA::SymHandle &second = reg_mProcSym_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValueStart();
        sOutBuild->outputIRHandle(second, ir);
        sOutBuild->mapValueEnd();
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mProcSym");

    sOutBuild->mapStart("mProcBody", "OA::ProcHandle", "std::list<OA::StmtHandle> ");
    std::map<OA::ProcHandle, std::list<OA::StmtHandle> >::iterator reg_mProcBody_iterator;
    for(reg_mProcBody_iterator = mProcBody.begin();
        reg_mProcBody_iterator != mProcBody.end();
        reg_mProcBody_iterator++)
    {
        const OA::ProcHandle &first = reg_mProcBody_iterator->first;
        std::list<OA::StmtHandle>  &second = reg_mProcBody_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValueStart();
        sOutBuild->listStart();
        std::list<OA::StmtHandle>::iterator reg_second_iterator;for(reg_second_iterator  = second.begin();
            reg_second_iterator != second.end();
            reg_second_iterator++)
        {OA::StmtHandle &item = *reg_second_iterator;
            sOutBuild->outputIRHandle(item, ir);
        }
        sOutBuild->listEnd();
        sOutBuild->mapValueEnd();
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mProcBody");

    sOutBuild->mapStart("mStmtMemRefAll", "OA::StmtHandle", "std::set<OA::MemRefHandle> ");
    std::map<OA::StmtHandle, std::set<OA::MemRefHandle> >::iterator reg_mStmtMemRefAll_iterator;
    for(reg_mStmtMemRefAll_iterator = mStmtMemRefAll.begin();
        reg_mStmtMemRefAll_iterator != mStmtMemRefAll.end();
        reg_mStmtMemRefAll_iterator++)
    {
        const OA::StmtHandle &first = reg_mStmtMemRefAll_iterator->first;
        std::set<OA::MemRefHandle>  &second = reg_mStmtMemRefAll_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValueStart();
        sOutBuild->listStart();
        std::set<OA::MemRefHandle>::iterator reg_second_iterator;
        for(reg_second_iterator  = second.begin();
            reg_second_iterator != second.end();
            reg_second_iterator++)
        {
            OA::MemRefHandle item = *reg_second_iterator;
            sOutBuild->listItemStart();
            sOutBuild->outputIRHandle(item, ir);
            sOutBuild->listItemEnd();
        }
        sOutBuild->listEnd();
        sOutBuild->mapValueEnd();
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mStmtMemRefAll");

    sOutBuild->mapStart("mStmtCallAll", "OA::StmtHandle", "std::set<OA::CallHandle> ");
    std::map<OA::StmtHandle, std::set<OA::CallHandle> >::iterator reg_mStmtCallAll_iterator;
    for(reg_mStmtCallAll_iterator = mStmtCallAll.begin();
        reg_mStmtCallAll_iterator != mStmtCallAll.end();
        reg_mStmtCallAll_iterator++)
    {
        const OA::StmtHandle &first = reg_mStmtCallAll_iterator->first;
        std::set<OA::CallHandle>  &second = reg_mStmtCallAll_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValueStart();
        sOutBuild->listStart();
        std::set<OA::CallHandle>::iterator reg_second_iterator;
        for(reg_second_iterator  = second.begin();
            reg_second_iterator != second.end();
            reg_second_iterator++)
        {
            OA::CallHandle item = *reg_second_iterator;
            sOutBuild->listItemStart();
            sOutBuild->outputIRHandle(item, ir);
            sOutBuild->listItemEnd();
        }
        sOutBuild->listEnd();
        sOutBuild->mapValueEnd();
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mStmtCallAll");

    sOutBuild->mapStart("mStmtPtrPairs", "OA::StmtHandle", "std::set<PtrPair> ");
    std::map<OA::StmtHandle, std::set<PtrPair> >::iterator reg_mStmtPtrPairs_iterator;
    for(reg_mStmtPtrPairs_iterator = mStmtPtrPairs.begin();
        reg_mStmtPtrPairs_iterator != mStmtPtrPairs.end();
        reg_mStmtPtrPairs_iterator++)
    {
        const OA::StmtHandle &first = reg_mStmtPtrPairs_iterator->first;
        std::set<PtrPair>  &second = reg_mStmtPtrPairs_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValueStart();
        sOutBuild->listStart();
        std::set<PtrPair>::iterator reg_second_iterator;
        for(reg_second_iterator  = second.begin();
            reg_second_iterator != second.end();
            reg_second_iterator++)
        {
            PtrPair item = *reg_second_iterator;
            sOutBuild->listItemStart();
            item.output(ir);
            sOutBuild->listItemEnd();
        }
        sOutBuild->listEnd();
        sOutBuild->mapValueEnd();
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mStmtPtrPairs");

    sOutBuild->mapStart("mParamBindPtrPairs", "OA::CallHandle", "std::map<int, OA::OA_ptr<OA::MemRefExpr> > ");
    std::map<OA::CallHandle, std::map<int, OA::OA_ptr<OA::MemRefExpr> > >::iterator reg_mParamBindPtrPairs_iterator;
    for(reg_mParamBindPtrPairs_iterator = mParamBindPtrPairs.begin();
        reg_mParamBindPtrPairs_iterator != mParamBindPtrPairs.end();
        reg_mParamBindPtrPairs_iterator++)
    {
        const OA::CallHandle &first = reg_mParamBindPtrPairs_iterator->first;
        std::map<int, OA::OA_ptr<OA::MemRefExpr> >  &second = reg_mParamBindPtrPairs_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValueStart();
        sOutBuild->mapStart("second", "int", "OA::OA_ptr<OA::MemRefExpr> ");
        std::map<int, OA::OA_ptr<OA::MemRefExpr> >::iterator reg_second_iterator;
        for(reg_second_iterator = second.begin();
            reg_second_iterator != second.end();
            reg_second_iterator++)
        {
            const int &first = reg_second_iterator->first;
            OA::OA_ptr<OA::MemRefExpr>  &second = reg_second_iterator->second;
            sOutBuild->mapEntryStart();
            sOutBuild->mapKey(OA::int2string(first));
            sOutBuild->mapValueStart();
            second->output(ir);
            sOutBuild->mapValueEnd();
            sOutBuild->mapEntryEnd();
        }
        sOutBuild->mapEnd("second");

        sOutBuild->mapValueEnd();
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mParamBindPtrPairs");

    sOutBuild->mapStart("mMemRefToMRE", "OA::MemRefHandle", "std::set<OA::OA_ptr<OA::MemRefExpr> > ");
    std::map<OA::MemRefHandle, std::set<OA::OA_ptr<OA::MemRefExpr> > >::iterator reg_mMemRefToMRE_iterator;
    for(reg_mMemRefToMRE_iterator = mMemRefToMRE.begin();
        reg_mMemRefToMRE_iterator != mMemRefToMRE.end();
        reg_mMemRefToMRE_iterator++)
    {
        const OA::MemRefHandle &first = reg_mMemRefToMRE_iterator->first;
        std::set<OA::OA_ptr<OA::MemRefExpr> >  &second = reg_mMemRefToMRE_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValueStart();
        sOutBuild->listStart();
        std::set<OA::OA_ptr<OA::MemRefExpr> >::iterator reg_second_iterator;
        for(reg_second_iterator  = second.begin();
            reg_second_iterator != second.end();
            reg_second_iterator++)
        {
            OA::OA_ptr<OA::MemRefExpr>  item = *reg_second_iterator;
            sOutBuild->listItemStart();
            item->output(ir);
            sOutBuild->listItemEnd();
        }
        sOutBuild->listEnd();
        sOutBuild->mapValueEnd();
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mMemRefToMRE");

    sOutBuild->mapStart("mCallToMRE", "OA::CallHandle", "OA::OA_ptr<OA::MemRefExpr> ");
    std::map<OA::CallHandle, OA::OA_ptr<OA::MemRefExpr> >::iterator reg_mCallToMRE_iterator;
    for(reg_mCallToMRE_iterator = mCallToMRE.begin();
        reg_mCallToMRE_iterator != mCallToMRE.end();
        reg_mCallToMRE_iterator++)
    {
        const OA::CallHandle &first = reg_mCallToMRE_iterator->first;
        OA::OA_ptr<OA::MemRefExpr>  &second = reg_mCallToMRE_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValueStart();
        second->output(ir);
        sOutBuild->mapValueEnd();
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mCallToMRE");

    sOutBuild->mapStart("mSymToLoc", "OA::ProcHandle", "std::map<OA::SymHandle, OA::OA_ptr<OA::Location> > ");
    std::map<OA::ProcHandle, std::map<OA::SymHandle, OA::OA_ptr<OA::Location> > >::iterator reg_mSymToLoc_iterator;
    for(reg_mSymToLoc_iterator = mSymToLoc.begin();
        reg_mSymToLoc_iterator != mSymToLoc.end();
        reg_mSymToLoc_iterator++)
    {
        const OA::ProcHandle &first = reg_mSymToLoc_iterator->first;
        std::map<OA::SymHandle, OA::OA_ptr<OA::Location> >  &second = reg_mSymToLoc_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValueStart();
        sOutBuild->mapStart("second", "OA::SymHandle", "OA::OA_ptr<OA::Location> ");
        std::map<OA::SymHandle, OA::OA_ptr<OA::Location> >::iterator reg_second_iterator;
        for(reg_second_iterator = second.begin();
            reg_second_iterator != second.end();
            reg_second_iterator++)
        {
            const OA::SymHandle &first = reg_second_iterator->first;
            OA::OA_ptr<OA::Location>  &second = reg_second_iterator->second;
            sOutBuild->mapEntryStart();
            sOutBuild->mapKeyStart();
            sOutBuild->outputIRHandle(first, ir);
            sOutBuild->mapKeyEnd();
            sOutBuild->mapValueStart();
            second->output(ir);
            sOutBuild->mapValueEnd();
            sOutBuild->mapEntryEnd();
        }
        sOutBuild->mapEnd("second");

        sOutBuild->mapValueEnd();
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mSymToLoc");

    sOutBuild->mapStart("mFormals", "OA::ProcHandle", "std::map<int, OA::SymHandle> ");
    std::map<OA::ProcHandle, std::map<int, OA::SymHandle> >::iterator reg_mFormals_iterator;
    for(reg_mFormals_iterator = mFormals.begin();
        reg_mFormals_iterator != mFormals.end();
        reg_mFormals_iterator++)
    {
        const OA::ProcHandle &first = reg_mFormals_iterator->first;
        std::map<int, OA::SymHandle>  &second = reg_mFormals_iterator->second;
        sOutBuild->mapEntryStart();
        sOutBuild->mapKeyStart();
        sOutBuild->outputIRHandle(first, ir);
        sOutBuild->mapKeyEnd();
        sOutBuild->mapValueStart();
        sOutBuild->mapStart("second", "int", "OA::SymHandle");
        std::map<int, OA::SymHandle>::iterator reg_second_iterator;
        for(reg_second_iterator = second.begin();
            reg_second_iterator != second.end();
            reg_second_iterator++)
        {
            const int &first = reg_second_iterator->first;
            OA::SymHandle &second = reg_second_iterator->second;
            sOutBuild->mapEntryStart();
            sOutBuild->mapKey(OA::int2string(first));
            sOutBuild->mapValueStart();
            sOutBuild->outputIRHandle(second, ir);
            sOutBuild->mapValueEnd();
            sOutBuild->mapEntryEnd();
        }
        sOutBuild->mapEnd("second");

        sOutBuild->mapValueEnd();
        sOutBuild->mapEntryEnd();
    }
    sOutBuild->mapEnd("mFormals");

    sOutBuild->objEnd("SubsidiaryIR");
}
