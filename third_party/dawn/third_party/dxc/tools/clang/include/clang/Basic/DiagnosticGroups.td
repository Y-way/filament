//==--- DiagnosticGroups.td - Diagnostic Group Definitions ----------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

def ImplicitFunctionDeclare : DiagGroup<"implicit-function-declaration">;
def ImplicitInt : DiagGroup<"implicit-int">;

// Aggregation warning settings.
def Implicit : DiagGroup<"implicit", [
    ImplicitFunctionDeclare,
    ImplicitInt
]>;

// Empty DiagGroups are recognized by clang but ignored.
def : DiagGroup<"abi">;
def AbsoluteValue : DiagGroup<"absolute-value">;
def AddressOfTemporary : DiagGroup<"address-of-temporary">;
def : DiagGroup<"aggregate-return">;
def GNUAlignofExpression : DiagGroup<"gnu-alignof-expression">;
def AmbigMemberTemplate : DiagGroup<"ambiguous-member-template">;
def GNUAnonymousStruct : DiagGroup<"gnu-anonymous-struct">;
def ArrayBounds : DiagGroup<"array-bounds">;
def ArrayBoundsPointerArithmetic : DiagGroup<"array-bounds-pointer-arithmetic">;
def Availability : DiagGroup<"availability">;
def Section : DiagGroup<"section">;
def AutoImport : DiagGroup<"auto-import">;
def GNUBinaryLiteral : DiagGroup<"gnu-binary-literal">;
def GNUCompoundLiteralInitializer : DiagGroup<"gnu-compound-literal-initializer">;
def BitFieldConstantConversion : DiagGroup<"bitfield-constant-conversion">;
def ConstantConversion :
  DiagGroup<"constant-conversion", [ BitFieldConstantConversion ] >;
def LiteralConversion : DiagGroup<"literal-conversion">;
def StringConversion : DiagGroup<"string-conversion">;
def SignConversion : DiagGroup<"sign-conversion">;
def PointerBoolConversion : DiagGroup<"pointer-bool-conversion">;
def UndefinedBoolConversion : DiagGroup<"undefined-bool-conversion">;
def BoolConversion : DiagGroup<"bool-conversion", [PointerBoolConversion,
                                                   UndefinedBoolConversion]>;
def IntConversion : DiagGroup<"int-conversion">;
def EnumConversion : DiagGroup<"enum-conversion">;
def FloatConversion : DiagGroup<"float-conversion">;
def DoublePromotion : DiagGroup<"double-promotion">; // HLSL Change - backport.
def EnumTooLarge : DiagGroup<"enum-too-large">;
def UnsupportedNan : DiagGroup<"unsupported-nan">;
def NonLiteralNullConversion : DiagGroup<"non-literal-null-conversion">;
def NullConversion : DiagGroup<"null-conversion">;
def ImplicitConversionFloatingPointToBool :
  DiagGroup<"implicit-conversion-floating-point-to-bool">;
def ObjCLiteralConversion : DiagGroup<"objc-literal-conversion">;
def BadArrayNewLength : DiagGroup<"bad-array-new-length">;
def MacroRedefined : DiagGroup<"macro-redefined">;
def BuiltinMacroRedefined : DiagGroup<"builtin-macro-redefined">;
def BuiltinRequiresHeader : DiagGroup<"builtin-requires-header">;
def C99Compat : DiagGroup<"c99-compat">;
def CXXCompat: DiagGroup<"c++-compat">;
def ExternCCompat : DiagGroup<"extern-c-compat">;
def KeywordCompat : DiagGroup<"keyword-compat">;
def GNUCaseRange : DiagGroup<"gnu-case-range">;
def CastAlign : DiagGroup<"cast-align">;
def CastQual : DiagGroup<"cast-qual">;
def : DiagGroup<"char-align">;
def Comment : DiagGroup<"comment">;
def GNUComplexInteger : DiagGroup<"gnu-complex-integer">;
def GNUConditionalOmittedOperand : DiagGroup<"gnu-conditional-omitted-operand">;
def ConfigMacros : DiagGroup<"config-macros">;
def : DiagGroup<"ctor-dtor-privacy">;
def GNUDesignator : DiagGroup<"gnu-designator">;
def GNUStringLiteralOperatorTemplate :
  DiagGroup<"gnu-string-literal-operator-template">;

def DeleteIncomplete : DiagGroup<"delete-incomplete">;
def DeleteNonVirtualDtor : DiagGroup<"delete-non-virtual-dtor">;
def AbstractFinalClass : DiagGroup<"abstract-final-class">;

def CXX11CompatDeprecatedWritableStr :
  DiagGroup<"c++11-compat-deprecated-writable-strings">;

def DeprecatedDeclarations : DiagGroup<"deprecated-declarations">;
def UnavailableDeclarations : DiagGroup<"unavailable-declarations">;
def PartialAvailability : DiagGroup<"partial-availability">;
def DeprecatedImplementations :DiagGroup<"deprecated-implementations">;
def DeprecatedIncrementBool : DiagGroup<"deprecated-increment-bool">;
def DeprecatedRegister : DiagGroup<"deprecated-register">;
def DeprecatedWritableStr : DiagGroup<"deprecated-writable-strings",
                                      [CXX11CompatDeprecatedWritableStr]>;
// FIXME: Why is DeprecatedImplementations not in this group?
def Deprecated : DiagGroup<"deprecated", [DeprecatedDeclarations,
                                          DeprecatedIncrementBool,
                                          DeprecatedRegister,
                                          DeprecatedWritableStr]>,
                 DiagCategory<"Deprecations">;

def : DiagGroup<"disabled-optimization">;
def : DiagGroup<"discard-qual">;
def : DiagGroup<"div-by-zero">;

