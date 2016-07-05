//<jobcard>                                                             
//*
//* Copyright (c) 2016 IBM Corporation and other Contributors.
//*
//* All rights reserved. This program and the accompanying materials
//* are made available under the terms of the Eclipse Public License 
//* v1.0 which accompanies this distribution, and is available at
//* http://www.eclipse.org/legal/epl-v10.html
//*
// SET MA19LOAD=<MA19.LOADLIB>                                          
// SET MS15=<MS15 HIGH LEVEL QUALIFIERS>                                
// SET MQHLQS=<MQSERIES HIGH LEVEL QUALIFIERS>                          
//RMNGLOGS EXEC PGM=IKJEFT01,REGION=2M,DYNAMNBR=99                      
//SYSEXEC  DD DSN=&MS15..SOURCE,DISP=SHR                                
//SYSTSPRT DD SYSOUT=*                                                  
//SYSPRINT DD SYSOUT=*                                                  
//STEPLIB  DD DSN=&MA19LOAD.,DISP=SHR           /* MA19 SUPPORTPAC */   
//*        DD DSN=&MS15..LOAD,DISP=SHR          /* MS15 SUPPORTPAC */   
//         DD DSN=&MQHLQS..SCSQANLE,DISP=SHR                            
//         DD DSN=&MQHLQS..SCSQAUTH,DISP=SHR                            
//SYSTSIN  DD *                                                         
 %MNGLOGS QMGR(<QUEUE MANAGER NAME E.G. VCMA>) -                        
          HLQS(<MQSERIES HIGH LEVEL QUALIFIERS E.G. MQ.V210>) -         
          BS1(<BOOTSTRAP DATA SET NO.1 NAME E.G. MQ.VCMA.BSDS01>) -     
          BS2(<BOOTSTRAP DATA SET NO.2 NAME E.G. MQ.VCMA.BSDS02>) -
          BSDS(<DUAL BOOTSTRAPS? Y OR N>) -
          SLEEP(<SLEEP PERIOD BETWEEN CHECKS IN SECONDS>) -
          BACKUP(<TAKE BACKUPS? Y OR N>) -
          RUNTYPE(<O - ONCE, C - CONTINUOUS>) -
          RESTARTRBA(<RESTART RELATIVE BYTE ADDRESS>)
/*
