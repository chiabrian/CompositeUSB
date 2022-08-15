#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/CompositeUSB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/CompositeUSB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mstack/usb/src/usb.c mstack/usb/src/usb_cdc.c mstack/usb/src/usb_winusb.c board/hardware.c board/main.c board/usb_descriptors.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mstack/usb/src/usb.o ${OBJECTDIR}/mstack/usb/src/usb_cdc.o ${OBJECTDIR}/mstack/usb/src/usb_winusb.o ${OBJECTDIR}/board/hardware.o ${OBJECTDIR}/board/main.o ${OBJECTDIR}/board/usb_descriptors.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mstack/usb/src/usb.o.d ${OBJECTDIR}/mstack/usb/src/usb_cdc.o.d ${OBJECTDIR}/mstack/usb/src/usb_winusb.o.d ${OBJECTDIR}/board/hardware.o.d ${OBJECTDIR}/board/main.o.d ${OBJECTDIR}/board/usb_descriptors.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mstack/usb/src/usb.o ${OBJECTDIR}/mstack/usb/src/usb_cdc.o ${OBJECTDIR}/mstack/usb/src/usb_winusb.o ${OBJECTDIR}/board/hardware.o ${OBJECTDIR}/board/main.o ${OBJECTDIR}/board/usb_descriptors.o