def DocumentationHTML : DiagGroup<"documentation-html">;
def DocumentationUnknownCommand : DiagGroup<"documentation-unknown-command">;
def DocumentationPedantic : DiagGroup<"documentation-pedantic",
                                      [DocumentationUnknownCommand]>;
def DocumentationDeprecatedSync : DiagGroup<"documentation-deprecated-sync">;
def Documentation : DiagGroup<"documentation",
                              [DocumentationHTML,
                               DocumentationDeprecatedSync]>;

def EmptyBody : DiagGroup<"empty-body">;
def Exceptions : DiagGroup<"exceptions">;

def GNUEmptyInitializer : DiagGroup<"gnu-empty-initializer">;
def GNUEmptyStruct : DiagGroup<"gnu-empty-struct">;
def ExtraTokens : DiagGroup<"extra-tokens">;
def CXX11ExtraSemi : DiagGroup<"c++11-extra-semi">;
def ExtraSemi : DiagGroup<"extra-semi", [CXX11ExtraSemi]>;

def GNUFlexibleArrayInitializer : DiagGroup<"gnu-flexible-array-initializer">;
def GNUFlexibleArrayUnionMember : DiagGroup<"gnu-flexible-array-union-member">;
def GNUFoldingConstant : DiagGroup<"gnu-folding-constant">;
def FormatExtraArgs : DiagGroup<"format-extra-args">;
def FormatZeroLength : DiagGroup<"format-zero-length">;

// Warnings for C++1y code which is not compatible with prior C++ standards.
def CXXPre14Compat : DiagGroup<"c++98-c++11-compat">;
def CXXPre14CompatPedantic : DiagGroup<"c++98-c++11-compat-pedantic",
                                       [CXXPre14Compat]>;
def CXXPre1zCompat : DiagGroup<"c++98-c++11-c++14-compat">;
def CXXPre1zCompatPedantic : DiagGroup<"c++98-c++11-c++14-compat-pedantic",
                                       [CXXPre1zCompat]>;

def CXX98CompatBindToTemporaryCopy :
  DiagGroup<"c++98-compat-bind-to-temporary-copy">;
def CXX98CompatLocalTypeTemplateArgs :
  DiagGroup<"c++98-compat-local-type-template-args">;
def CXX98CompatUnnamedTypeTemplateArgs :
  DiagGroup<"c++98-compat-unnamed-type-template-args">;

def CXX98Compat : DiagGroup<"c++98-compat",
                            [CXX98CompatLocalTypeTemplateArgs,
                             CXX98CompatUnnamedTypeTemplateArgs,
                             CXXPre14Compat,
                             CXXPre1zCompat]>;
// Warnings for C++11 features which are Extensions in C++98 mode.
def CXX98CompatPedantic : DiagGroup<"c++98-compat-pedantic",
                                    [CXX98Compat,
                                     CXX98CompatBindToTemporaryCopy,
                                     CXXPre14CompatPedantic,
                                     CXXPre1zCompatPedantic]>;

def CXX11Narrowing : DiagGroup<"c++11-narrowing">;

def CXX11WarnOverrideMethod : DiagGroup<"inconsistent-missing-override">;

// Original name of this warning in Clang
def : DiagGroup<"c++0x-narrowing", [CXX11Narrowing]>;

// Name of this warning in GCC
def : DiagGroup<"narrowing", [CXX11Narrowing]>;

def CXX11CompatReservedUserDefinedLiteral :
  DiagGroup<"c++11-compat-reserved-user-defined-literal">;
def ReservedUserDefinedLiteral :
  DiagGroup<"reserved-user-defined-literal",
            [CXX11CompatReservedUserDefinedLiteral]>;

def CXX11Compat : DiagGroup<"c++11-compat",
                            [CXX11Narrowing,
                             CXX11CompatReservedUserDefinedLiteral,
                             CXX11CompatDeprecatedWritableStr,
                             CXXPre14Compat,
                             CXXPre1zCompat]>;
def : DiagGroup<"c++0x-compat", [CXX11Compat]>;
def CXX11CompatPedantic : DiagGroup<"c++11-compat-pedantic",
                                    [CXXPre14CompatPedantic,
                                     CXXPre1zCompatPedantic]>;

def CXX14Compat : DiagGroup<"c++14-compat", [CXXPre1zCompat]>;
def CXX14CompatPedantic : DiagGroup<"c++14-compat-pedantic",
                                    [CXXPre1zCompatPedantic]>;

def : DiagGroup<"effc++">;
def DivZero : DiagGroup<"division-by-zero">;
def ExitTimeDestructors : DiagGroup<"exit-time-destructors">;
def FlexibleArrayExtensions : DiagGroup<"flexible-array-extensions">;
def FourByteMultiChar : DiagGroup<"four-char-constants">;
def GlobalConstructors : DiagGroup<"global-constructors">;
def BitwiseOpParentheses: DiagGroup<"bitwise-op-parentheses">;
def LogicalOpParentheses: DiagGroup<"logical-op-parentheses">;
def LogicalNotParentheses: DiagGroup<"logical-not-parentheses">;
def ShiftOpParentheses: DiagGroup<"shift-op-parentheses">;
def OverloadedShiftOpParentheses: DiagGroup<"overloaded-shift-op-parentheses">;
def DanglingElse: DiagGroup<"dangling-else">;
def DanglingField : DiagGroup<"dangling-field">;
def DistributedObjectModifiers : DiagGroup<"distributed-object-modifiers">;
def FlagEnum : DiagGroup<"flag-enum">;
def InfiniteRecursion : DiagGroup<"infinite-recursion">;
def GNUImaginaryConstant : DiagGroup<"gnu-imaginary-constant">;
def IgnoredQualifiers : DiagGroup<"ignored-qualifiers">;
def : DiagGroup<"import">;
def IncompatibleMSStruct : DiagGroup<"incompatible-ms-struct">;
def IncompatiblePointerTypesDiscardsQualifiers 
  : DiagGroup<"incompatible-pointer-types-discards-qualifiers">;
