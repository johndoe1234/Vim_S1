if version < 600
  syntax clear
  elseif exists("b:current_syntax")
  finish
endif

"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
"Matching print patterns with specific groups

"WTR 
syn match  WTR	"WTR\s"
syn match  WTR	"WTR\s\[0x\d\d\]"
syn match  WTR	"WTR:\s\[0x\d\d\]"
syn match  WTR	"WTR(0x\d\d)"
syn match  WTR	"WtrId \[0x\d\d\]"
syn match  WTR	"WTR_\d\d"
syn match  WTR	"WTR\d"
syn match  WTR	"TRXID:\d\d\d"
syn match  WTR	"TRX\d"
syn match  WTR	"TRX OBJECTID:\d\d\d"
syn match  WTR	"WTR unit\s\[0x\d\d\]"

"WPA
syn match  WPA	"WPA(0x\d\d)"


"WSP
syn match  WSP	"WSP(0x\d\d)"

"WAM
syn match WAM "WAM\d"
syn match WAM "wamId=\[0x\d\d\]"
syn match WAM "WAM\[0x\d\d\]"
syn match WAM "WAM\s\[0x\d\d\]"
syn match WAM "WAM(0x\d\d)"

"version
syn match Version "WN\d\.\d_\d\d\.\d*-\d*"
syn match Version "WN\d\.\d_\d\d\d\d"
syn match Version "_G\d\+"



"MasterWAM/MasterTCOM
syn match Master "masterWam=\[0x\d\d\]"
syn match Master "Master WAM ID:\[0x\d\d\]"
syn match Master "Master WAM id \[0x\d\d\]"
syn match Master "MasterWAMid is \[0x\d\d\]"
syn match Master "MasterWAMid\s\[0x\d\d\]"
syn match Master "TelecomMaster:\[0x\d\d\]"
syn match Master "Telecom master id \[0x\d\d\]"
syn match Master "Telecom master id \[0x\d\]"
syn match Master "Telecom Master and O&M master.*"
syn match Master "Telecom master read from DB = 0x\d\d"
syn match Master "mISTelecomMaster:\d"
syn match Master "mIS_OMMaster:\d"
syn match Master "Telecom master: \[0x\d\d\], OAMMaster: \[0x\d\d\]"
syn match Master "NEW TELECOM MASTER \[0x\d\d\]"
syn match Master "TELECOM MASTER=\[0x\d\d\]"
syn match Master "Telecom master, id \[0x\d\d\]"
syn match Master "Telecom master selected to board \[0x\d\d\]"
syn match Master "MasterTelecomWAMid \[0x\d\d\]"


"SHITPRINTS logs made less visible
syn match SHITPRINTS	".*\/TOAM\/.*"
syn match SHITPRINTS	".*INFO\/LGC\/G\s.*"
syn match SHITPRINTS	".*INF\/LGC\/G\,.*"
syn match SHITPRINTS	".*INF\/LGC\/B\s.*"
syn match SHITPRINTS	".*\/HWA\/.*"
syn match SHITPRINTS	".*\/CCS\/AaSysComUser.*"
syn match SHITPRINTS	".*\/CCS\/AaHTTP.*"
syn match SHITPRINTS	".*\/CCS\/AaMemAdapter.*"
syn match SHITPRINTS	".*\/CCS\/AaSysLog.*"
syn match SHITPRINTS	".*\/CCS\/AaPro.*"
syn match SHITPRINTS	".*\/CCS\/AaFile.*"
syn match SHITPRINTS	".*\/CCS\/AaConfigRad.*"
syn match SHITPRINTS	".*\/CCS\/AaTrbl.*"
syn match SHITPRINTS	".*\/CCS\/AaSysMb.*"
syn match SHITPRINTS	".*\/CCS\/AaSysComRtm.*"
syn match SHITPRINTS	".*\/CCS\/AaSysCom.*"
syn match SHITPRINTS	".*\/CCS\/AaSysTimeBcn.*"
syn match SHITPRINTS	".*\/CCS\/AaUdpcpTx.*"
syn match SHITPRINTS	".*INF\/CCS\/.*"
syn match SHITPRINTS	".*\/RM\/.*"
syn match SHITPRINTS	".*LGC/B\W.*"