# Source Files
SOURCEFILES=mstack/usb/src/usb.c mstack/usb/src/usb_cdc.c mstack/usb/src/usb_winusb.c board/hardware.c board/main.c board/usb_descriptors.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/CompositeUSB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MM0256GPM048
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mstack/usb/src/usb.o: mstack/usb/src/usb.c  .generated_files/flags/default/7afe48f88c0a898b962d33372115ec63d9f61e8f .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mstack/usb/src" 
	@${RM} ${OBJECTDIR}/mstack/usb/src/usb.o.d 
	@${RM} ${OBJECTDIR}/mstack/usb/src/usb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"mstack/usb/include" -I"board" -MP -MMD -MF "${OBJECTDIR}/mstack/usb/src/usb.o.d" -o ${OBJECTDIR}/mstack/usb/src/usb.o mstack/usb/src/usb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mstack/usb/src/usb_cdc.o: mstack/usb/src/usb_cdc.c  .generated_files/flags/default/d6f0fa36e606323ac44734ae19268e256374ce68 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mstack/usb/src" 
	@${RM} ${OBJECTDIR}/mstack/usb/src/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/mstack/usb/src/usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"mstack/usb/include" -I"board" -MP -MMD -MF "${OBJECTDIR}/mstack/usb/src/usb_cdc.o.d" -o ${OBJECTDIR}/mstack/usb/src/usb_cdc.o mstack/usb/src/usb_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mstack/usb/src/usb_winusb.o: mstack/usb/src/usb_winusb.c  .generated_files/flags/default/323c68202eecb48cceb726336936deded4b8bc58 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mstack/usb/src" 
	@${RM} ${OBJECTDIR}/mstack/usb/src/usb_winusb.o.d 
	@${RM} ${OBJECTDIR}/mstack/usb/src/usb_winusb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"mstack/usb/include" -I"board" -MP -MMD -MF "${OBJECTDIR}/mstack/usb/src/usb_winusb.o.d" -o ${OBJECTDIR}/mstack/usb/src/usb_winusb.o mstack/usb/src/usb_winusb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/board/hardware.o: board/hardware.c  .generated_files/flags/default/11146af13af865ddec9879d488dc2d22b3cdb55e .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/board" 
	@${RM} ${OBJECTDIR}/board/hardware.o.d 
	@${RM} ${OBJECTDIR}/board/hardware.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"mstack/usb/include" -I"board" -MP -MMD -MF "${OBJECTDIR}/board/hardware.o.d" -o ${OBJECTDIR}/board/hardware.o board/hardware.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/board/main.o: board/main.c  .generated_files/flags/default/76a84b9022eb6f948710d370b9937b2ed7cfb958 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/board" 
	@${RM} ${OBJECTDIR}/board/main.o.d 
	@${RM} ${OBJECTDIR}/board/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"mstack/usb/include" -I"board" -MP -MMD -MF "${OBJECTDIR}/board/main.o.d" -o ${OBJECTDIR}/board/main.o board/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/board/usb_descriptors.o: board/usb_descriptors.c  .generated_files/flags/default/41188f672e18d28585f3e95fd98031f1ddf7e41a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/board" 
	@${RM} ${OBJECTDIR}/board/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/board/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"mstack/usb/include" -I"board" -MP -MMD -MF "${OBJECTDIR}/board/usb_descriptors.o.d" -o ${OBJECTDIR}/board/usb_descriptors.o board/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/mstack/usb/src/usb.o: mstack/usb/src/usb.c  .generated_files/flags/default/7bc4cab1a0ba9f52023591f6eb6ae00d839e75a2 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mstack/usb/src" 
	@${RM} ${OBJECTDIR}/mstack/usb/src/usb.o.d 
	@${RM} ${OBJECTDIR}/mstack/usb/src/usb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"mstack/usb/include" -I"board" -MP -MMD -MF "${OBJECTDIR}/mstack/usb/src/usb.o.d" -o ${OBJECTDIR}/mstack/usb/src/usb.o mstack/usb/src/usb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mstack/usb/src/usb_cdc.o: mstack/usb/src/usb_cdc.c  .generated_files/flags/default/c1697732493cab4f0a38929f821f536fe003da2a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mstack/usb/src" 
	@${RM} ${OBJECTDIR}/mstack/usb/src/usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/mstack/usb/src/usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"mstack/usb/include" -I"board" -MP -MMD -MF "${OBJECTDIR}/mstack/usb/src/usb_cdc.o.d" -o ${OBJECTDIR}/mstack/usb/src/usb_cdc.o mstack/usb/src/usb_cdc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mstack/usb/src/usb_winusb.o: mstack/usb/src/usb_winusb.c  .generated_files/flags/default/2f26301c273b1edee062c00250444a2e002237f2 .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/mstack/usb/src" 
	@${RM} ${OBJECTDIR}/mstack/usb/src/usb_winusb.o.d 
	@${RM} ${OBJECTDIR}/mstack/usb/src/usb_winusb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"mstack/usb/include" -I"board" -MP -MMD -MF "${OBJECTDIR}/mstack/usb/src/usb_winusb.o.d" -o ${OBJECTDIR}/mstack/usb/src/usb_winusb.o mstack/usb/src/usb_winusb.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/board/hardware.o: board/hardware.c  .generated_files/flags/default/7e86c1b5d5392de31ba1df3942ba02f42363a7ef .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/board" 
	@${RM} ${OBJECTDIR}/board/hardware.o.d 
	@${RM} ${OBJECTDIR}/board/hardware.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"mstack/usb/include" -I"board" -MP -MMD -MF "${OBJECTDIR}/board/hardware.o.d" -o ${OBJECTDIR}/board/hardware.o board/hardware.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/board/main.o: board/main.c  .generated_files/flags/default/406e02b0e4541b91d5cb1fc8cd2089abe761765a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/board" 
	@${RM} ${OBJECTDIR}/board/main.o.d 
	@${RM} ${OBJECTDIR}/board/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"mstack/usb/include" -I"board" -MP -MMD -MF "${OBJECTDIR}/board/main.o.d" -o ${OBJECTDIR}/board/main.o board/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/board/usb_descriptors.o: board/usb_descriptors.c  .generated_files/flags/default/e22b3ac08d02b7c4dcce284869634dc182b6553a .generated_files/flags/default/88d83c7a69442caf92c0f7f6fbd64c23df277cf
	@${MKDIR} "${OBJECTDIR}/board" 
	@${RM} ${OBJECTDIR}/board/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/board/usb_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"mstack/usb/include" -I"board" -MP -MMD -MF "${OBJECTDIR}/board/usb_descriptors.o.d" -o ${OBJECTDIR}/board/usb_descriptors.o board/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/CompositeUSB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/CompositeUSB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC016FF -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/CompositeUSB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/CompositeUSB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/CompositeUSB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