def IncompatiblePointerTypes
  : DiagGroup<"incompatible-pointer-types",
    [IncompatiblePointerTypesDiscardsQualifiers]>;
def IncompleteUmbrella : DiagGroup<"incomplete-umbrella">;
def NonModularIncludeInFrameworkModule
  : DiagGroup<"non-modular-include-in-framework-module">;
def NonModularIncludeInModule : DiagGroup<"non-modular-include-in-module",
                                          [NonModularIncludeInFrameworkModule]>;
def IncompleteModule : DiagGroup<"incomplete-module",
    [IncompleteUmbrella, NonModularIncludeInModule]>;

def InvalidNoreturn : DiagGroup<"invalid-noreturn">;
def InvalidSourceEncoding : DiagGroup<"invalid-source-encoding">;
def KNRPromotedParameter : DiagGroup<"knr-promoted-parameter">;
def : DiagGroup<"init-self">;
def : DiagGroup<"inline">;
def : DiagGroup<"invalid-pch">;
def GNULabelsAsValue : DiagGroup<"gnu-label-as-value">;
def LiteralRange : DiagGroup<"literal-range">;
def LocalTypeTemplateArgs : DiagGroup<"local-type-template-args",
                                      [CXX98CompatLocalTypeTemplateArgs]>;
def RangeLoopAnalysis : DiagGroup<"range-loop-analysis">;
def ForLoopAnalysis : DiagGroup<"for-loop-analysis">;
def LoopAnalysis : DiagGroup<"loop-analysis", [ForLoopAnalysis,
                                               RangeLoopAnalysis]>;
def MalformedWarningCheck : DiagGroup<"malformed-warning-check">;
def Main : DiagGroup<"main">;
def MainReturnType : DiagGroup<"main-return-type">;
def MissingBraces : DiagGroup<"missing-braces">;
def MissingDeclarations: DiagGroup<"missing-declarations">;
def : DiagGroup<"missing-format-attribute">;
def : DiagGroup<"missing-include-dirs">;
def MissingNoreturn : DiagGroup<"missing-noreturn">;
def MultiChar : DiagGroup<"multichar">;
def : DiagGroup<"nested-externs">;
def CXX11LongLong : DiagGroup<"c++11-long-long">;
def LongLong : DiagGroup<"long-long", [CXX11LongLong]>;
def ImplicitlyUnsignedLiteral : DiagGroup<"implicitly-unsigned-literal">;
def MethodSignatures : DiagGroup<"method-signatures">;
def MismatchedParameterTypes : DiagGroup<"mismatched-parameter-types">;
def MismatchedReturnTypes : DiagGroup<"mismatched-return-types">;
def MismatchedTags : DiagGroup<"mismatched-tags">;
def MissingFieldInitializers : DiagGroup<"missing-field-initializers">;
def ModuleBuild : DiagGroup<"module-build">;
def ModuleConflict : DiagGroup<"module-conflict">;
def NewlineEOF : DiagGroup<"newline-eof">;
def Nullability : DiagGroup<"nullability">;
def NullabilityDeclSpec : DiagGroup<"nullability-declspec">;
def NullableToNonNullConversion : DiagGroup<"nullable-to-nonnull-conversion">;
def NullabilityCompleteness : DiagGroup<"nullability-completeness">;
def NullArithmetic : DiagGroup<"null-arithmetic">;
def NullCharacter : DiagGroup<"null-character">;
def NullDereference : DiagGroup<"null-dereference">;
def InitializerOverrides : DiagGroup<"initializer-overrides">;
def NonNull : DiagGroup<"nonnull">;
def NonPODVarargs : DiagGroup<"non-pod-varargs">;
def ClassVarargs : DiagGroup<"class-varargs", [NonPODVarargs]>;
def : DiagGroup<"nonportable-cfstrings">;
def NonVirtualDtor : DiagGroup<"non-virtual-dtor">;
def OveralignedType : DiagGroup<"over-aligned">;
def OldStyleCast : DiagGroup<"old-style-cast">;
def : DiagGroup<"old-style-definition">;
def OutOfLineDeclaration : DiagGroup<"out-of-line-declaration">;
def : DiagGroup<"overflow">;
def ForwardClassReceiver : DiagGroup<"receiver-forward-class">;
def MethodAccess : DiagGroup<"objc-method-access">;
def ObjCReceiver : DiagGroup<"receiver-expr">;
// FIXME: Remove this when Xcode removes the warning setting.
def : DiagGroup<"receiver-is-weak">;
def OperatorNewReturnsNull : DiagGroup<"new-returns-null">;
def OverlengthStrings : DiagGroup<"overlength-strings">;
def OverloadedVirtual : DiagGroup<"overloaded-virtual">;
def PrivateExtern : DiagGroup<"private-extern">;
def SelTypeCast : DiagGroup<"cast-of-sel-type">;
def FunctionDefInObjCContainer : DiagGroup<"function-def-in-objc-container">;
def BadFunctionCast : DiagGroup<"bad-function-cast">;
def ObjCPropertyImpl : DiagGroup<"objc-property-implementation">;
def ObjCPropertyNoAttribute : DiagGroup<"objc-property-no-attribute">;
def ObjCProtocolQualifiers : DiagGroup<"objc-protocol-qualifiers">;
def ObjCMissingSuperCalls : DiagGroup<"objc-missing-super-calls">;
def ObjCDesignatedInit : DiagGroup<"objc-designated-initializers">;
def ObjCRetainBlockProperty : DiagGroup<"objc-noncopy-retain-block-property">;
def ObjCReadonlyPropertyHasSetter : DiagGroup<"objc-readonly-with-setter-property">;
def ObjCInvalidIBOutletProperty : DiagGroup<"invalid-iboutlet">;
def ObjCRootClass : DiagGroup<"objc-root-class">;
def ObjCPointerIntrospectPerformSelector : DiagGroup<"deprecated-objc-pointer-introspection-performSelector">;
def ObjCPointerIntrospect : DiagGroup<"deprecated-objc-pointer-introspection", [ObjCPointerIntrospectPerformSelector]>;
def ObjCMultipleMethodNames : DiagGroup<"objc-multiple-method-names">;
def DeprecatedObjCIsaUsage : DiagGroup<"deprecated-objc-isa-usage">;
def ExplicitInitializeCall : DiagGroup<"explicit-initialize-call">;
def Packed : DiagGroup<"packed">;
def Padded : DiagGroup<"padded">;
def PessimizingMove : DiagGroup<"pessimizing-move">;
def PointerArith : DiagGroup<"pointer-arith">;
def PoundWarning : DiagGroup<"#warnings">;
def PoundPragmaMessage : DiagGroup<"#pragma-messages">,
                         DiagCategory<"#pragma message Directive">;
