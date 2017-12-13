/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * $Id: ConditionToken.cpp,v 1.1 2008/02/19 19:02:23 utke Exp $
 */

// ---------------------------------------------------------------------------
//  Includes
// ---------------------------------------------------------------------------
#include <xercesc/util/regx/ConditionToken.hpp>

XERCES_CPP_NAMESPACE_BEGIN

// ---------------------------------------------------------------------------
//  ConditionToken: Constructors and Destructors
// ---------------------------------------------------------------------------
ConditionToken::ConditionToken(const unsigned int refNo, Token* const condTok,
                               Token* const yesTok, Token* const noTok, MemoryManager* const manager)
    : Token(Token::T_CONDITION, manager)
    , fRefNo(refNo)
    , fConditionToken(condTok)
    , fYesToken(yesTok)
    , fNoToken(noTok)
{

}


ConditionToken::~ConditionToken() {

}

XERCES_CPP_NAMESPACE_END

/**
  *	End of file ConditionToken.cpp
  */