"Commisionig sbs + prints
syn match Commissioning "CDM\s"
syn match Commissioning "CFM\s"
syn match Commissioning "SCF\s"
syn match Commissioning "SCF_\d+"
syn match Commissioning "CDNL\S*\.xml"
syn match Commissioning "Cupl\S*\.xml"
syn match Commissioning "evValidateConfFileFormalityReq"
syn match Commissioning "evPRDActiveFileVersionReq"
syn match Commissioning "formality validated"
syn match Commissioning "RAML SCF not available, trying to continue with legacy SCF"
syn match Commissioning "SCF_.*xml found and parsed"
syn match Commissioning "CommissioningData.xml successfully parsed"
syn match Commissioning "SCF_*.xml activated in start-up"
syn match Commissioning "Raml SCF needs to be generated again from Legacy SCF"
syn match Commissioning "CFM_RamlRegen: activation startup"
syn match Commissioning "checking regeneration need of RAML SCF"
syn match Commissioning "evFCM_FileDeleteReq"

"alarms, confilcts, kernel errors, asserts

syn match BAD ".*received alarm.*"
syn match BAD ".*conflict.*"
syn match BAD ".*WDOG feeding will be started.*"
syn match BAD ".*Kernel Error.*"
syn match BAD	".*\/CCS\/AaError.*"

"Faults
syn match FAULTS ".*received new fault.*"
syn match FAULTS ".*starts handling fault.*"


 

"Nothing to add---------------------------------------------------------------------------------

"BTS status
syn match BTSstatus	"BTS Status is now.*"


"RTT calculation prints	
	"initial delay parts
syn match RTT "m_variableDelay"
syn match RTT "new offset value for calculation.*"
syn match RTT "opCalculateVarDelay.*"
syn match RTT "m_constantDelay"
syn match RTT "constantDelay:\s\d*"
syn match RTT "TRXAntennaDelay"
syn match RTT "Commissioned antenna delay.*"
syn match RTT "EUBB total delay.*"
syn match RTT "constant delay.*"
syn match RTT "variableDelay"
syn match RTT "AntennaDelay"
	"initial delay values
syn match RTT "DYN_InitialDelay:\d*"
syn match RTT "initialdelay\:.*"
syn match RTT "Calculated cell \d initial delay. Value for.*"
syn match RTT "Calculated initial delay.*"
syn match RTT "Dyn_InitialDelay.*ns is read from db for cell.*"
syn match RTT "opGetInitialDelayFromStorage(), getting Cell.*\d.*initial.*"
	"values sent to DSP
syn match RTT "Rake specific delays, propagation delay in-chips.*"
syn match RTT "opUpdateRakesOldValuesTableDelayValue() Updating delay.*"
	"final delay after RTT calculation
syn match RTT "opHandleTCOMLoopTestResults(),Final BTS internal delay.*"
syn match RTT "opFillFinalValues, updated calculated final delay.*"
syn match RTT "Calculated cell 3 final delay for WSP.*"
	"RTT calculations results
syn match RTT "received rtt values.*"
syn match RTT "Received RTT measurement results for WSPF.*"
syn match RTT "Received RTT value for WSPF.*"
syn match RTT "RTT measurement results for WSPC.*"
	"msg to/from TCOM with RTT values
syn match RTT "TC_RTT_RESP"
syn match RTT "TC_RTT_REQ_MSG"




"done------------------------------------------------------------------------------------------


"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


"CARDS color = LightBlue
	hi WTR			guifg='LightBlue' 			
	hi WAM 			guifg='LightBlue'  		
	hi WSP 			guifg='LightBlue'  	
	hi WPA 			guifg='LightBlue' 

"Info
	hi Master 		guifg='LightBlue' 						gui=underline 
	hi Version 		guifg='LightBlue'				gui=bold
	hi BTSstatus		guifg='DarkBlue'	guibg=#FFCCFF		gui=bold

"SHITPRINTS logs made less visible
	hi SHITPRINTS		guifg=grey35


"faults, alarms, confilcts, kernel errors, asserts
	hi BAD			guifg='Red'					gui=bold

"other
	hi Commissioning 	guifg='DarkBlue'	guibg=#a0FF80 
	hi RTT						guibg='Orange'



	hi K1			guifg='LightBlue'				gui=bold,underline 
	hi K2			guifg='DarkBlue'				gui=bold,underline
	hi K3			guifg='LightGreen'				gui=bold,underline
	hi K4			guifg='DarkGreen'				gui=bold,underline
	hi K5			guifg='Brown'					gui=bold,underline
	hi K6			guifg='DarkGrey'				gui=bold,underline
	hi K7			guifg='Orange'					gui=bold,underline
	hi K8			guifg='DarkOrange'				gui=bold,underline
	hi K9			guifg='DarkRed'					gui=bold,underline
  	
	



if version >= 508 || !exists("did_basic_syntax_inits")
  if version < 508
    let did_basic_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

	"HiLink	WTR			CARDS
	"HiLink	RTT			Label
	"HiLink	Commissioning		Error
  "hi basicMathsOperator term=bold cterm=bold gui=bold

  delcommand HiLink
endif