def : DiagGroup<"pointer-to-int-cast">;
def : DiagGroup<"redundant-decls">;
def RedeclaredClassMember : DiagGroup<"redeclared-class-member">;
def GNURedeclaredEnum : DiagGroup<"gnu-redeclared-enum">;
def RedundantMove : DiagGroup<"redundant-move">;
def ReturnStackAddress : DiagGroup<"return-stack-address">;
def ReturnTypeCLinkage : DiagGroup<"return-type-c-linkage">;
def ReturnType : DiagGroup<"return-type", [ReturnTypeCLinkage]>;
def BindToTemporaryCopy : DiagGroup<"bind-to-temporary-copy",
                                    [CXX98CompatBindToTemporaryCopy]>;
def SelfAssignmentField : DiagGroup<"self-assign-field">;
def SelfAssignment : DiagGroup<"self-assign", [SelfAssignmentField]>;
def SelfMove : DiagGroup<"self-move">;
def SemiBeforeMethodBody : DiagGroup<"semicolon-before-method-body">;
def Sentinel : DiagGroup<"sentinel">;
def MissingMethodReturnType : DiagGroup<"missing-method-return-type">;
def Shadow : DiagGroup<"shadow">;
def Shorten64To32 : DiagGroup<"shorten-64-to-32">;
def : DiagGroup<"sign-promo">;
def SignCompare : DiagGroup<"sign-compare">;
def : DiagGroup<"stack-protector">;
def : DiagGroup<"switch-default">;
def : DiagGroup<"synth">;
def SizeofArrayArgument : DiagGroup<"sizeof-array-argument">;
def SizeofArrayDecay : DiagGroup<"sizeof-array-decay">;
def SizeofPointerMemaccess : DiagGroup<"sizeof-pointer-memaccess">;
def StaticInInline : DiagGroup<"static-in-inline">;
def StaticLocalInInline : DiagGroup<"static-local-in-inline">;
def GNUStaticFloatInit : DiagGroup<"gnu-static-float-init">;
def StaticFloatInit : DiagGroup<"static-float-init", [GNUStaticFloatInit]>;
def GNUStatementExpression : DiagGroup<"gnu-statement-expression">;
def StringCompare : DiagGroup<"string-compare">;
def StringPlusInt : DiagGroup<"string-plus-int">;
def StringPlusChar : DiagGroup<"string-plus-char">;
def StrncatSize : DiagGroup<"strncat-size">;
def TautologicalOutOfRangeCompare : DiagGroup<"tautological-constant-out-of-range-compare">;
def TautologicalPointerCompare : DiagGroup<"tautological-pointer-compare">;
def TautologicalOverlapCompare : DiagGroup<"tautological-overlap-compare">;
def TautologicalUndefinedCompare : DiagGroup<"tautological-undefined-compare">;
def TautologicalCompare : DiagGroup<"tautological-compare",
                                    [TautologicalOutOfRangeCompare,
                                     TautologicalPointerCompare,
                                     TautologicalOverlapCompare,
                                     TautologicalUndefinedCompare]>;
def HeaderHygiene : DiagGroup<"header-hygiene">;
def DuplicateDeclSpecifier : DiagGroup<"duplicate-decl-specifier">;
def CompareDistinctPointerType : DiagGroup<"compare-distinct-pointer-types">;
def GNUUnionCast : DiagGroup<"gnu-union-cast">;
def GNUVariableSizedTypeNotAtEnd : DiagGroup<"gnu-variable-sized-type-not-at-end">;
def Varargs : DiagGroup<"varargs">;

def Unsequenced : DiagGroup<"unsequenced">;
// GCC name for -Wunsequenced
def : DiagGroup<"sequence-point", [Unsequenced]>;

// Preprocessor warnings.
def AmbiguousMacro : DiagGroup<"ambiguous-macro">;
def KeywordAsMacro : DiagGroup<"keyword-macro">;
def ReservedIdAsMacro : DiagGroup<"reserved-id-macro">;

// Just silence warnings about -Wstrict-aliasing for now.
def : DiagGroup<"strict-aliasing=0">;
def : DiagGroup<"strict-aliasing=1">;
def : DiagGroup<"strict-aliasing=2">;
def : DiagGroup<"strict-aliasing">;

// Just silence warnings about -Wstrict-overflow for now.
def : DiagGroup<"strict-overflow=0">;
def : DiagGroup<"strict-overflow=1">;
def : DiagGroup<"strict-overflow=2">;
def : DiagGroup<"strict-overflow=3">;
def : DiagGroup<"strict-overflow=4">;
def : DiagGroup<"strict-overflow=5">;
def : DiagGroup<"strict-overflow">;

