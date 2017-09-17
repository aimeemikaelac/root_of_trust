set lang "C++"
set moduleName "secure_enclave_key_store"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "device_key_ocm_addr"
set BitWidth0 "32"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "unsigned int"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "ocm"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "1"
set Pointer1 "0"
set Reference1 "0"
set Dims1 [list 4294967296]
set Interface1 "wire"
set DataType1 "[list ap_uint 128 ]"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "iv"
set BitWidth2 "128"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "0"
set Reference2 "0"
set Dims2 [list 0]
set Interface2 "wire"
set DataType2 "[list ap_uint 128 ]"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "encrypted_header_old"
set BitWidth3 "64"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "0"
set Reference3 "0"
set Dims3 [list 256]
set Interface3 "wire"
set DataType3 "[list ap_uint 128 ]"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "tag_header_old"
set BitWidth4 "128"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "0"
set Reference4 "0"
set Dims4 [list 0]
set Interface4 "wire"
set DataType4 "[list ap_uint 128 ]"
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set PortName5 "encrypted_header_new"
set BitWidth5 "64"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "0"
set Reference5 "0"
set Dims5 [list 256]
set Interface5 "wire"
set DataType5 "[list ap_uint 128 ]"
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5]
lappend PortList $Port5
set PortName6 "tag_header_new"
set BitWidth6 "128"
set ArrayOpt6 ""
set Const6 "0"
set Volatile6 "0"
set Pointer6 "0"
set Reference6 "0"
set Dims6 [list 0]
set Interface6 "wire"
set DataType6 "[list ap_uint 128 ]"
set Port6 [list $PortName6 $Interface6 $DataType6 $Pointer6 $Dims6 $Const6 $Volatile6 $ArrayOpt6]
lappend PortList $Port6
set PortName7 "user_key"
set BitWidth7 "64"
set ArrayOpt7 ""
set Const7 "0"
set Volatile7 "0"
set Pointer7 "1"
set Reference7 "0"
set Dims7 [list 0]
set Interface7 "wire"
set DataType7 "[list ap_uint 128 ]"
set Port7 [list $PortName7 $Interface7 $DataType7 $Pointer7 $Dims7 $Const7 $Volatile7 $ArrayOpt7]
lappend PortList $Port7
set PortName8 "user_key_valid"
set BitWidth8 "64"
set ArrayOpt8 ""
set Const8 "0"
set Volatile8 "0"
set Pointer8 "1"
set Reference8 "0"
set Dims8 [list 0]
set Interface8 "wire"
set DataType8 "bool"
set Port8 [list $PortName8 $Interface8 $DataType8 $Pointer8 $Dims8 $Const8 $Volatile8 $ArrayOpt8]
lappend PortList $Port8
set PortName9 "writing_done_in"
set BitWidth9 "8"
set ArrayOpt9 ""
set Const9 "0"
set Volatile9 "0"
set Pointer9 "0"
set Reference9 "0"
set Dims9 [list 0]
set Interface9 "wire"
set DataType9 "bool"
set Port9 [list $PortName9 $Interface9 $DataType9 $Pointer9 $Dims9 $Const9 $Volatile9 $ArrayOpt9]
lappend PortList $Port9
set PortName10 "derived_key_out"
set BitWidth10 "64"
set ArrayOpt10 ""
set Const10 "0"
set Volatile10 "0"
set Pointer10 "1"
set Reference10 "0"
set Dims10 [list 0]
set Interface10 "wire"
set DataType10 "[list ap_uint 128 ]"
set Port10 [list $PortName10 $Interface10 $DataType10 $Pointer10 $Dims10 $Const10 $Volatile10 $ArrayOpt10]
lappend PortList $Port10
set PortName11 "derived_key_valid"
set BitWidth11 "64"
set ArrayOpt11 ""
set Const11 "0"
set Volatile11 "0"
set Pointer11 "1"
set Reference11 "0"
set Dims11 [list 0]
set Interface11 "wire"
set DataType11 "bool"
set Port11 [list $PortName11 $Interface11 $DataType11 $Pointer11 $Dims11 $Const11 $Volatile11 $ArrayOpt11]
lappend PortList $Port11
set PortName12 "master_key_out"
set BitWidth12 "64"
set ArrayOpt12 ""
set Const12 "0"
set Volatile12 "0"
set Pointer12 "1"
set Reference12 "0"
set Dims12 [list 0]
set Interface12 "wire"
set DataType12 "[list ap_uint 128 ]"
set Port12 [list $PortName12 $Interface12 $DataType12 $Pointer12 $Dims12 $Const12 $Volatile12 $ArrayOpt12]
lappend PortList $Port12
set PortName13 "master_key_out_valid"
set BitWidth13 "64"
set ArrayOpt13 ""
set Const13 "0"
set Volatile13 "0"
set Pointer13 "1"
set Reference13 "0"
set Dims13 [list 0]
set Interface13 "wire"
set DataType13 "bool"
set Port13 [list $PortName13 $Interface13 $DataType13 $Pointer13 $Dims13 $Const13 $Volatile13 $ArrayOpt13]
lappend PortList $Port13
set PortName14 "iv_out"
set BitWidth14 "128"
set ArrayOpt14 ""
set Const14 "0"
set Volatile14 "0"
set Pointer14 "0"
set Reference14 "0"
set Dims14 [list 0]
set Interface14 "wire"
set DataType14 "[list ap_uint 128 ]"
set Port14 [list $PortName14 $Interface14 $DataType14 $Pointer14 $Dims14 $Const14 $Volatile14 $ArrayOpt14]
lappend PortList $Port14
set PortName15 "iv_out_valid"
set BitWidth15 "64"
set ArrayOpt15 ""
set Const15 "0"
set Volatile15 "0"
set Pointer15 "1"
set Reference15 "0"
set Dims15 [list 0]
set Interface15 "wire"
set DataType15 "bool"
set Port15 [list $PortName15 $Interface15 $DataType15 $Pointer15 $Dims15 $Const15 $Volatile15 $ArrayOpt15]
lappend PortList $Port15
set PortName16 "decrypted_new_header_out"
set BitWidth16 "64"
set ArrayOpt16 ""
set Const16 "0"
set Volatile16 "0"
set Pointer16 "1"
set Reference16 "0"
set Dims16 [list 0]
set Interface16 "wire"
set DataType16 "bool"
set Port16 [list $PortName16 $Interface16 $DataType16 $Pointer16 $Dims16 $Const16 $Volatile16 $ArrayOpt16]
lappend PortList $Port16
set PortName17 "decrypted_new_header_out_valid"
set BitWidth17 "64"
set ArrayOpt17 ""
set Const17 "0"
set Volatile17 "0"
set Pointer17 "1"
set Reference17 "0"
set Dims17 [list 0]
set Interface17 "wire"
set DataType17 "bool"
set Port17 [list $PortName17 $Interface17 $DataType17 $Pointer17 $Dims17 $Const17 $Volatile17 $ArrayOpt17]
lappend PortList $Port17
set PortName18 "reset_key_out"
set BitWidth18 "64"
set ArrayOpt18 ""
set Const18 "0"
set Volatile18 "0"
set Pointer18 "1"
set Reference18 "0"
set Dims18 [list 0]
set Interface18 "wire"
set DataType18 "bool"
set Port18 [list $PortName18 $Interface18 $DataType18 $Pointer18 $Dims18 $Const18 $Volatile18 $ArrayOpt18]
lappend PortList $Port18
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 1 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