def InvalidOffsetof : DiagGroup<"invalid-offsetof">;
def : DiagGroup<"strict-prototypes">;
def StrictSelector : DiagGroup<"strict-selector-match">;
def MethodDuplicate : DiagGroup<"duplicate-method-match">;
def ObjCCStringFormat : DiagGroup<"cstring-format-directive">;
def CoveredSwitchDefault : DiagGroup<"covered-switch-default">;
def SwitchBool     : DiagGroup<"switch-bool">;
def SwitchEnum     : DiagGroup<"switch-enum">;
def Switch         : DiagGroup<"switch">;
def ImplicitFallthroughPerFunction :
  DiagGroup<"implicit-fallthrough-per-function">;
def ImplicitFallthrough  : DiagGroup<"implicit-fallthrough",
                                     [ImplicitFallthroughPerFunction]>;
def InvalidPPToken : DiagGroup<"invalid-pp-token">;
def Trigraphs      : DiagGroup<"trigraphs">;

def : DiagGroup<"type-limits">;
def UndefinedReinterpretCast : DiagGroup<"undefined-reinterpret-cast">;
def ReinterpretBaseClass : DiagGroup<"reinterpret-base-class">;
def Unicode  : DiagGroup<"unicode">;
def UninitializedMaybe : DiagGroup<"conditional-uninitialized">;
def UninitializedSometimes : DiagGroup<"sometimes-uninitialized">;
def UninitializedStaticSelfInit : DiagGroup<"static-self-init">;
def Uninitialized  : DiagGroup<"uninitialized", [UninitializedSometimes,
                                                 UninitializedStaticSelfInit]>;
def UnknownPragmas : DiagGroup<"unknown-pragmas">;
def IgnoredPragmas : DiagGroup<"ignored-pragmas">;
def Pragmas : DiagGroup<"pragmas", [UnknownPragmas, IgnoredPragmas]>;
def UnknownWarningOption : DiagGroup<"unknown-warning-option">;
def NSobjectAttribute : DiagGroup<"NSObject-attribute">;
def IndependentClassAttribute : DiagGroup<"IndependentClass-attribute">;
def UnknownAttributes : DiagGroup<"unknown-attributes">;
def IgnoredAttributes : DiagGroup<"ignored-attributes">;
def Attributes : DiagGroup<"attributes", [UnknownAttributes,
                                          IgnoredAttributes]>;
def UnknownSanitizers : DiagGroup<"unknown-sanitizers">;
def UnnamedTypeTemplateArgs : DiagGroup<"unnamed-type-template-args",
                                        [CXX98CompatUnnamedTypeTemplateArgs]>;
def UnsupportedFriend : DiagGroup<"unsupported-friend">;
def UnusedArgument : DiagGroup<"unused-argument">;
def UnusedCommandLineArgument : DiagGroup<"unused-command-line-argument">;
def IgnoredOptimizationArgument : DiagGroup<"ignored-optimization-argument">;
def InvalidCommandLineArgument : DiagGroup<"invalid-command-line-argument",
                                           [IgnoredOptimizationArgument]>;
def UnusedComparison : DiagGroup<"unused-comparison">;
def UnusedExceptionParameter : DiagGroup<"unused-exception-parameter">;
def UnneededInternalDecl : DiagGroup<"unneeded-internal-declaration">;
def UnneededMemberFunction : DiagGroup<"unneeded-member-function">;
def UnusedPrivateField : DiagGroup<"unused-private-field">;
def UnusedFunction : DiagGroup<"unused-function", [UnneededInternalDecl]>;
def UnusedMemberFunction : DiagGroup<"unused-member-function",
                                     [UnneededMemberFunction]>;
def UnusedLabel : DiagGroup<"unused-label">;
def UnusedParameter : DiagGroup<"unused-parameter">;
def UnusedResult : DiagGroup<"unused-result">;
def PotentiallyEvaluatedExpression : DiagGroup<"potentially-evaluated-expression">;
def UnevaluatedExpression : DiagGroup<"unevaluated-expression",
                                      [PotentiallyEvaluatedExpression]>;
def UnusedValue : DiagGroup<"unused-value", [UnusedComparison, UnusedResult,
                                             UnevaluatedExpression]>;
def UnusedConstVariable : DiagGroup<"unused-const-variable">;
def UnusedVariable : DiagGroup<"unused-variable",
                               [UnusedConstVariable]>;
def UnusedLocalTypedef : DiagGroup<"unused-local-typedef">;
def UnusedPropertyIvar :  DiagGroup<"unused-property-ivar">;
def UnusedGetterReturnValue : DiagGroup<"unused-getter-return-value">;
def UsedButMarkedUnused : DiagGroup<"used-but-marked-unused">;
def UserDefinedLiterals : DiagGroup<"user-defined-literals">;
def Reorder : DiagGroup<"reorder">;
def UndeclaredSelector : DiagGroup<"undeclared-selector">;
def ImplicitAtomic : DiagGroup<"implicit-atomic-properties">;
def CustomAtomic : DiagGroup<"custom-atomic-properties">;
def AtomicProperties : DiagGroup<"atomic-properties",
                                 [ImplicitAtomic, CustomAtomic]>;
def ARCUnsafeRetainedAssign : DiagGroup<"arc-unsafe-retained-assign">;
def ARCRetainCycles : DiagGroup<"arc-retain-cycles">;
def ARCNonPodMemAccess : DiagGroup<"arc-non-pod-memaccess">;
def AutomaticReferenceCounting : DiagGroup<"arc",
                                           [ARCUnsafeRetainedAssign,
                                            ARCRetainCycles,
                                            ARCNonPodMemAccess]>;
def ARCRepeatedUseOfWeakMaybe : DiagGroup<"arc-maybe-repeated-use-of-weak">;
def ARCRepeatedUseOfWeak : DiagGroup<"arc-repeated-use-of-weak",
                                     [ARCRepeatedUseOfWeakMaybe]>;
def ObjCBridge : DiagGroup<"bridge-cast">;

def DeallocInCategory:DiagGroup<"dealloc-in-category">;
def SelectorTypeMismatch : DiagGroup<"selector-type-mismatch">;
def Selector : DiagGroup<"selector", [SelectorTypeMismatch]>;
def Protocol : DiagGroup<"protocol">;
def AtProtocol : DiagGroup<"at-protocol">;
def PropertyAccessDotSyntax: DiagGroup<"property-access-dot-syntax">;
def PropertyAttr : DiagGroup<"property-attribute-mismatch">;
def SuperSubClassMismatch : DiagGroup<"super-class-method-mismatch">;
def OverridingMethodMismatch : DiagGroup<"overriding-method-mismatch">;
def VariadicMacros : DiagGroup<"variadic-macros">;
def VectorConversion : DiagGroup<"vector-conversion">;      // clang specific
def VexingParse : DiagGroup<"vexing-parse">;
def VLA : DiagGroup<"vla">;
def VLAExtension : DiagGroup<"vla-extension">;
def VolatileRegisterVar : DiagGroup<"volatile-register-var">;
def Visibility : DiagGroup<"visibility">;
def ZeroLengthArray : DiagGroup<"zero-length-array">;
def GNUZeroLineDirective : DiagGroup<"gnu-zero-line-directive">;
def GNUZeroVariadicMacroArguments : DiagGroup<"gnu-zero-variadic-macro-arguments">;
def Fallback : DiagGroup<"fallback">;

// This covers both the deprecated case (in C++98)
// and the extension case (in C++11 onwards).
def WritableStrings : DiagGroup<"writable-strings", [DeprecatedWritableStr]>;

// GCC calls -Wdeprecated-writable-strings -Wwrite-strings.
//
// Bizarrely, this warning flag enables -fconst-strings in C. This is
// GCC-compatible, but really weird.
//
// FIXME: Should this affect C++11 (where this is an error,
//        not just deprecated) or not?
def GCCWriteStrings : DiagGroup<"write-strings" , [WritableStrings]>;

def CharSubscript : DiagGroup<"char-subscripts">;
def LargeByValueCopy : DiagGroup<"large-by-value-copy">;
def DuplicateArgDecl : DiagGroup<"duplicate-method-arg">;

// Unreachable code warning groups.
//
//  The goal is make -Wunreachable-code on by default, in -Wall, or at
//  least actively used, with more noisy versions of the warning covered
//  under separate flags.
//
def UnreachableCodeLoopIncrement : DiagGroup<"unreachable-code-loop-increment">;
def UnreachableCode : DiagGroup<"unreachable-code",
                                [UnreachableCodeLoopIncrement]>;
def UnreachableCodeBreak : DiagGroup<"unreachable-code-break">;
def UnreachableCodeReturn : DiagGroup<"unreachable-code-return">;
def UnreachableCodeAggressive : DiagGroup<"unreachable-code-aggressive",
                                    [UnreachableCode,
                                     UnreachableCodeBreak,
                                     UnreachableCodeReturn]>;

// Aggregation warning settings.

// Populate -Waddress with warnings from other groups.
def : DiagGroup<"address", [PointerBoolConversion,
                            StringCompare,
                            TautologicalPointerCompare]>;

// -Widiomatic-parentheses contains warnings about 'idiomatic'
// missing parentheses;  it is off by default.  We do not include it
// in -Wparentheses because most users who use -Wparentheses explicitly
// do not want these warnings.
def ParenthesesOnEquality : DiagGroup<"parentheses-equality">;
def Parentheses : DiagGroup<"parentheses",
                            [LogicalOpParentheses,
                             LogicalNotParentheses,
                             BitwiseOpParentheses,
                             ShiftOpParentheses,
                             OverloadedShiftOpParentheses,
                             ParenthesesOnEquality,
                             DanglingElse]>;

// -Wconversion has its own warnings, but we split a few out for
// legacy reasons:
//   - some people want just 64-to-32 warnings
//   - conversion warnings with constant sources are on by default
//   - conversion warnings for literals are on by default
//   - bool-to-pointer conversion warnings are on by default
//   - __null-to-integer conversion warnings are on by default
def Conversion : DiagGroup<"conversion",
                           [BoolConversion,
                            ConstantConversion,
                            EnumConversion,
                            FloatConversion,
                            Shorten64To32,
                            IntConversion,
                            LiteralConversion,
                            NonLiteralNullConversion, // (1-1)->pointer (etc)
                            NullConversion, // NULL->non-pointer
                            ObjCLiteralConversion,
                            SignConversion,
                            StringConversion]>,
                 DiagCategory<"Value Conversion Issue">;

def Unused : DiagGroup<"unused",
                       [UnusedArgument, UnusedFunction, UnusedLabel,
                        // UnusedParameter, (matches GCC's behavior)
                        // UnusedMemberFunction, (clean-up llvm before enabling)
                        UnusedPrivateField, UnusedLocalTypedef,
                        UnusedValue, UnusedVariable, UnusedPropertyIvar]>,
                        DiagCategory<"Unused Entity Issue">;

// Format settings.
def FormatInvalidSpecifier : DiagGroup<"format-invalid-specifier">;
def FormatSecurity : DiagGroup<"format-security">;
def FormatNonStandard : DiagGroup<"format-non-iso">;
def FormatY2K : DiagGroup<"format-y2k">;
def FormatPedantic : DiagGroup<"format-pedantic">;
def Format : DiagGroup<"format",
                       [FormatExtraArgs, FormatZeroLength, NonNull,
                        FormatSecurity, FormatY2K, FormatInvalidSpecifier]>,
             DiagCategory<"Format String Issue">;
def FormatNonLiteral : DiagGroup<"format-nonliteral">;
def Format2 : DiagGroup<"format=2",
                        [FormatNonLiteral, FormatSecurity, FormatY2K]>;

def TypeSafety : DiagGroup<"type-safety">;

def IntToVoidPointerCast : DiagGroup<"int-to-void-pointer-cast">;
def IntToPointerCast : DiagGroup<"int-to-pointer-cast",
                                 [IntToVoidPointerCast]>;

def Move : DiagGroup<"move", [PessimizingMove, RedundantMove, SelfMove]>;

def Extra : DiagGroup<"extra", [
    MissingFieldInitializers,
    IgnoredQualifiers,
    InitializerOverrides,
    SemiBeforeMethodBody,
    MissingMethodReturnType,
    SignCompare,
    UnusedParameter
  ]>;

def Most : DiagGroup<"most", [
    CharSubscript,
    Comment,
    DeleteNonVirtualDtor,
    Format,
    Implicit,
    InfiniteRecursion,
    MismatchedTags,
    MissingBraces,
    Move,
    MultiChar,
    Reorder,
    ReturnType,
    SelfAssignment,
    SelfMove,
    SizeofArrayArgument,
    SizeofArrayDecay,
    StringPlusInt,
    Trigraphs,
    Uninitialized,
    UnknownPragmas,
    Unused,
    VolatileRegisterVar,
    ObjCMissingSuperCalls,
    ObjCDesignatedInit,
    OverloadedVirtual,
    PrivateExtern,
    SelTypeCast,
    ExternCCompat
 ]>;

// Thread Safety warnings 
def ThreadSafetyAttributes : DiagGroup<"thread-safety-attributes">;
def ThreadSafetyAnalysis   : DiagGroup<"thread-safety-analysis">;
def ThreadSafetyPrecise    : DiagGroup<"thread-safety-precise">;
def ThreadSafetyReference  : DiagGroup<"thread-safety-reference">;
def ThreadSafetyNegative   : DiagGroup<"thread-safety-negative">;
def ThreadSafety : DiagGroup<"thread-safety",
                             [ThreadSafetyAttributes, 
                              ThreadSafetyAnalysis,
                              ThreadSafetyPrecise,
                              ThreadSafetyReference]>;
def ThreadSafetyVerbose : DiagGroup<"thread-safety-verbose">;
def ThreadSafetyBeta : DiagGroup<"thread-safety-beta">;

// Uniqueness Analysis warnings
def Consumed       : DiagGroup<"consumed">;

// Note that putting warnings in -Wall will not disable them by default. If a
// warning should be active _only_ when -Wall is passed in, mark it as
// DefaultIgnore in addition to putting it here.
def : DiagGroup<"all", [Most, Parentheses, Switch, SwitchBool]>;

// Warnings enabled by -pedantic.  This is magically filled in by TableGen.
def Pedantic : DiagGroup<"pedantic">;

// Aliases.
def : DiagGroup<"", [Extra]>;                   // -W = -Wextra
def : DiagGroup<"endif-labels", [ExtraTokens]>; // -Wendif-labels=-Wextra-tokens
def : DiagGroup<"comments", [Comment]>;         // -Wcomments = -Wcomment
def : DiagGroup<"conversion-null",
                [NullConversion]>; // -Wconversion-null = -Wnull-conversion
def : DiagGroup<"bool-conversions",
                [BoolConversion]>; // -Wbool-conversions  = -Wbool-conversion
def : DiagGroup<"int-conversions",
                [IntConversion]>; // -Wint-conversions = -Wint-conversion
def : DiagGroup<"vector-conversions",
                [VectorConversion]>; // -Wvector-conversions = -Wvector-conversion
def : DiagGroup<"unused-local-typedefs", [UnusedLocalTypedef]>;
                // -Wunused-local-typedefs = -Wunused-local-typedef

// A warning group for warnings that we want to have on by default in clang,
// but which aren't on by default in GCC.
def NonGCC : DiagGroup<"non-gcc",
    [SignCompare, Conversion, LiteralRange]>;

// A warning group for warnings about using C++11 features as extensions in
// earlier C++ versions.
def CXX11 : DiagGroup<"c++11-extensions", [CXX11ExtraSemi, CXX11LongLong]>;

// A warning group for warnings about using C++14 features as extensions in
// earlier C++ versions.
def CXX14 : DiagGroup<"c++14-extensions">;

// A warning group for warnings about using C++1z features as extensions in
// earlier C++ versions.
def CXX1z : DiagGroup<"c++1z-extensions">;

def : DiagGroup<"c++0x-extensions", [CXX11]>;
def : DiagGroup<"c++1y-extensions", [CXX14]>;

def DelegatingCtorCycles :
  DiagGroup<"delegating-ctor-cycles">;

// A warning group for warnings about using C11 features as extensions.
def C11 : DiagGroup<"c11-extensions">;

// A warning group for warnings about using C99 features as extensions.
def C99 : DiagGroup<"c99-extensions">;

// A warning group for warnings about GCC extensions.
def GNU : DiagGroup<"gnu", [GNUAlignofExpression, GNUAnonymousStruct,
                            GNUBinaryLiteral, GNUCaseRange,
                            GNUComplexInteger, GNUCompoundLiteralInitializer,
                            GNUConditionalOmittedOperand, GNUDesignator,
                            GNUEmptyInitializer, GNUEmptyStruct,
                            VLAExtension, GNUFlexibleArrayInitializer,
                            GNUFlexibleArrayUnionMember, GNUFoldingConstant,
                            GNUImaginaryConstant, GNULabelsAsValue,
                            RedeclaredClassMember, GNURedeclaredEnum,
                            GNUStatementExpression, GNUStaticFloatInit,
                            GNUStringLiteralOperatorTemplate,
                            GNUUnionCast, GNUVariableSizedTypeNotAtEnd,
                            ZeroLengthArray, GNUZeroLineDirective,
                            GNUZeroVariadicMacroArguments]>;
// A warning group for warnings about code that clang accepts but gcc doesn't.
def GccCompat : DiagGroup<"gcc-compat">;

// A warning group for warnings about Microsoft extensions.
def Microsoft : DiagGroup<"microsoft">;

def ObjCNonUnifiedException : DiagGroup<"objc-nonunified-exceptions">;

def ObjCProtocolMethodImpl : DiagGroup<"objc-protocol-method-implementation">;

def ObjCNoPropertyAutoSynthesis : DiagGroup<"objc-property-synthesis">;

// ObjC API warning groups.
def ObjCRedundantLiteralUse : DiagGroup<"objc-redundant-literal-use">;
def ObjCRedundantAPIUse : DiagGroup<"objc-redundant-api-use", [
    ObjCRedundantLiteralUse
  ]>;

def ObjCCocoaAPI : DiagGroup<"objc-cocoa-api", [
    ObjCRedundantAPIUse
  ]>;

def ObjCStringComparison : DiagGroup<"objc-string-compare">;
def ObjCStringConcatenation : DiagGroup<"objc-string-concatenation">;
def ObjCLiteralComparison : DiagGroup<"objc-literal-compare", [
    ObjCStringComparison
  ]>;

// Inline ASM warnings.
def ASMOperandWidths : DiagGroup<"asm-operand-widths">;
def ASM : DiagGroup<"asm", [
    ASMOperandWidths
  ]>;

// OpenMP warnings.
def SourceUsesOpenMP : DiagGroup<"source-uses-openmp">;
def OpenMPClauses : DiagGroup<"openmp-clauses">;
def OpenMPLoopForm : DiagGroup<"openmp-loop-form">;

// Backend warnings.
def BackendInlineAsm : DiagGroup<"inline-asm">;
def BackendFrameLargerThanEQ : DiagGroup<"frame-larger-than=">;
def BackendPlugin : DiagGroup<"backend-plugin">;
def RemarkBackendPlugin : DiagGroup<"remark-backend-plugin">;
def BackendOptimizationRemark : DiagGroup<"pass">;
def BackendOptimizationRemarkMissed : DiagGroup<"pass-missed">;
def BackendOptimizationRemarkAnalysis : DiagGroup<"pass-analysis">;
def BackendOptimizationFailure : DiagGroup<"pass-failed">;

// Instrumentation based profiling warnings.
def ProfileInstrOutOfDate : DiagGroup<"profile-instr-out-of-date">;
def ProfileInstrUnprofiled : DiagGroup<"profile-instr-unprofiled">;

// AddressSanitizer frontent instrumentation remarks.
def SanitizeAddressRemarks : DiagGroup<"sanitize-address">;

// Issues with serialized diagnostics.
def SerializedDiagnostics : DiagGroup<"serialized-diagnostics">;

// A warning group for warnings about code that clang accepts when
// compiling CUDA C/C++ but which is not compatible with the CUDA spec.
def CudaCompat : DiagGroup<"cuda-compat">;

// A warning group for things that will change semantics in the future.
def FutureCompat : DiagGroup<"future-compat">;

// HLSL Change Starts - HLSL diagnostic groups
def HLSLEffectsSyntax : DiagGroup<"effects-syntax">;
def HLSLForRedefinition : DiagGroup<"for-redefinition">;
def HLSLAttributeStatement : DiagGroup<"attribute-statement">;
def HLSLAttributeType : DiagGroup<"attribute-type">;
def HLSLEntryAttributeWithoutShaderAttrType : DiagGroup<"misplaced-attributes">;
def HLSLSpecifierOverride : DiagGroup<"specifier-override">;
def HLSLPackOffsetOverride : DiagGroup<"packoffset-override">;
def HLSLCommaInInit : DiagGroup<"comma-in-init">;
def HLSLAmbigLitShift : DiagGroup<"ambig-lit-shift">;
def HLSLPayloadAccessQualiferTrace: DiagGroup<"payload-access-trace">;
def HLSLPayloadAccessQualiferShader: DiagGroup<"payload-access-shader">;
def HLSLPayloadAccessQualiferPerf: DiagGroup<"payload-access-perf">;
def HLSLPayloadAccessQualiferCall: DiagGroup<"payload-access-call">;
def HLSLPayloadAccessQualifer: DiagGroup<"payload-access-qualifier", [
     HLSLPayloadAccessQualiferTrace,
     HLSLPayloadAccessQualiferShader,
     HLSLPayloadAccessQualiferPerf,
     HLSLPayloadAccessQualiferCall
  ]>;
def HLSLRayQueryFlags : DiagGroup<"hlsl-rayquery-flags">;
def HLSLSemanticIdentifierCollision : DiagGroup<"semantic-identifier-collision">;
def HLSLStructurizeExitsLifetimeMarkersConflict: DiagGroup<"structurize-exits-lifetime-markers-conflict">;
def HLSLParameterUsage : DiagGroup<"parameter-usage">;
def HLSLAvailability: DiagGroup<"hlsl-availability">;
def HLSLAvailabilityConstant: DiagGroup<"hlsl-availability-constant">;
def HLSLBarrier : DiagGroup<"hlsl-barrier">;
def HLSLLegacyLiterals : DiagGroup<"hlsl-legacy-literal">;
// HLSL Change Ends
