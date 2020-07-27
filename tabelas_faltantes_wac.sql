select count(1) from user_tables t where t.table_name LIKE 'PS%';

select 'insert into migracao_rc_call_center(tabela) values(' || '''' || t.table_name || ''');' script
  from user_tables t
where not exists (select 1 from migracao_rc_call_center a where a.tabela = t.table_name)
  and t.table_name in (
'PS_ALT_CHAR_TBL',
'PS_AUTO_NUM_TBL',
'PS_AUTO_NUMFLD_TBL',
'PS_BO_NAME_TYPE',
'PS_BO_REL_CAT_ITEM',
'PS_BO_REL_CATEGORY',
'PS_BO_REL_CFG1',
'PS_BO_REL_CFG2',
'PS_BO_REL_CFG3',
'PS_BO_REL_CFG4',
'PS_BO_REL_ROLEDFLT',
'PS_BO_REL_TREENDE2',
'PS_BO_REL_TYPE',
'PS_BO_REL_VIEW_TMP',
'PS_BO_ROLE',
'PS_BO_ROLE_TYPE',
'PS_BO_ROLE_TYPE_QC',
'PS_BO_TYPE',
'PS_BUS_UNIT_RC_RDT',
'PS_BUS_UNIT_TBL_FS',
'PS_CM_PURP_TYPE',
'PS_CM_TYPE',
'PS_CM_TYPE_REL',
'PS_CM_TYPE_ROLE',
'PS_CM_TYPE_TBL',
'PS_CM_TYPE_USE',
'PS_CM_USE_TBL',
'PS_COLLECTOR_TBL',
'PS_COMPETENCY_TBL',
'PS_COMPETENCY_TYPS',
'PS_COMPETITOR_CD',
'PS_COUNTRY_TBL',
'PS_CR_ANALYST_TBL',
'PS_CURR_QUOTE_TBL',
'PS_CURRENCY_CD_TBL',
'PS_CUST_GROUP_TBL',
'PS_DEPT_TBL',
'PS_EOCF_CONTEXT',
'PS_EOCF_IMPL_BINDS',
'PS_EOCF_IMPL_DEFN',
'PS_EOCF_IMPL_PARMS',
'PS_EOCF_TERM_ATTRS',
'PS_EOCF_TERM_BINDS',
'PS_EOCF_TERM_DEFN',
'PS_HOLIDAY_DATE',
'PS_HOLIDAY_TBL',
'PS_INSTALLATION',
'PS_INSTALLATION_BO',
'PS_INSTALLATION_RF',
'PS_INSTALLATION_RO',
'PS_JOBCODE_TBL',
'PS_KIT_COMPS_PRICE',
'PS_LOCATION_TBL',
'PS_OPR_DEF_TBL_RB',
'PS_OPR_DEF_TBL_RG',
'PS_PAY_TRMS_TBL',
'PS_PCTLG_CGRP_LNK',
'PS_POI_TYPE_TBL',
'PS_PROD_ATT',
'PS_PROD_BRAND_TBL',
'PS_PROD_CATGRY_TBL',
'PS_PROD_COMPTTRS',
'PS_PROD_EXT_DESCR',
'PS_PROD_GROUP_TBL',
'PS_PROD_IMAGES',
'PS_PROD_INSTALLAT',
'PS_PROD_ITEM_CURR',
'PS_PROD_PGRP_LNK',
'PS_PROD_PRICE',
'PS_PROD_PRICE_BU',
'PS_PROD_REGION',
'PS_PROD_SUB_TERMS',
'PS_PROD_UOM',
'PS_PROD_UOM_CURR',
'PS_PRODKIT_COMPS',
'PS_PRODKIT_DOC',
'PS_PRODKIT_HEADER',
'PSCLOCK',
'PSRECDEFN',
'PS_RATING_MDL_TBL',
'PS_RB_ANON_BO_ID',
'PS_RB_ATTR_CND',
'PS_RB_ATTR_GROUP',
'PS_RB_ATTR_GRP_CND',
'PS_RB_ATTR_ITEM',
'PS_RB_ATTR_KEY_MAP',
'PS_RB_ATTR_RULE',
'PS_RB_ATTRIBUTE',
'PS_RB_BUTTON_DEFN',
'PS_RB_FILEIDX_DEFN',
'PS_RB_FILEIDX_FILE',
'PS_RB_FILEIDX_PATH',
'PS_RB_FILTER_DEFN',
'PS_RB_FILTER_FIELD',
'PS_RB_FILTER_RSLT',
'PS_RB_HTTPIDX_DEFN',
'PS_RB_HTTPIDX_FILE',
'PS_RB_HTTPIDX_MIME',
'PS_RB_HTTPIDX_URL',
--'PS_RB_IMP_EDIT_VW', -- view substituida abaixo
'PS_RB_IMP_GLB_TBL',
'PS_RB_LOCATION_TMZ',
'PS_RB_LST_SYS_MODE',
'PS_RB_MKT_CTL_DFN',
'PS_RB_MKT_CTL_TBL',
'PS_RB_MOOD_ID',
'PS_RB_OBJ_ATTR',
'PS_RB_OBJ_ATTR_GRP',
'PS_RB_OBJECT_TYPE',
'PS_RB_PROD_BSCRIPT',
'PS_RB_REASON_CD',
'PS_RB_REGION',
'PS_RB_ROLE_WORKER',
'PS_RB_SRCH_PARMS',
'PS_RB_SRCHIDX_HDR',
'PS_RB_TD_360SUSET',
'PS_RB_TD_ACT_CAT',
'PS_RB_TD_ACT_DFN',
'PS_RB_TD_ANON_HDR',
'PS_RB_TD_ANON_LINK',
'PS_RB_TD_CNF_FLDS',
'PS_RB_TD_CNF_KEY',
'PS_RB_TD_DYN_ACT',
'PS_RB_TD_DYNGRDHDR',
'PS_RB_TD_DYNGRDKEY',
'PS_RB_TD_DYNGRDLN',
'PS_RB_TD_EIP',
'PS_RB_TD_EIP_FLDS',
'PS_RB_TD_EIP_INOPT',
'PS_RB_TD_HCM_SEC',
'PS_RB_TD_HCNTRYSEC',
'PS_RB_TD_NODE',
'PS_RB_TD_NODE_RGRD',
'PS_RB_TD_PCDE_FLDS',
'PS_RB_TD_PCODE',
'PS_RB_TD_PROF_DTL',
'PS_RB_TD_PROF_SET',
'PS_RB_TD_RGRD_FLDS',
'PS_RB_TD_ROLE_TREE',
'PS_RB_TD_SUB_NODE',
'PS_RB_TD_SUB_TRANS',
'PS_RB_TD_TRANS_ACT',
'PS_RB_TD_TRANS_HDR',
'PS_RB_TD_TREE_HDR',
'PS_RB_TD_TREE_NDE',
'PS_RB_TD_VIEW',
'PS_RB_TD_VW_FLDS',
'PS_RB_TOOLBAR_DEFN',
'PS_RB_TOOLBAR_DISP',
'PS_RB_TOOLBAR_FFLD',
'PS_RB_TOOLBAR_TMZN',
'PS_RB_TSK_PRTY_TBL',
'PS_RB_TSK_TYPE',
'PS_RB_TT_CATEGORY',
'PS_RB_TT_OPTIONS',
'PS_RB_TT_PERSONAL',
'PS_RB_TT_TERM',
'PS_RB_TXN_DEFN',
'PS_RB_TXN_MKT',
'PS_RB_VRTY_PG_AOPT',
'PS_RB_VRTY_PG_BOPT',
'PS_RB_VRTY_PG_CFG',
'PS_RB_VRTY_PG_FIDX',
'PS_RB_VRTY_PG_HIDX',
'PS_RB_VRTY_PG_RDX1',
'PS_RB_WF_COMP_MAP',
'PS_RB_WF_DELOPT_W1',
'PS_RB_WF_DELOPT_W2',
'PS_RB_WF_URI_DEFN',
'PS_RB_WL_GRID_DFN',
'PS_RB_WRK_FUNC_TBL',
'PS_RBB_AAF_CMPLWL',
'PS_RBB_AAF_RULEBND',
'PS_RBB_BPEL_ORMI',
'PS_RBB_TRNSTYP_DFN',
'PS_RBB_TRNSTYP_DTL',
'PS_RBB_VIEW_SETUP',
'PS_RBC_CM_SYSDEFN',
'PS_RBC_PACKAG_TMPL',
'PS_RBC_PACKAGE_DFN',
'PS_RBC_PACKAGE_FIL',
'PS_RBC_PACKAGE_USG',
'PS_RBC_PRINTER_LST',
'PS_RBC_SUBTMPL_DFN',
'PS_RBC_TEMPLAT_DFN',
'PS_RBC_TEMPLAT_FIL',
'PS_RBC_TEMPLAT_TKN',
'PS_RBC_TEMPLT_CAT',
'PS_RBC_TEMPLT_TYPE',
'PS_RBC_TKNGRP_DFN',
'PS_RBC_TKNGRP_DTL',
'PS_RBC_TMPLT_CAT_T',
'PS_RBC_TMPLT_PDGRP',
'PS_RBC_USAGE_DFN',
'PS_RBC_USAGE_DTL',
'PS_RBG_MAP_HDR',
'PS_RBG_MAP_QRY_FLD',
'PS_RBG_MAP_QRY_REC',
'PS_RBG_MAP_SERVICE',
'PS_RBN_AECNTRLTBL',
'PS_RBN_APPDEFN',
'PS_RBN_APPMAP',
'PS_RBN_CATEGORYDTL',
'PS_RBN_CATEGORYHDR',
'PS_RBN_CNTNTFLD',
'PS_RBN_FDBK_QUEUE',
'PS_RBN_KB',
'PS_RBN_KB_CATGFLD',
'PS_RBN_KB_CNTNTFLD',
'PS_RBN_KBDATA_BIND',
'PS_RBN_KBDATADEFN',
'PS_RBN_KBDATADTL',
'PS_RBN_LANGKB',
'PS_RBN_LEVEL1',
'PS_RBN_LEVEL2',
'PS_RBQ_ADPTFL_TMP',
'PS_RBQ_ADPTR',
'PS_RBQ_ADPTR_EXT',
'PS_RBQ_ADPTR_FLD',
'PS_RBQ_ADPTR_LBL',
'PS_RBQ_ADPTR_RL',
'PS_RBQ_ADPTR_SECT',
'PS_RBQ_CRITDFN',
'PS_RBQ_CRITDFN_FLD',
'PS_RBQ_FLDDFN',
'PS_RBQ_FLDDFN_REC',
'PS_RBQ_FLDDFN_RL',
'PS_RBQ_QCDFN',
'PS_RBQ_QCDFN_TMPL',
'PS_RBQ_QCTMPL',
'PS_RBQ_QCTMPL_FLD',
'PS_RBQ_QCTMPL_REL',
'PS_RBQ_QCTMPL_RL',
'PS_RBQ_SRCHDFN',
'PS_RBQ_SRCHDFN_FLD',
'PS_RBQ_SRCHDFN_GRP',
'PS_RBQ_SRCHDFN_RL',
'PS_RBQ_SRCHRL',
'PS_RBQ_SRCHRL_FLD',
'PS_RBT_PROD_ACTION',
'PS_RBT_PROD_BUSPRJ',
'PS_RBT_PROD_ITEM',
'PS_RC_ACTSET_ITEM',
'PS_RC_ANS_DRV_ID',
'PS_RC_ANS_SCROLL',
'PS_RC_ANS_SCROLL2',
'PS_RC_ANSWER_RULE',
'PS_RC_ANSWER_SET',
'PS_RC_ANSWER_VALUE',
'PS_RC_AS_DRV_RSLT',
'PS_RC_BP_ACTIVITY',
'PS_RC_BP_EVENT',
'PS_RC_BP_INVL_ACTN',
'PS_RC_BP_TRNS_TO',
'PS_RC_BR_SCROLL',
'PS_RC_BS_ACT_PAR',
'PS_RC_BS_ACTION',
'PS_RC_BS_ACTIONSET',
'PS_RC_BS_FUNCTIONS',
'PS_RC_BS_INSTANCE',
'PS_RC_BS_TREE',
'PS_RC_BS_VARIABLE',
'PS_RC_BSCRIPT',
'PS_RC_BUS_PROCESS',
'PS_RC_DISP_TMP_CFG',
'PS_RC_INST_KEYS',
'PS_RC_INVALID_ACTN',
'PS_RC_QUEST_ITEM',
'PS_RC_QUESTION',
'PS_RC_QUESTION_GRP',
'PS_RC_RATE_SET',
'PS_RC_RATE_VALUE',
'PS_RC_RULE',
'PS_RC_RULE_COND',
'PS_RC_RULE_ITEM',
'PS_RC_RULE_SCROLL',
'PS_RC_RULE_SET',
'PS_RC_SG_FIELD',
'PS_RC_SG_RECORD',
'PS_RC_TASK',
'PS_RC_TASK_EVENT',
'PS_RC_TOKEN',
'PS_RC_VARIABLE',
'PS_RD_DFLT_FILTER',
'PS_RD_SITETYPE_TBL',
'PS_RDM_360_RECORDS',
'PS_RDM_RELTREE_NDE',
'PS_RDT_CFG_COMP',
'PS_RDT_CFG_FIELD',
'PS_RDT_CFG_OPT',
'PS_RDT_CFG_PAGE',
'PS_RDT_CFG_SECTION',
'PS_RDT_CFG_STATE',
'PS_RDT_TMPL_ICN_RO',
'PS_RDT_TMPL_OPT_RO',
'PS_REVW_RATING_TBL',
'PS_RF_AG_LINE_ENTL',
'PS_RF_AG_LINE_PROD',
'PS_RF_AGREEMENT_LN',
'PS_RF_ASSIGN_WGHT',
'PS_RF_ASSIGN_WT_PG',
'PS_RF_COST_CAT',
'PS_RF_COST_CAT_GRP',
'PS_RF_COST_CAT_MEM',
'PS_RF_ENT_PL_HDR',
'PS_RF_ENTITLEMENTS',
'PS_RF_ENTL_PL_DTL',
'PS_RF_GRP_MEMBER',
'PS_RF_INSTPRD_DFLT',
'PS_RF_PRD_RATE_MDL',
'PS_RF_PROD_REG_CAT',
'PS_RF_PROD_REG_FLD',
'PS_RF_PROD_RST_DFL',
'PS_RF_PRVGRP_COMP',
'PS_RF_SERVICE_LVL',
'PS_RF_SLVL_COSTCAT',
'PS_RF_SVC_PRICE',
'PS_RG_UD_TSK_ROLE',
'PS_RSEC_FUNC_DEFN',
'PS_RSEC_FUNC_GROUP',
'PS_RSEC_FUNCGP_DTL',
'PS_RSEC_FUNCMSGCAT',
'PS_RSEC_MEMBERDEFN',
'PS_RSEC_OBJECT_REL',
'PS_RSEC_OBJECTDEFN',
'PS_RSEC_PROFILEDFN',
'PS_RSEC_PROFILEFNC',
'PS_RSEC_PROFILEMDM',
'PS_RSEC_PROFILEVDM',
'PS_RSEC_STAT_MENU',
'PS_RSEC_VIEW_DEFN',
'PS_RSEC_VIEW_FUNC',
'PS_RT_INDEX_TBL',
'PS_RT_RATE_DEF_TBL',
'PS_RT_RATE_TBL',
'PS_RT_TYPE_TBL',
'PS_RV_APP_COMP',
'PS_RV_APP_CPG',
'PS_RV_APP_CPG_FLD',
'PS_RV_APP_PNLGRP',
'PS_RV_LBL_TMPL',
'PS_RV_TMPL_MAP',
'PS_SALUTATION_TBL',
'PS_SAN_ORIGMOB_TBL',
'PS_SAN_SEGMENT',
'PS_SEC_BU_CLS',
'PS_SEC_BU_OPR',
'PS_SEC_SETID_CLS',
'PS_SEC_SETID_OPR',
'PS_SEC_VIEW_NAMES',
'PS_SETID_TBL',
'PS_STATE_TBL',
'PS_SUB_TOPIC_TBL',
'PS_UNITS_CVT_TBL',
'PS_UNITS_TBL',
'PS_WS_SRCH',
'PSPRCSRQST',
'PS_RB_IMPORT_DEFN',
'PS_RB_IMPT_RUNSPEC',
'PS_RB_IMP_TYPE_TBL',
'PS_RB_MATCHING_SQL'
) order by 1;

insert into migracao_rc_call_center(tabela) values('PS_WS_SRCH');
insert into migracao_rc_call_center(tabela) values('PS_ALT_CHAR_TBL');
insert into migracao_rc_call_center(tabela) values('PS_AUTO_NUM_TBL');
insert into migracao_rc_call_center(tabela) values('PS_BO_REL_CAT_ITEM');
insert into migracao_rc_call_center(tabela) values('PS_BO_REL_CFG2');
insert into migracao_rc_call_center(tabela) values('PS_BO_REL_CFG3');
insert into migracao_rc_call_center(tabela) values('PS_BO_REL_CFG4');
insert into migracao_rc_call_center(tabela) values('PS_BO_REL_ROLEDFLT');
insert into migracao_rc_call_center(tabela) values('PS_BO_REL_TREENDE2');
insert into migracao_rc_call_center(tabela) values('PS_BO_ROLE');
insert into migracao_rc_call_center(tabela) values('PS_BO_ROLE_TYPE_QC');
insert into migracao_rc_call_center(tabela) values('PS_BUS_UNIT_RC_RDT');
insert into migracao_rc_call_center(tabela) values('PS_BUS_UNIT_TBL_FS');
insert into migracao_rc_call_center(tabela) values('PS_CM_TYPE_REL');
insert into migracao_rc_call_center(tabela) values('PS_CM_TYPE_ROLE');
insert into migracao_rc_call_center(tabela) values('PS_CM_TYPE_USE');
insert into migracao_rc_call_center(tabela) values('PS_COMPETENCY_TYPS');
insert into migracao_rc_call_center(tabela) values('PS_EOCF_IMPL_BINDS');
insert into migracao_rc_call_center(tabela) values('PS_EOCF_IMPL_PARMS');
insert into migracao_rc_call_center(tabela) values('PS_EOCF_TERM_ATTRS');
insert into migracao_rc_call_center(tabela) values('PS_EOCF_TERM_BINDS');
insert into migracao_rc_call_center(tabela) values('PS_HOLIDAY_DATE');
insert into migracao_rc_call_center(tabela) values('PS_INSTALLATION_RF');
insert into migracao_rc_call_center(tabela) values('PS_INSTALLATION_RO');
insert into migracao_rc_call_center(tabela) values('PS_KIT_COMPS_PRICE');
insert into migracao_rc_call_center(tabela) values('PS_OPR_DEF_TBL_RG');
insert into migracao_rc_call_center(tabela) values('PS_PCTLG_CGRP_LNK');
insert into migracao_rc_call_center(tabela) values('PSPRCSRQST');
insert into migracao_rc_call_center(tabela) values('PS_PROD_ATT');
insert into migracao_rc_call_center(tabela) values('PS_PROD_COMPTTRS');
insert into migracao_rc_call_center(tabela) values('PS_PROD_EXT_DESCR');
insert into migracao_rc_call_center(tabela) values('PS_PROD_IMAGES');
insert into migracao_rc_call_center(tabela) values('PS_PROD_INSTALLAT');
insert into migracao_rc_call_center(tabela) values('PS_PROD_ITEM_CURR');
insert into migracao_rc_call_center(tabela) values('PS_PRODKIT_COMPS');
insert into migracao_rc_call_center(tabela) values('PS_PRODKIT_DOC');
insert into migracao_rc_call_center(tabela) values('PS_PROD_PGRP_LNK');
insert into migracao_rc_call_center(tabela) values('PS_PROD_PRICE');
insert into migracao_rc_call_center(tabela) values('PS_PROD_PRICE_BU');
insert into migracao_rc_call_center(tabela) values('PS_PROD_REGION');
insert into migracao_rc_call_center(tabela) values('PS_PROD_UOM');
insert into migracao_rc_call_center(tabela) values('PS_PROD_UOM_CURR');
insert into migracao_rc_call_center(tabela) values('PS_RB_ANON_BO_ID');
insert into migracao_rc_call_center(tabela) values('PS_RB_ATTR_CND');
insert into migracao_rc_call_center(tabela) values('PS_RB_ATTR_GRP_CND');
insert into migracao_rc_call_center(tabela) values('PS_RB_ATTR_ITEM');
insert into migracao_rc_call_center(tabela) values('PS_RB_ATTR_KEY_MAP');
insert into migracao_rc_call_center(tabela) values('PS_RBB_AAF_CMPLWL');
insert into migracao_rc_call_center(tabela) values('PS_RBB_AAF_RULEBND');
insert into migracao_rc_call_center(tabela) values('PS_RBB_TRNSTYP_DTL');
insert into migracao_rc_call_center(tabela) values('PS_RBB_VIEW_SETUP');
insert into migracao_rc_call_center(tabela) values('PS_RBC_PACKAGE_FIL');
insert into migracao_rc_call_center(tabela) values('PS_RBC_PACKAGE_USG');
insert into migracao_rc_call_center(tabela) values('PS_RBC_PACKAG_TMPL');
insert into migracao_rc_call_center(tabela) values('PS_RBC_TEMPLAT_FIL');
insert into migracao_rc_call_center(tabela) values('PS_RBC_TEMPLAT_TKN');
insert into migracao_rc_call_center(tabela) values('PS_RBC_TEMPLT_CAT');
insert into migracao_rc_call_center(tabela) values('PS_RBC_TEMPLT_TYPE');
insert into migracao_rc_call_center(tabela) values('PS_RBC_TKNGRP_DTL');
insert into migracao_rc_call_center(tabela) values('PS_RBC_TMPLT_CAT_T');
insert into migracao_rc_call_center(tabela) values('PS_RBC_TMPLT_PDGRP');
insert into migracao_rc_call_center(tabela) values('PS_RBC_USAGE_DTL');
insert into migracao_rc_call_center(tabela) values('PS_RB_FILEIDX_FILE');
insert into migracao_rc_call_center(tabela) values('PS_RB_FILEIDX_PATH');
insert into migracao_rc_call_center(tabela) values('PS_RB_FILTER_FIELD');
insert into migracao_rc_call_center(tabela) values('PS_RB_FILTER_RSLT');
insert into migracao_rc_call_center(tabela) values('PS_RBG_MAP_QRY_FLD');
insert into migracao_rc_call_center(tabela) values('PS_RBG_MAP_QRY_REC');
insert into migracao_rc_call_center(tabela) values('PS_RBG_MAP_SERVICE');
insert into migracao_rc_call_center(tabela) values('PS_RB_HTTPIDX_FILE');
insert into migracao_rc_call_center(tabela) values('PS_RB_HTTPIDX_MIME');
insert into migracao_rc_call_center(tabela) values('PS_RB_HTTPIDX_URL');
insert into migracao_rc_call_center(tabela) values('PS_RB_IMPORT_DEFN');
insert into migracao_rc_call_center(tabela) values('PS_RB_IMPT_RUNSPEC');
insert into migracao_rc_call_center(tabela) values('PS_RB_IMP_TYPE_TBL');
insert into migracao_rc_call_center(tabela) values('PS_RB_MATCHING_SQL');
insert into migracao_rc_call_center(tabela) values('PS_RBN_APPMAP');
insert into migracao_rc_call_center(tabela) values('PS_RBN_CATEGORYDTL');
insert into migracao_rc_call_center(tabela) values('PS_RBN_KB_CATGFLD');
insert into migracao_rc_call_center(tabela) values('PS_RBN_KB_CNTNTFLD');
insert into migracao_rc_call_center(tabela) values('PS_RBN_KBDATA_BIND');
insert into migracao_rc_call_center(tabela) values('PS_RBN_KBDATADTL');
insert into migracao_rc_call_center(tabela) values('PS_RBN_LANGKB');
insert into migracao_rc_call_center(tabela) values('PS_RBN_LEVEL1');
insert into migracao_rc_call_center(tabela) values('PS_RB_OBJ_ATTR');
insert into migracao_rc_call_center(tabela) values('PS_RB_OBJ_ATTR_GRP');
insert into migracao_rc_call_center(tabela) values('PS_RB_PROD_BSCRIPT');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_ADPTR_EXT');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_ADPTR_FLD');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_ADPTR_LBL');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_ADPTR_RL');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_ADPTR_SECT');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_CRITDFN_FLD');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_FLDDFN_REC');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_FLDDFN_RL');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_QCDFN_TMPL');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_QCTMPL_FLD');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_QCTMPL_REL');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_QCTMPL_RL');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_SRCHDFN_FLD');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_SRCHDFN_GRP');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_SRCHDFN_RL');
insert into migracao_rc_call_center(tabela) values('PS_RBQ_SRCHRL_FLD');
insert into migracao_rc_call_center(tabela) values('PS_RB_SRCH_PARMS');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_ANON_LINK');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_CNF_FLDS');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_CNF_KEY');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_DYN_ACT');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_DYNGRDKEY');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_DYNGRDLN');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_EIP');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_EIP_FLDS');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_HCM_SEC');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_NODE_RGRD');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_PCDE_FLDS');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_PCODE');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_PROF_DTL');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_RGRD_FLDS');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_SUB_NODE');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_SUB_TRANS');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_TRANS_ACT');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_TREE_NDE');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_VIEW');
insert into migracao_rc_call_center(tabela) values('PS_RB_TD_VW_FLDS');
insert into migracao_rc_call_center(tabela) values('PS_RB_TOOLBAR_DISP');
insert into migracao_rc_call_center(tabela) values('PS_RB_TOOLBAR_FFLD');
insert into migracao_rc_call_center(tabela) values('PS_RB_TOOLBAR_TMZN');
insert into migracao_rc_call_center(tabela) values('PS_RBT_PROD_ACTION');
insert into migracao_rc_call_center(tabela) values('PS_RBT_PROD_BUSPRJ');
insert into migracao_rc_call_center(tabela) values('PS_RBT_PROD_ITEM');
insert into migracao_rc_call_center(tabela) values('PS_RB_TT_TERM');
insert into migracao_rc_call_center(tabela) values('PS_RB_TXN_MKT');
insert into migracao_rc_call_center(tabela) values('PS_RB_VRTY_PG_AOPT');
insert into migracao_rc_call_center(tabela) values('PS_RB_VRTY_PG_BOPT');
insert into migracao_rc_call_center(tabela) values('PS_RB_VRTY_PG_FIDX');
insert into migracao_rc_call_center(tabela) values('PS_RB_VRTY_PG_HIDX');
insert into migracao_rc_call_center(tabela) values('PS_RB_VRTY_PG_RDX1');
insert into migracao_rc_call_center(tabela) values('PS_RB_WF_COMP_MAP');
insert into migracao_rc_call_center(tabela) values('PS_RB_WF_DELOPT_W1');
insert into migracao_rc_call_center(tabela) values('PS_RB_WF_DELOPT_W2');
insert into migracao_rc_call_center(tabela) values('PS_RC_ACTSET_ITEM');
insert into migracao_rc_call_center(tabela) values('PS_RC_ANS_DRV_ID');
insert into migracao_rc_call_center(tabela) values('PS_RC_ANS_SCROLL');
insert into migracao_rc_call_center(tabela) values('PS_RC_ANS_SCROLL2');
insert into migracao_rc_call_center(tabela) values('PS_RC_ANSWER_RULE');
insert into migracao_rc_call_center(tabela) values('PS_RC_ANSWER_VALUE');
insert into migracao_rc_call_center(tabela) values('PS_RC_AS_DRV_RSLT');
insert into migracao_rc_call_center(tabela) values('PS_RC_BP_ACTIVITY');
insert into migracao_rc_call_center(tabela) values('PS_RC_BP_EVENT');
insert into migracao_rc_call_center(tabela) values('PS_RC_BP_INVL_ACTN');
insert into migracao_rc_call_center(tabela) values('PS_RC_BP_TRNS_TO');
insert into migracao_rc_call_center(tabela) values('PS_RC_BR_SCROLL');
insert into migracao_rc_call_center(tabela) values('PS_RC_BS_ACT_PAR');
insert into migracao_rc_call_center(tabela) values('PS_RC_BS_TREE');
insert into migracao_rc_call_center(tabela) values('PS_RC_BS_VARIABLE');
insert into migracao_rc_call_center(tabela) values('PS_RC_INST_KEYS');
insert into migracao_rc_call_center(tabela) values('PS_RC_INVALID_ACTN');
insert into migracao_rc_call_center(tabela) values('PS_RC_QUEST_ITEM');
insert into migracao_rc_call_center(tabela) values('PS_RC_RATE_VALUE');
insert into migracao_rc_call_center(tabela) values('PS_RC_RULE_COND');
insert into migracao_rc_call_center(tabela) values('PS_RC_RULE_ITEM');
insert into migracao_rc_call_center(tabela) values('PS_RC_RULE_SCROLL');
insert into migracao_rc_call_center(tabela) values('PS_RC_SG_FIELD');
insert into migracao_rc_call_center(tabela) values('PS_RC_SG_RECORD');
insert into migracao_rc_call_center(tabela) values('PS_RC_TASK_EVENT');
insert into migracao_rc_call_center(tabela) values('PS_RD_DFLT_FILTER');
insert into migracao_rc_call_center(tabela) values('PS_RDM_RELTREE_NDE');
insert into migracao_rc_call_center(tabela) values('PS_RDM_360_RECORDS');
insert into migracao_rc_call_center(tabela) values('PS_RDT_CFG_FIELD');
insert into migracao_rc_call_center(tabela) values('PS_RDT_CFG_OPT');
insert into migracao_rc_call_center(tabela) values('PS_RDT_CFG_PAGE');
insert into migracao_rc_call_center(tabela) values('PS_RDT_CFG_SECTION');
insert into migracao_rc_call_center(tabela) values('PS_RDT_CFG_STATE');
insert into migracao_rc_call_center(tabela) values('PS_RDT_TMPL_ICN_RO');
insert into migracao_rc_call_center(tabela) values('PS_RDT_TMPL_OPT_RO');
insert into migracao_rc_call_center(tabela) values('PSRECDEFN');
insert into migracao_rc_call_center(tabela) values('PS_REVW_RATING_TBL');
insert into migracao_rc_call_center(tabela) values('PS_RF_AG_LINE_ENTL');
insert into migracao_rc_call_center(tabela) values('PS_RF_AG_LINE_PROD');
insert into migracao_rc_call_center(tabela) values('PS_RF_ASSIGN_WT_PG');
insert into migracao_rc_call_center(tabela) values('PS_RF_COST_CAT_GRP');
insert into migracao_rc_call_center(tabela) values('PS_RF_COST_CAT_MEM');
insert into migracao_rc_call_center(tabela) values('PS_RF_ENTL_PL_DTL');
insert into migracao_rc_call_center(tabela) values('PS_RF_INSTPRD_DFLT');
insert into migracao_rc_call_center(tabela) values('PS_RF_PRD_RATE_MDL');
insert into migracao_rc_call_center(tabela) values('PS_RF_PROD_REG_CAT');
insert into migracao_rc_call_center(tabela) values('PS_RF_PROD_REG_FLD');
insert into migracao_rc_call_center(tabela) values('PS_RF_PRVGRP_COMP');
insert into migracao_rc_call_center(tabela) values('PS_RF_SLVL_COSTCAT');
insert into migracao_rc_call_center(tabela) values('PS_RSEC_FUNCGP_DTL');
insert into migracao_rc_call_center(tabela) values('PS_RSEC_FUNCMSGCAT');
insert into migracao_rc_call_center(tabela) values('PS_RSEC_OBJECT_REL');
insert into migracao_rc_call_center(tabela) values('PS_RSEC_PROFILEFNC');
insert into migracao_rc_call_center(tabela) values('PS_RSEC_PROFILEMDM');
insert into migracao_rc_call_center(tabela) values('PS_RSEC_PROFILEVDM');
insert into migracao_rc_call_center(tabela) values('PS_RSEC_VIEW_FUNC');
insert into migracao_rc_call_center(tabela) values('PS_RT_RATE_DEF_TBL');
insert into migracao_rc_call_center(tabela) values('PS_RV_APP_CPG');
insert into migracao_rc_call_center(tabela) values('PS_RV_APP_CPG_FLD');
insert into migracao_rc_call_center(tabela) values('PS_RV_APP_PNLGRP');
insert into migracao_rc_call_center(tabela) values('PS_SAN_SEGMENT');
insert into migracao_rc_call_center(tabela) values('PS_UNITS_CVT_TBL');
insert into migracao_rc_call_center(tabela) values('PS_UNITS_TBL');

-- COMMENTS ON TABLE
SELECT 'SET DEFINE OFF' sql FROM DUAL
UNION
SELECT 'UPDATE migracao_rc_call_center t SET t.descricao = ''' || NVL(t.comments, p.recdescr) || '''' ||
       ' WHERE t.tabela = '''|| t.table_name || ''';' sql
  FROM user_tab_comments t
  JOIN migracao_rc_call_center m ON m.tabela = t.table_name
  LEFT OUTER JOIN psrecdefn p
    ON ('PS_' || p.recname = t.table_name)
	OR (p.recname = t.table_name)
 WHERE t.table_name IN (
'PS_ALT_CHAR_TBL',
'PS_AUTO_NUM_TBL',
'PS_AUTO_NUMFLD_TBL',
'PS_BO_NAME_TYPE',
'PS_BO_REL_CAT_ITEM',
'PS_BO_REL_CATEGORY',
'PS_BO_REL_CFG1',
'PS_BO_REL_CFG2',
'PS_BO_REL_CFG3',
'PS_BO_REL_CFG4',
'PS_BO_REL_ROLEDFLT',
'PS_BO_REL_TREENDE2',
'PS_BO_REL_TYPE',
'PS_BO_REL_VIEW_TMP',
'PS_BO_ROLE',
'PS_BO_ROLE_TYPE',
'PS_BO_ROLE_TYPE_QC',
'PS_BO_TYPE',
'PS_BUS_UNIT_RC_RDT',
'PS_BUS_UNIT_TBL_FS',
'PS_CM_PURP_TYPE',
'PS_CM_TYPE',
'PS_CM_TYPE_REL',
'PS_CM_TYPE_ROLE',
'PS_CM_TYPE_TBL',
'PS_CM_TYPE_USE',
'PS_CM_USE_TBL',
'PS_COLLECTOR_TBL',
'PS_COMPETENCY_TBL',
'PS_COMPETENCY_TYPS',
'PS_COMPETITOR_CD',
'PS_COUNTRY_TBL',
'PS_CR_ANALYST_TBL',
'PS_CURR_QUOTE_TBL',
'PS_CURRENCY_CD_TBL',
'PS_CUST_GROUP_TBL',
'PS_DEPT_TBL',
'PS_EOCF_CONTEXT',
'PS_EOCF_IMPL_BINDS',
'PS_EOCF_IMPL_DEFN',
'PS_EOCF_IMPL_PARMS',
'PS_EOCF_TERM_ATTRS',
'PS_EOCF_TERM_BINDS',
'PS_EOCF_TERM_DEFN',
'PS_HOLIDAY_DATE',
'PS_HOLIDAY_TBL',
'PS_INSTALLATION',
'PS_INSTALLATION_BO',
'PS_INSTALLATION_RF',
'PS_INSTALLATION_RO',
'PS_JOBCODE_TBL',
'PS_KIT_COMPS_PRICE',
'PS_LOCATION_TBL',
'PS_OPR_DEF_TBL_RB',
'PS_OPR_DEF_TBL_RG',
'PS_PAY_TRMS_TBL',
'PS_PCTLG_CGRP_LNK',
'PS_POI_TYPE_TBL',
'PS_PROD_ATT',
'PS_PROD_BRAND_TBL',
'PS_PROD_CATGRY_TBL',
'PS_PROD_COMPTTRS',
'PS_PROD_EXT_DESCR',
'PS_PROD_GROUP_TBL',
'PS_PROD_IMAGES',
'PS_PROD_INSTALLAT',
'PS_PROD_ITEM_CURR',
'PS_PROD_PGRP_LNK',
'PS_PROD_PRICE',
'PS_PROD_PRICE_BU',
'PS_PROD_REGION',
'PS_PROD_SUB_TERMS',
'PS_PROD_UOM',
'PS_PROD_UOM_CURR',
'PS_PRODKIT_COMPS',
'PS_PRODKIT_DOC',
'PS_PRODKIT_HEADER',
'PSCLOCK',
'PSRECDEFN',
'PS_RATING_MDL_TBL',
'PS_RB_ANON_BO_ID',
'PS_RB_ATTR_CND',
'PS_RB_ATTR_GROUP',
'PS_RB_ATTR_GRP_CND',
'PS_RB_ATTR_ITEM',
'PS_RB_ATTR_KEY_MAP',
'PS_RB_ATTR_RULE',
'PS_RB_ATTRIBUTE',
'PS_RB_BUTTON_DEFN',
'PS_RB_FILEIDX_DEFN',
'PS_RB_FILEIDX_FILE',
'PS_RB_FILEIDX_PATH',
'PS_RB_FILTER_DEFN',
'PS_RB_FILTER_FIELD',
'PS_RB_FILTER_RSLT',
'PS_RB_HTTPIDX_DEFN',
'PS_RB_HTTPIDX_FILE',
'PS_RB_HTTPIDX_MIME',
'PS_RB_HTTPIDX_URL',
'PS_RB_IMP_EDIT_VW',
'PS_RB_IMP_GLB_TBL',
'PS_RB_LOCATION_TMZ',
'PS_RB_LST_SYS_MODE',
'PS_RB_MKT_CTL_DFN',
'PS_RB_MKT_CTL_TBL',
'PS_RB_MOOD_ID',
'PS_RB_OBJ_ATTR',
'PS_RB_OBJ_ATTR_GRP',
'PS_RB_OBJECT_TYPE',
'PS_RB_PROD_BSCRIPT',
'PS_RB_REASON_CD',
'PS_RB_REGION',
'PS_RB_ROLE_WORKER',
'PS_RB_SRCH_PARMS',
'PS_RB_SRCHIDX_HDR',
'PS_RB_TD_360SUSET',
'PS_RB_TD_ACT_CAT',
'PS_RB_TD_ACT_DFN',
'PS_RB_TD_ANON_HDR',
'PS_RB_TD_ANON_LINK',
'PS_RB_TD_CNF_FLDS',
'PS_RB_TD_CNF_KEY',
'PS_RB_TD_DYN_ACT',
'PS_RB_TD_DYNGRDHDR',
'PS_RB_TD_DYNGRDKEY',
'PS_RB_TD_DYNGRDLN',
'PS_RB_TD_EIP',
'PS_RB_TD_EIP_FLDS',
'PS_RB_TD_EIP_INOPT',
'PS_RB_TD_HCM_SEC',
'PS_RB_TD_HCNTRYSEC',
'PS_RB_TD_NODE',
'PS_RB_TD_NODE_RGRD',
'PS_RB_TD_PCDE_FLDS',
'PS_RB_TD_PCODE',
'PS_RB_TD_PROF_DTL',
'PS_RB_TD_PROF_SET',
'PS_RB_TD_RGRD_FLDS',
'PS_RB_TD_ROLE_TREE',
'PS_RB_TD_SUB_NODE',
'PS_RB_TD_SUB_TRANS',
'PS_RB_TD_TRANS_ACT',
'PS_RB_TD_TRANS_HDR',
'PS_RB_TD_TREE_HDR',
'PS_RB_TD_TREE_NDE',
'PS_RB_TD_VIEW',
'PS_RB_TD_VW_FLDS',
'PS_RB_TOOLBAR_DEFN',
'PS_RB_TOOLBAR_DISP',
'PS_RB_TOOLBAR_FFLD',
'PS_RB_TOOLBAR_TMZN',
'PS_RB_TSK_PRTY_TBL',
'PS_RB_TSK_TYPE',
'PS_RB_TT_CATEGORY',
'PS_RB_TT_OPTIONS',
'PS_RB_TT_PERSONAL',
'PS_RB_TT_TERM',
'PS_RB_TXN_DEFN',
'PS_RB_TXN_MKT',
'PS_RB_VRTY_PG_AOPT',
'PS_RB_VRTY_PG_BOPT',
'PS_RB_VRTY_PG_CFG',
'PS_RB_VRTY_PG_FIDX',
'PS_RB_VRTY_PG_HIDX',
'PS_RB_VRTY_PG_RDX1',
'PS_RB_WF_COMP_MAP',
'PS_RB_WF_DELOPT_W1',
'PS_RB_WF_DELOPT_W2',
'PS_RB_WF_URI_DEFN',
'PS_RB_WL_GRID_DFN',
'PS_RB_WRK_FUNC_TBL',
'PS_RBB_AAF_CMPLWL',
'PS_RBB_AAF_RULEBND',
'PS_RBB_BPEL_ORMI',
'PS_RBB_TRNSTYP_DFN',
'PS_RBB_TRNSTYP_DTL',
'PS_RBB_VIEW_SETUP',
'PS_RBC_CM_SYSDEFN',
'PS_RBC_PACKAG_TMPL',
'PS_RBC_PACKAGE_DFN',
'PS_RBC_PACKAGE_FIL',
'PS_RBC_PACKAGE_USG',
'PS_RBC_PRINTER_LST',
'PS_RBC_SUBTMPL_DFN',
'PS_RBC_TEMPLAT_DFN',
'PS_RBC_TEMPLAT_FIL',
'PS_RBC_TEMPLAT_TKN',
'PS_RBC_TEMPLT_CAT',
'PS_RBC_TEMPLT_TYPE',
'PS_RBC_TKNGRP_DFN',
'PS_RBC_TKNGRP_DTL',
'PS_RBC_TMPLT_CAT_T',
'PS_RBC_TMPLT_PDGRP',
'PS_RBC_USAGE_DFN',
'PS_RBC_USAGE_DTL',
'PS_RBG_MAP_HDR',
'PS_RBG_MAP_QRY_FLD',
'PS_RBG_MAP_QRY_REC',
'PS_RBG_MAP_SERVICE',
'PS_RBN_AECNTRLTBL',
'PS_RBN_APPDEFN',
'PS_RBN_APPMAP',
'PS_RBN_CATEGORYDTL',
'PS_RBN_CATEGORYHDR',
'PS_RBN_CNTNTFLD',
'PS_RBN_FDBK_QUEUE',
'PS_RBN_KB',
'PS_RBN_KB_CATGFLD',
'PS_RBN_KB_CNTNTFLD',
'PS_RBN_KBDATA_BIND',
'PS_RBN_KBDATADEFN',
'PS_RBN_KBDATADTL',
'PS_RBN_LANGKB',
'PS_RBN_LEVEL1',
'PS_RBN_LEVEL2',
'PS_RBQ_ADPTFL_TMP',
'PS_RBQ_ADPTR',
'PS_RBQ_ADPTR_EXT',
'PS_RBQ_ADPTR_FLD',
'PS_RBQ_ADPTR_LBL',
'PS_RBQ_ADPTR_RL',
'PS_RBQ_ADPTR_SECT',
'PS_RBQ_CRITDFN',
'PS_RBQ_CRITDFN_FLD',
'PS_RBQ_FLDDFN',
'PS_RBQ_FLDDFN_REC',
'PS_RBQ_FLDDFN_RL',
'PS_RBQ_QCDFN',
'PS_RBQ_QCDFN_TMPL',
'PS_RBQ_QCTMPL',
'PS_RBQ_QCTMPL_FLD',
'PS_RBQ_QCTMPL_REL',
'PS_RBQ_QCTMPL_RL',
'PS_RBQ_SRCHDFN',
'PS_RBQ_SRCHDFN_FLD',
'PS_RBQ_SRCHDFN_GRP',
'PS_RBQ_SRCHDFN_RL',
'PS_RBQ_SRCHRL',
'PS_RBQ_SRCHRL_FLD',
'PS_RBT_PROD_ACTION',
'PS_RBT_PROD_BUSPRJ',
'PS_RBT_PROD_ITEM',
'PS_RC_ACTSET_ITEM',
'PS_RC_ANS_DRV_ID',
'PS_RC_ANS_SCROLL',
'PS_RC_ANS_SCROLL2',
'PS_RC_ANSWER_RULE',
'PS_RC_ANSWER_SET',
'PS_RC_ANSWER_VALUE',
'PS_RC_AS_DRV_RSLT',
'PS_RC_BP_ACTIVITY',
'PS_RC_BP_EVENT',
'PS_RC_BP_INVL_ACTN',
'PS_RC_BP_TRNS_TO',
'PS_RC_BR_SCROLL',
'PS_RC_BS_ACT_PAR',
'PS_RC_BS_ACTION',
'PS_RC_BS_ACTIONSET',
'PS_RC_BS_FUNCTIONS',
'PS_RC_BS_INSTANCE',
'PS_RC_BS_TREE',
'PS_RC_BS_VARIABLE',
'PS_RC_BSCRIPT',
'PS_RC_BUS_PROCESS',
'PS_RC_DISP_TMP_CFG',
'PS_RC_INST_KEYS',
'PS_RC_INVALID_ACTN',
'PS_RC_QUEST_ITEM',
'PS_RC_QUESTION',
'PS_RC_QUESTION_GRP',
'PS_RC_RATE_SET',
'PS_RC_RATE_VALUE',
'PS_RC_RULE',
'PS_RC_RULE_COND',
'PS_RC_RULE_ITEM',
'PS_RC_RULE_SCROLL',
'PS_RC_RULE_SET',
'PS_RC_SG_FIELD',
'PS_RC_SG_RECORD',
'PS_RC_TASK',
'PS_RC_TASK_EVENT',
'PS_RC_TOKEN',
'PS_RC_VARIABLE',
'PS_RD_DFLT_FILTER',
'PS_RD_SITETYPE_TBL',
'PS_RDM_360_RECORDS',
'PS_RDM_RELTREE_NDE',
'PS_RDT_CFG_COMP',
'PS_RDT_CFG_FIELD',
'PS_RDT_CFG_OPT',
'PS_RDT_CFG_PAGE',
'PS_RDT_CFG_SECTION',
'PS_RDT_CFG_STATE',
'PS_RDT_TMPL_ICN_RO',
'PS_RDT_TMPL_OPT_RO',
'PS_REVW_RATING_TBL',
'PS_RF_AG_LINE_ENTL',
'PS_RF_AG_LINE_PROD',
'PS_RF_AGREEMENT_LN',
'PS_RF_ASSIGN_WGHT',
'PS_RF_ASSIGN_WT_PG',
'PS_RF_COST_CAT',
'PS_RF_COST_CAT_GRP',
'PS_RF_COST_CAT_MEM',
'PS_RF_ENT_PL_HDR',
'PS_RF_ENTITLEMENTS',
'PS_RF_ENTL_PL_DTL',
'PS_RF_GRP_MEMBER',
'PS_RF_INSTPRD_DFLT',
'PS_RF_PRD_RATE_MDL',
'PS_RF_PROD_REG_CAT',
'PS_RF_PROD_REG_FLD',
'PS_RF_PROD_RST_DFL',
'PS_RF_PRVGRP_COMP',
'PS_RF_SERVICE_LVL',
'PS_RF_SLVL_COSTCAT',
'PS_RF_SVC_PRICE',
'PS_RG_UD_TSK_ROLE',
'PS_RSEC_FUNC_DEFN',
'PS_RSEC_FUNC_GROUP',
'PS_RSEC_FUNCGP_DTL',
'PS_RSEC_FUNCMSGCAT',
'PS_RSEC_MEMBERDEFN',
'PS_RSEC_OBJECT_REL',
'PS_RSEC_OBJECTDEFN',
'PS_RSEC_PROFILEDFN',
'PS_RSEC_PROFILEFNC',
'PS_RSEC_PROFILEMDM',
'PS_RSEC_PROFILEVDM',
'PS_RSEC_STAT_MENU',
'PS_RSEC_VIEW_DEFN',
'PS_RSEC_VIEW_FUNC',
'PS_RT_INDEX_TBL',
'PS_RT_RATE_DEF_TBL',
'PS_RT_RATE_TBL',
'PS_RT_TYPE_TBL',
'PS_RV_APP_COMP',
'PS_RV_APP_CPG',
'PS_RV_APP_CPG_FLD',
'PS_RV_APP_PNLGRP',
'PS_RV_LBL_TMPL',
'PS_RV_TMPL_MAP',
'PS_SALUTATION_TBL',
'PS_SAN_ORIGMOB_TBL',
'PS_SAN_SEGMENT',
'PS_SEC_BU_CLS',
'PS_SEC_BU_OPR',
'PS_SEC_SETID_CLS',
'PS_SEC_SETID_OPR',
'PS_SEC_VIEW_NAMES',
'PS_SETID_TBL',
'PS_STATE_TBL',
'PS_SUB_TOPIC_TBL',
'PS_UNITS_CVT_TBL',
'PS_UNITS_TBL',
'PS_WS_SRCH',
'PSPRCSRQST',
'PS_RB_IMPORT_DEFN',
'PS_RB_IMPT_RUNSPEC',
'PS_RB_IMP_TYPE_TBL',
'PS_RB_MATCHING_SQL'
) 
 ORDER BY sql; 

SET DEFINE OFF
UPDATE migracao_rc_call_center t SET t.descricao = 'Ações Inválidas' WHERE t.tabela = 'PSCLOCK';
UPDATE migracao_rc_call_center t SET t.descricao = 'Action Category Definition' WHERE t.tabela = 'PS_RB_TD_ACT_CAT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Action Definition' WHERE t.tabela = 'PS_RB_TD_ACT_DFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Adapter Definition Extension' WHERE t.tabela = 'PS_RBQ_ADPTR_EXT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Adapter Definition Field' WHERE t.tabela = 'PS_RBQ_ADPTR_FLD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Adapter Definition Label' WHERE t.tabela = 'PS_RBQ_ADPTR_LBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Adapter Definition Role' WHERE t.tabela = 'PS_RBQ_ADPTR_RL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Adapter Definition Section' WHERE t.tabela = 'PS_RBQ_ADPTR_SECT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Adapter Definition' WHERE t.tabela = 'PS_RBQ_ADPTR';
UPDATE migracao_rc_call_center t SET t.descricao = 'Agreement Line Products' WHERE t.tabela = 'PS_RF_AG_LINE_PROD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Alternate Character by LangCd' WHERE t.tabela = 'PS_ALT_CHAR_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Analistas de Crédito' WHERE t.tabela = 'PS_CR_ANALYST_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Anexos de Produto' WHERE t.tabela = 'PS_PROD_ATT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Anonumous Links' WHERE t.tabela = 'PS_RB_TD_ANON_LINK';
UPDATE migracao_rc_call_center t SET t.descricao = 'Anonymous BO_ID' WHERE t.tabela = 'PS_RB_ANON_BO_ID';
UPDATE migracao_rc_call_center t SET t.descricao = 'Anonymous link header' WHERE t.tabela = 'PS_RB_TD_ANON_HDR';
UPDATE migracao_rc_call_center t SET t.descricao = 'Answer Scroll' WHERE t.tabela = 'PS_RC_ANS_SCROLL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Answer Scroll' WHERE t.tabela = 'PS_RC_ANS_SCROLL2';
UPDATE migracao_rc_call_center t SET t.descricao = 'Application Security Profile' WHERE t.tabela = 'PS_RSEC_PROFILEDFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Assign Opt Weighting Prov Grp' WHERE t.tabela = 'PS_RF_ASSIGN_WT_PG';
UPDATE migracao_rc_call_center t SET t.descricao = 'Assignment Option Weighting' WHERE t.tabela = 'PS_RF_ASSIGN_WGHT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Attribute Group' WHERE t.tabela = 'PS_RB_OBJ_ATTR_GRP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Attribute Groups' WHERE t.tabela = 'PS_RB_ATTR_GROUP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Attribute Items' WHERE t.tabela = 'PS_RB_ATTR_ITEM';
UPDATE migracao_rc_call_center t SET t.descricao = 'Attribute Key Map' WHERE t.tabela = 'PS_RB_ATTR_KEY_MAP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Attribute Object Type' WHERE t.tabela = 'PS_RB_OBJECT_TYPE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Attribute Object' WHERE t.tabela = 'PS_RB_OBJ_ATTR';
UPDATE migracao_rc_call_center t SET t.descricao = 'Attribute primary record' WHERE t.tabela = 'PS_RB_ATTRIBUTE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Attribute Rule Record' WHERE t.tabela = 'PS_RB_ATTR_RULE';
UPDATE migracao_rc_call_center t SET t.descricao = 'BO Search Adapter Field Temp' WHERE t.tabela = 'PS_RBQ_ADPTFL_TMP';
UPDATE migracao_rc_call_center t SET t.descricao = 'BO Search Criteria Definition' WHERE t.tabela = 'PS_RBQ_CRITDFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'BO Search Criteria Field' WHERE t.tabela = 'PS_RBQ_CRITDFN_FLD';
UPDATE migracao_rc_call_center t SET t.descricao = 'BO Search Definition Field' WHERE t.tabela = 'PS_RBQ_SRCHDFN_FLD';
UPDATE migracao_rc_call_center t SET t.descricao = 'BO Search Definition Group' WHERE t.tabela = 'PS_RBQ_SRCHDFN_GRP';
UPDATE migracao_rc_call_center t SET t.descricao = 'BO Search Definition Role' WHERE t.tabela = 'PS_RBQ_SRCHDFN_RL';
UPDATE migracao_rc_call_center t SET t.descricao = 'BO Search Definition' WHERE t.tabela = 'PS_RBQ_SRCHDFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'BO Search Role Definition' WHERE t.tabela = 'PS_RBQ_SRCHRL';
UPDATE migracao_rc_call_center t SET t.descricao = 'BO Search Role Field' WHERE t.tabela = 'PS_RBQ_SRCHRL_FLD';
UPDATE migracao_rc_call_center t SET t.descricao = 'BO_REL_CFG3' WHERE t.tabela = 'PS_BO_REL_CFG3';
UPDATE migracao_rc_call_center t SET t.descricao = 'BPEL Monitor View Table' WHERE t.tabela = 'PS_RBB_VIEW_SETUP';
UPDATE migracao_rc_call_center t SET t.descricao = 'BPEL Oracle RMI details' WHERE t.tabela = 'PS_RBB_BPEL_ORMI';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch Script Action Defn' WHERE t.tabela = 'PS_RC_BS_ACTION';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch Script Rule' WHERE t.tabela = 'PS_RC_RULE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch script tree table' WHERE t.tabela = 'PS_RC_BS_TREE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch Script Variable table' WHERE t.tabela = 'PS_RC_VARIABLE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch Scripting' WHERE t.tabela = 'PS_RC_ANS_DRV_ID';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch Scripting' WHERE t.tabela = 'PS_RC_BR_SCROLL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch Scripting' WHERE t.tabela = 'PS_RC_BSCRIPT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch Scripting' WHERE t.tabela = 'PS_RC_QUESTION';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch Scripting' WHERE t.tabela = 'PS_RC_QUEST_ITEM';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch Scripting' WHERE t.tabela = 'PS_RC_RATE_SET';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch Scripting' WHERE t.tabela = 'PS_RC_RULE_COND';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch Scripting' WHERE t.tabela = 'PS_RC_RULE_ITEM';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch Scripting' WHERE t.tabela = 'PS_RC_RULE_SCROLL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Branch Scripting' WHERE t.tabela = 'PS_RC_RULE_SET';
UPDATE migracao_rc_call_center t SET t.descricao = 'BS Answer Rule' WHERE t.tabela = 'PS_RC_ANSWER_RULE';
UPDATE migracao_rc_call_center t SET t.descricao = 'BS: Answer set primary table' WHERE t.tabela = 'PS_RC_ANSWER_SET';
UPDATE migracao_rc_call_center t SET t.descricao = 'Business Obj Relationship Type' WHERE t.tabela = 'PS_BO_REL_TYPE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Business Object Name Type' WHERE t.tabela = 'PS_BO_NAME_TYPE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Business Object Role Type' WHERE t.tabela = 'PS_BO_ROLE_TYPE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Business Object Role' WHERE t.tabela = 'PS_BO_ROLE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Business Object Type' WHERE t.tabela = 'PS_BO_TYPE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Business Process Events' WHERE t.tabela = 'PS_RC_BP_EVENT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Business Unit and DT' WHERE t.tabela = 'PS_BUS_UNIT_RC_RDT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Cabçl UN Estoque Pço Produto' WHERE t.tabela = 'PS_PROD_PRICE_BU';
UPDATE migracao_rc_call_center t SET t.descricao = 'Cabeçalho Kit Produto' WHERE t.tabela = 'PS_PRODKIT_HEADER';
UPDATE migracao_rc_call_center t SET t.descricao = 'Cache table for Matching SQL' WHERE t.tabela = 'PS_RB_MATCHING_SQL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Categorias Custo Grp Fornec' WHERE t.tabela = 'PS_RF_COST_CAT_GRP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Categorias de Custo' WHERE t.tabela = 'PS_RF_COST_CAT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Category - Package relations' WHERE t.tabela = 'PS_RBC_TMPLT_CAT_T';
UPDATE migracao_rc_call_center t SET t.descricao = 'Category Detail' WHERE t.tabela = 'PS_RBN_CATEGORYDTL';
UPDATE migracao_rc_call_center t SET t.descricao = 'CDM QC Definition' WHERE t.tabela = 'PS_BO_ROLE_TYPE_QC';
UPDATE migracao_rc_call_center t SET t.descricao = 'Change Management' WHERE t.tabela = 'PS_OPR_DEF_TBL_RG';
UPDATE migracao_rc_call_center t SET t.descricao = 'CLA BPEL Action Rule Binds' WHERE t.tabela = 'PS_RBB_AAF_RULEBND';
UPDATE migracao_rc_call_center t SET t.descricao = 'CM Systemwide Settings' WHERE t.tabela = 'PS_RBC_CM_SYSDEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'CM Template Definition' WHERE t.tabela = 'PS_RBC_TEMPLAT_DFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'CM_TYPE_REL' WHERE t.tabela = 'PS_CM_TYPE_REL';
UPDATE migracao_rc_call_center t SET t.descricao = 'CM_TYPE_ROLE' WHERE t.tabela = 'PS_CM_TYPE_ROLE';
UPDATE migracao_rc_call_center t SET t.descricao = 'CM_TYPE_USE' WHERE t.tabela = 'PS_CM_TYPE_USE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Cobradores' WHERE t.tabela = 'PS_COLLECTOR_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Códigos de Moeda' WHERE t.tabela = 'PS_CURRENCY_CD_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Competencies Table' WHERE t.tabela = 'PS_COMPETENCY_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Competency Types' WHERE t.tabela = 'PS_CM_TYPE_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Competency Types' WHERE t.tabela = 'PS_COMPETENCY_TYPS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Component Page Field' WHERE t.tabela = 'PS_RV_APP_COMP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Component Page Field' WHERE t.tabela = 'PS_RV_APP_CPG';
UPDATE migracao_rc_call_center t SET t.descricao = 'Component Page Field' WHERE t.tabela = 'PS_RV_APP_CPG_FLD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Condição do Atributo' WHERE t.tabela = 'PS_RB_ATTR_CND';
UPDATE migracao_rc_call_center t SET t.descricao = 'Condição do Grupo de Atributos' WHERE t.tabela = 'PS_RB_ATTR_GRP_CND';
UPDATE migracao_rc_call_center t SET t.descricao = 'Config Search Results' WHERE t.tabela = 'PS_RB_FILTER_RSLT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Configurable - General Options' WHERE t.tabela = 'PS_RDT_CFG_OPT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Configurable Components' WHERE t.tabela = 'PS_RDT_CFG_COMP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Configurable embedded tabs' WHERE t.tabela = 'PS_RDT_CFG_STATE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Configurable fields' WHERE t.tabela = 'PS_RDT_CFG_FIELD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Configurable pages' WHERE t.tabela = 'PS_RDT_CFG_PAGE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Configurable Profile Details' WHERE t.tabela = 'PS_RB_TD_PROF_DTL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Configurable Profile Setup' WHERE t.tabela = 'PS_RB_TD_PROF_SET';
UPDATE migracao_rc_call_center t SET t.descricao = 'Configurable sections' WHERE t.tabela = 'PS_RDT_CFG_SECTION';
UPDATE migracao_rc_call_center t SET t.descricao = 'Confirmation Fields' WHERE t.tabela = 'PS_RB_TD_CNF_FLDS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Confirmation Key' WHERE t.tabela = 'PS_RB_TD_CNF_KEY';
UPDATE migracao_rc_call_center t SET t.descricao = 'Contact Method Purpose Type' WHERE t.tabela = 'PS_CM_PURP_TYPE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Contact Method Type' WHERE t.tabela = 'PS_CM_TYPE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Contact Method Use Defn' WHERE t.tabela = 'PS_CM_USE_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Content field record' WHERE t.tabela = 'PS_RBN_KB_CNTNTFLD';
UPDATE migracao_rc_call_center t SET t.descricao = 'context definition' WHERE t.tabela = 'PS_EOCF_CONTEXT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Conversation Subject Table' WHERE t.tabela = 'PS_SUB_TOPIC_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Correspondence Mgt Usage Dtl' WHERE t.tabela = 'PS_RBC_USAGE_DTL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Correspondence Mgt Usage Table' WHERE t.tabela = 'PS_RBC_USAGE_DFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Cost category & Service level' WHERE t.tabela = 'PS_RF_SLVL_COSTCAT';
UPDATE migracao_rc_call_center t SET t.descricao = 'CRM Toolbar Button Definition' WHERE t.tabela = 'PS_RB_BUTTON_DEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'CRM Toolbar Content Display' WHERE t.tabela = 'PS_RB_TOOLBAR_DISP';
UPDATE migracao_rc_call_center t SET t.descricao = 'CRM Worklist Grid Definition' WHERE t.tabela = 'PS_RB_WL_GRID_DFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Customer Group Table' WHERE t.tabela = 'PS_CUST_GROUP_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Define Token Groups' WHERE t.tabela = 'PS_RBC_TKNGRP_DFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Defines the map query' WHERE t.tabela = 'PS_RBG_MAP_QRY_FLD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Defines the map query' WHERE t.tabela = 'PS_RBG_MAP_QRY_REC';
UPDATE migracao_rc_call_center t SET t.descricao = 'Definição Dados Taxas Mercado' WHERE t.tabela = 'PS_RT_RATE_DEF_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Definição do Local' WHERE t.tabela = 'PS_LOCATION_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Definição Registro Auditoria' WHERE t.tabela = 'PSRECDEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Definição Serviço de Suporte' WHERE t.tabela = 'PS_RF_ENTITLEMENTS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Delivery Options Work Record' WHERE t.tabela = 'PS_RB_WF_DELOPT_W1';
UPDATE migracao_rc_call_center t SET t.descricao = 'Delivery Options Work Record' WHERE t.tabela = 'PS_RB_WF_DELOPT_W2';
UPDATE migracao_rc_call_center t SET t.descricao = 'Departamentos' WHERE t.tabela = 'PS_DEPT_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Digital Segment' WHERE t.tabela = 'PS_SAN_SEGMENT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Display Template Configuration' WHERE t.tabela = 'PS_RC_DISP_TMP_CFG';
UPDATE migracao_rc_call_center t SET t.descricao = 'DL - Extended Attributes' WHERE t.tabela = 'PS_EOCF_TERM_ATTRS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Docs to Print Exploded Kit' WHERE t.tabela = 'PS_PRODKIT_DOC';
UPDATE migracao_rc_call_center t SET t.descricao = 'Dynamic Grid Actions' WHERE t.tabela = 'PS_RB_TD_DYN_ACT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Dynamic Grid Header record' WHERE t.tabela = 'PS_RB_TD_DYNGRDHDR';
UPDATE migracao_rc_call_center t SET t.descricao = 'Dynamic Grid key record' WHERE t.tabela = 'PS_RB_TD_DYNGRDKEY';
UPDATE migracao_rc_call_center t SET t.descricao = 'Dynamic Grid Line record' WHERE t.tabela = 'PS_RB_TD_DYNGRDLN';
UPDATE migracao_rc_call_center t SET t.descricao = 'EIP Installation Option' WHERE t.tabela = 'PS_RB_TD_EIP_INOPT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Entitlement Plan Detail' WHERE t.tabela = 'PS_RF_ENTL_PL_DTL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Entitlement Plan Header' WHERE t.tabela = 'PS_RF_ENT_PL_HDR';
UPDATE migracao_rc_call_center t SET t.descricao = 'Estados e Províncias' WHERE t.tabela = 'PS_STATE_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'External Description' WHERE t.tabela = 'PS_PROD_EXT_DESCR';
UPDATE migracao_rc_call_center t SET t.descricao = 'Feedback queue record' WHERE t.tabela = 'PS_RBN_FDBK_QUEUE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Field Definition Record' WHERE t.tabela = 'PS_RBQ_FLDDFN_REC';
UPDATE migracao_rc_call_center t SET t.descricao = 'Field Definition Role' WHERE t.tabela = 'PS_RBQ_FLDDFN_RL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Field Definition' WHERE t.tabela = 'PS_RBQ_FLDDFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'File Index Defn' WHERE t.tabela = 'PS_RB_FILEIDX_FILE';
UPDATE migracao_rc_call_center t SET t.descricao = 'File Index list' WHERE t.tabela = 'PS_RB_VRTY_PG_FIDX';
UPDATE migracao_rc_call_center t SET t.descricao = 'File Index Path' WHERE t.tabela = 'PS_RB_FILEIDX_PATH';
UPDATE migracao_rc_call_center t SET t.descricao = 'FileIndex Defn' WHERE t.tabela = 'PS_RB_FILEIDX_DEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Files attached to Template' WHERE t.tabela = 'PS_RBC_TEMPLAT_FIL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Filter Definition' WHERE t.tabela = 'PS_RB_FILTER_DEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Filter Fields' WHERE t.tabela = 'PS_RB_FILTER_FIELD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Focus Field Definition' WHERE t.tabela = 'PS_RB_TOOLBAR_FFLD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Function Group Details' WHERE t.tabela = 'PS_RSEC_FUNCGP_DTL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Functional Option Definition' WHERE t.tabela = 'PS_RSEC_FUNC_DEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Functional Option Group' WHERE t.tabela = 'PS_RSEC_FUNC_GROUP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Functional Option Messages' WHERE t.tabela = 'PS_RSEC_FUNCMSGCAT';
UPDATE migracao_rc_call_center t SET t.descricao = 'General Options' WHERE t.tabela = 'PS_RDT_TMPL_ICN_RO';
UPDATE migracao_rc_call_center t SET t.descricao = 'General Options' WHERE t.tabela = 'PS_RDT_TMPL_OPT_RO';
UPDATE migracao_rc_call_center t SET t.descricao = 'General Transaction Definition' WHERE t.tabela = 'PS_RB_TXN_DEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'General Transaction Definition' WHERE t.tabela = 'PS_RB_TXN_MKT';
UPDATE migracao_rc_call_center t SET t.descricao = 'global constants for import' WHERE t.tabela = 'PS_RB_IMP_GLB_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Group Member Cost Categories' WHERE t.tabela = 'PS_RF_COST_CAT_MEM';
UPDATE migracao_rc_call_center t SET t.descricao = 'Grupo de Clientes' WHERE t.tabela = 'PS_PCTLG_CGRP_LNK';
UPDATE migracao_rc_call_center t SET t.descricao = 'Holiday Dates' WHERE t.tabela = 'PS_HOLIDAY_DATE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Holiday Table ID' WHERE t.tabela = 'PS_HOLIDAY_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'HRMS Sections for roles.' WHERE t.tabela = 'PS_RB_TD_HCM_SEC';
UPDATE migracao_rc_call_center t SET t.descricao = 'HTTP Index Defn' WHERE t.tabela = 'PS_RB_HTTPIDX_DEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'HTTP Index Defn' WHERE t.tabela = 'PS_RB_HTTPIDX_FILE';
UPDATE migracao_rc_call_center t SET t.descricao = 'HTTP Index Defn' WHERE t.tabela = 'PS_RB_HTTPIDX_MIME';
UPDATE migracao_rc_call_center t SET t.descricao = 'HTTP Index Defn' WHERE t.tabela = 'PS_RB_HTTPIDX_URL';
UPDATE migracao_rc_call_center t SET t.descricao = 'IDs TableSet' WHERE t.tabela = 'PS_SETID_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Import Definition' WHERE t.tabela = 'PS_RB_IMPORT_DEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Import Types' WHERE t.tabela = 'PS_RB_IMP_TYPE_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Install Option - Field Service' WHERE t.tabela = 'PS_INSTALLATION_RF';
UPDATE migracao_rc_call_center t SET t.descricao = 'Install Option - Order Capture' WHERE t.tabela = 'PS_INSTALLATION_RO';
UPDATE migracao_rc_call_center t SET t.descricao = 'Installed Products Defaults' WHERE t.tabela = 'PS_RF_INSTPRD_DFLT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Integrante Grupo Fornecedores' WHERE t.tabela = 'PS_RF_GRP_MEMBER';
UPDATE migracao_rc_call_center t SET t.descricao = 'Intermediate Table for storing' WHERE t.tabela = 'PS_RC_BP_ACTIVITY';
UPDATE migracao_rc_call_center t SET t.descricao = 'Invalid Actions Defintions' WHERE t.tabela = 'PS_RC_INVALID_ACTN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Job Codes' WHERE t.tabela = 'PS_JOBCODE_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Kb Data bind' WHERE t.tabela = 'PS_RBN_KBDATA_BIND';
UPDATE migracao_rc_call_center t SET t.descricao = 'KB Data Detail' WHERE t.tabela = 'PS_RBN_KBDATADTL';
UPDATE migracao_rc_call_center t SET t.descricao = 'KB level 1' WHERE t.tabela = 'PS_RBN_LEVEL1';
UPDATE migracao_rc_call_center t SET t.descricao = 'Knowledge base control record' WHERE t.tabela = 'PS_RBN_AECNTRLTBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Knowledge base record' WHERE t.tabela = 'PS_RBN_APPDEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Knowledge base record' WHERE t.tabela = 'PS_RBN_KB';
UPDATE migracao_rc_call_center t SET t.descricao = 'Knowledge base record' WHERE t.tabela = 'PS_RBN_KB_CATGFLD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Label Templates' WHERE t.tabela = 'PS_RV_LBL_TMPL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Last system Mode' WHERE t.tabela = 'PS_RB_LST_SYS_MODE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Linha de Contrato' WHERE t.tabela = 'PS_RF_AGREEMENT_LN';
UPDATE migracao_rc_call_center t SET t.descricao = 'List Import Run Control' WHERE t.tabela = 'PS_RB_IMPT_RUNSPEC';
UPDATE migracao_rc_call_center t SET t.descricao = 'Location Timezone Table' WHERE t.tabela = 'PS_RB_LOCATION_TMZ';
UPDATE migracao_rc_call_center t SET t.descricao = 'Map Header table' WHERE t.tabela = 'PS_RBG_MAP_HDR';
UPDATE migracao_rc_call_center t SET t.descricao = 'Map Service record' WHERE t.tabela = 'PS_RBG_MAP_SERVICE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Mapping table' WHERE t.tabela = 'PS_RV_TMPL_MAP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Market Control SetUp' WHERE t.tabela = 'PS_RB_MKT_CTL_DFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Market Control Table' WHERE t.tabela = 'PS_RB_MKT_CTL_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Membership Definition' WHERE t.tabela = 'PS_RSEC_MEMBERDEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Mobile 360 Tree Records' WHERE t.tabela = 'PS_RDM_360_RECORDS';
UPDATE migracao_rc_call_center t SET t.descricao = 'NLP Application Mapping Table' WHERE t.tabela = 'PS_RBN_APPMAP';
UPDATE migracao_rc_call_center t SET t.descricao = 'NLP: Category Header Record' WHERE t.tabela = 'PS_RBN_CATEGORYHDR';
UPDATE migracao_rc_call_center t SET t.descricao = 'NLP KB level one table' WHERE t.tabela = 'PS_RBN_LEVEL2';
UPDATE migracao_rc_call_center t SET t.descricao = 'NLP Language KB' WHERE t.tabela = 'PS_RBN_LANGKB';
UPDATE migracao_rc_call_center t SET t.descricao = 'NLP: Sample Data Record' WHERE t.tabela = 'PS_RBN_KBDATADEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Node EIP Fields' WHERE t.tabela = 'PS_RB_TD_EIP_FLDS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Node Related Grid Fields' WHERE t.tabela = 'PS_RB_TD_NODE_RGRD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Node Related Grid Fields' WHERE t.tabela = 'PS_RB_TD_RGRD_FLDS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Node Sub-Interactions' WHERE t.tabela = 'PS_RB_TD_SUB_NODE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Node Type View' WHERE t.tabela = 'PS_RB_TD_VIEW';
UPDATE migracao_rc_call_center t SET t.descricao = 'Node View Fields' WHERE t.tabela = 'PS_RB_TD_PCDE_FLDS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Node View Fields' WHERE t.tabela = 'PS_RB_TD_VW_FLDS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Nomes Visualização Segurança' WHERE t.tabela = 'PS_SEC_VIEW_NAMES';
UPDATE migracao_rc_call_center t SET t.descricao = 'Nºs Atribuídos Autom por Doc' WHERE t.tabela = 'PS_AUTO_NUM_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Opções de Produto' WHERE t.tabela = 'PS_PROD_INSTALLAT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Opções Instalação Espec Local' WHERE t.tabela = 'PS_INSTALLATION';
UPDATE migracao_rc_call_center t SET t.descricao = 'Opções Instalação p/ BORM/CDM' WHERE t.tabela = 'PS_INSTALLATION_BO';
UPDATE migracao_rc_call_center t SET t.descricao = 'Page Level Configuration' WHERE t.tabela = 'PS_RB_VRTY_PG_AOPT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Page Level Configuration' WHERE t.tabela = 'PS_RB_VRTY_PG_BOPT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Page Level Configuration' WHERE t.tabela = 'PS_RB_VRTY_PG_CFG';
UPDATE migracao_rc_call_center t SET t.descricao = 'Países' WHERE t.tabela = 'PS_COUNTRY_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Panel Group' WHERE t.tabela = 'PS_RV_APP_PNLGRP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Parameter for BrScr Actions' WHERE t.tabela = 'PS_RC_INST_KEYS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Payment Terms Defn Header' WHERE t.tabela = 'PS_PAY_TRMS_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Payroll and Country Sections' WHERE t.tabela = 'PS_RB_TD_HCNTRYSEC';
UPDATE migracao_rc_call_center t SET t.descricao = 'PeopleCode Fields' WHERE t.tabela = 'PS_RB_TD_PCODE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Performance Review Ratings' WHERE t.tabela = 'PS_REVW_RATING_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Personal Quick Keys record' WHERE t.tabela = 'PS_RB_TT_PERSONAL';
UPDATE migracao_rc_call_center t SET t.descricao = 'POI Type Table' WHERE t.tabela = 'PS_POI_TYPE_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Preços Produto por UN Estoque' WHERE t.tabela = 'PS_PROD_PRICE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Price by Kit Components' WHERE t.tabela = 'PS_KIT_COMPS_PRICE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Processo de Negócio' WHERE t.tabela = 'PS_RC_BUS_PROCESS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Prod Registration dflt  status' WHERE t.tabela = 'PS_RF_PROD_RST_DFL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Product Actions Record' WHERE t.tabela = 'PS_RBT_PROD_ACTION';
UPDATE migracao_rc_call_center t SET t.descricao = 'Product Attachments' WHERE t.tabela = 'PS_PROD_IMAGES';
UPDATE migracao_rc_call_center t SET t.descricao = 'Product Based Sub BP' WHERE t.tabela = 'PS_RBT_PROD_BUSPRJ';
UPDATE migracao_rc_call_center t SET t.descricao = 'Product Branch Scripting' WHERE t.tabela = 'PS_RB_PROD_BSCRIPT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Product Brand Definition Table' WHERE t.tabela = 'PS_PROD_BRAND_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Product Category Table' WHERE t.tabela = 'PS_PROD_CATGRY_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Product Item' WHERE t.tabela = 'PS_PROD_ITEM_CURR';
UPDATE migracao_rc_call_center t SET t.descricao = 'Product Rating Model' WHERE t.tabela = 'PS_RF_PRD_RATE_MDL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Product Region' WHERE t.tabela = 'PS_PROD_REGION';
UPDATE migracao_rc_call_center t SET t.descricao = 'Product Registration Catalogs' WHERE t.tabela = 'PS_RF_PROD_REG_CAT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Product Registration Fields' WHERE t.tabela = 'PS_RF_PROD_REG_FLD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Product Subscription Terms' WHERE t.tabela = 'PS_PROD_SUB_TERMS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Product Unit of Measure' WHERE t.tabela = 'PS_PROD_UOM_CURR';
UPDATE migracao_rc_call_center t SET t.descricao = 'Produtos Concorrente OM' WHERE t.tabela = 'PS_PROD_COMPTTRS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Provider Group Competencies' WHERE t.tabela = 'PS_RF_PRVGRP_COMP';
UPDATE migracao_rc_call_center t SET t.descricao = 'PS/Financials - Unid Neg' WHERE t.tabela = 'PS_BUS_UNIT_TBL_FS';
UPDATE migracao_rc_call_center t SET t.descricao = 'question token.' WHERE t.tabela = 'PS_RC_TOKEN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Quick Create Definition' WHERE t.tabela = 'PS_RBQ_QCDFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Quick Create Template Field' WHERE t.tabela = 'PS_RBQ_QCTMPL_FLD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Quick Create Template Role' WHERE t.tabela = 'PS_RBQ_QCTMPL_RL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Quick Create Template' WHERE t.tabela = 'PS_RBQ_QCDFN_TMPL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Quick Create Template' WHERE t.tabela = 'PS_RBQ_QCTMPL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Quick Create Template' WHERE t.tabela = 'PS_RBQ_QCTMPL_REL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Quick Search Record' WHERE t.tabela = 'PS_WS_SRCH';
UPDATE migracao_rc_call_center t SET t.descricao = 'Rating Model for Reviews' WHERE t.tabela = 'PS_RATING_MDL_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'RB_TD_360_SRCH_USR_SETUP' WHERE t.tabela = 'PS_RB_TD_360SUSET';
UPDATE migracao_rc_call_center t SET t.descricao = 'RC_BS_INSTANCE' WHERE t.tabela = 'PS_RC_BS_INSTANCE';
UPDATE migracao_rc_call_center t SET t.descricao = 'RC_RATE_VALUE Table' WHERE t.tabela = 'PS_RC_RATE_VALUE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Reason Code Set-Up' WHERE t.tabela = 'PS_RB_REASON_CD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Record Index list' WHERE t.tabela = 'PS_RB_VRTY_PG_HIDX';
UPDATE migracao_rc_call_center t SET t.descricao = 'Record Index list' WHERE t.tabela = 'PS_RB_VRTY_PG_RDX1';
UPDATE migracao_rc_call_center t SET t.descricao = 'Redirect component URL setup' WHERE t.tabela = 'PS_RB_WF_COMP_MAP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Reg Impressora Gerenc Corresp' WHERE t.tabela = 'PS_RBC_PRINTER_LST';
UPDATE migracao_rc_call_center t SET t.descricao = 'Região' WHERE t.tabela = 'PS_RB_REGION';
UPDATE migracao_rc_call_center t SET t.descricao = 'Rel Viewer Role Defaults.' WHERE t.tabela = 'PS_BO_REL_ROLEDFLT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Related Security Object' WHERE t.tabela = 'PS_RSEC_OBJECT_REL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Relation table for Invalid Act' WHERE t.tabela = 'PS_RC_BP_INVL_ACTN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Relationship Category Item' WHERE t.tabela = 'PS_BO_REL_CAT_ITEM';
UPDATE migracao_rc_call_center t SET t.descricao = 'Relationship Category' WHERE t.tabela = 'PS_BO_REL_CATEGORY';
UPDATE migracao_rc_call_center t SET t.descricao = 'Relationship Tree Node Rec' WHERE t.tabela = 'PS_BO_REL_TREENDE2';
UPDATE migracao_rc_call_center t SET t.descricao = 'Relationship Tree Node Rec' WHERE t.tabela = 'PS_RDM_RELTREE_NDE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Relationship viewer' WHERE t.tabela = 'PS_BO_REL_CFG1';
UPDATE migracao_rc_call_center t SET t.descricao = 'Relationship Viewer' WHERE t.tabela = 'PS_BO_REL_CFG2';
UPDATE migracao_rc_call_center t SET t.descricao = 'Relationship Viewer' WHERE t.tabela = 'PS_BO_REL_CFG4';
UPDATE migracao_rc_call_center t SET t.descricao = 'Relationship Viewer' WHERE t.tabela = 'PS_BO_REL_VIEW_TMP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Requisição de Processo' WHERE t.tabela = 'PSPRCSRQST';
UPDATE migracao_rc_call_center t SET t.descricao = 'Result' WHERE t.tabela = 'PS_RC_AS_DRV_RSLT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Role Tree configuration' WHERE t.tabela = 'PS_RB_TD_ROLE_TREE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Script Action Page Parameter' WHERE t.tabela = 'PS_RC_BS_ACT_PAR';
UPDATE migracao_rc_call_center t SET t.descricao = 'Script Actionset Item Table' WHERE t.tabela = 'PS_RC_ACTSET_ITEM';
UPDATE migracao_rc_call_center t SET t.descricao = 'Script Actionset table' WHERE t.tabela = 'PS_RC_BS_ACTIONSET';
UPDATE migracao_rc_call_center t SET t.descricao = 'Script Answer Table' WHERE t.tabela = 'PS_RC_ANSWER_VALUE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Script Peoplecode Fucntion Rec' WHERE t.tabela = 'PS_RC_BS_FUNCTIONS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Script Question Group Table' WHERE t.tabela = 'PS_RC_QUESTION_GRP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Script Runtime Variable table' WHERE t.tabela = 'PS_RC_BS_VARIABLE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Search Group Fields' WHERE t.tabela = 'PS_RC_SG_FIELD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Search Group Rec Setup' WHERE t.tabela = 'PS_RC_SG_RECORD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Search Parameters' WHERE t.tabela = 'PS_RB_SRCH_PARMS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Security Object Definition' WHERE t.tabela = 'PS_RSEC_OBJECTDEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Security Object Definition' WHERE t.tabela = 'PS_RSEC_STAT_MENU';
UPDATE migracao_rc_call_center t SET t.descricao = 'Security Profile Functions' WHERE t.tabela = 'PS_RSEC_PROFILEFNC';
UPDATE migracao_rc_call_center t SET t.descricao = 'Security Profile Members' WHERE t.tabela = 'PS_RSEC_PROFILEMDM';
UPDATE migracao_rc_call_center t SET t.descricao = 'Security Profile View list' WHERE t.tabela = 'PS_RSEC_PROFILEVDM';
UPDATE migracao_rc_call_center t SET t.descricao = 'Security Profle Override' WHERE t.tabela = 'PS_RSEC_VIEW_FUNC';
UPDATE migracao_rc_call_center t SET t.descricao = 'Segurança Classe ID Set' WHERE t.tabela = 'PS_SEC_SETID_CLS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Segurança Classe Unid Negócio' WHERE t.tabela = 'PS_SEC_BU_CLS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Segurança ID Oper ID Set' WHERE t.tabela = 'PS_SEC_SETID_OPR';
UPDATE migracao_rc_call_center t SET t.descricao = 'Segurança ID Oper Unid Negócio' WHERE t.tabela = 'PS_SEC_BU_OPR';
UPDATE migracao_rc_call_center t SET t.descricao = 'sensitive data based on role' WHERE t.tabela = 'PS_RB_ROLE_WORKER';
UPDATE migracao_rc_call_center t SET t.descricao = 'Service Level Table' WHERE t.tabela = 'PS_RF_SERVICE_LVL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Service Pricing Table' WHERE t.tabela = 'PS_RF_SVC_PRICE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Serviço Suporte Linha Contrato' WHERE t.tabela = 'PS_RF_AG_LINE_ENTL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Site Types' WHERE t.tabela = 'PS_RD_SITETYPE_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Subtemplate Definition' WHERE t.tabela = 'PS_RBC_SUBTMPL_DFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Tab Componentes Kit Produto' WHERE t.tabela = 'PS_PRODKIT_COMPS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Tab Pai Nºs Atribuídos Autom' WHERE t.tabela = 'PS_AUTO_NUMFLD_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Tabela Campo Conteúdo NLP' WHERE t.tabela = 'PS_RBN_CNTNTFLD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Tabela Dados Taxa de Mercado' WHERE t.tabela = 'PS_RT_RATE_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Tabela de Concorrente' WHERE t.tabela = 'PS_COMPETITOR_CD';
UPDATE migracao_rc_call_center t SET t.descricao = 'Tabela de Cotação Cambial' WHERE t.tabela = 'PS_CURR_QUOTE_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Tabela de Saudações' WHERE t.tabela = 'PS_SALUTATION_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Tabela do Grupo de Produtos' WHERE t.tabela = 'PS_PROD_GROUP_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Table for Templates in Package' WHERE t.tabela = 'PS_RBC_PACKAG_TMPL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Task Event Record' WHERE t.tabela = 'PS_RC_TASK_EVENT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Task Priority Definitions' WHERE t.tabela = 'PS_RB_TSK_PRTY_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Task Record' WHERE t.tabela = 'PS_RC_TASK';
UPDATE migracao_rc_call_center t SET t.descricao = 'Task Type Role Mapping' WHERE t.tabela = 'PS_RG_UD_TSK_ROLE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Task Type Table.' WHERE t.tabela = 'PS_RB_TSK_TYPE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Telco base object for CI' WHERE t.tabela = 'PS_RBT_PROD_ITEM';
UPDATE migracao_rc_call_center t SET t.descricao = 'Template Package Definition' WHERE t.tabela = 'PS_RBC_PACKAGE_DFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Template Package Files' WHERE t.tabela = 'PS_RBC_PACKAGE_FIL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Template Table' WHERE t.tabela = 'PS_RBC_TMPLT_PDGRP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Term definition' WHERE t.tabela = 'PS_EOCF_TERM_DEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Term Functional Binds' WHERE t.tabela = 'PS_EOCF_TERM_BINDS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Term Implementation Binds' WHERE t.tabela = 'PS_EOCF_IMPL_BINDS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Term Implementation' WHERE t.tabela = 'PS_EOCF_IMPL_DEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Term Implementation' WHERE t.tabela = 'PS_EOCF_IMPL_PARMS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Text Tray Category' WHERE t.tabela = 'PS_RB_TT_CATEGORY';
UPDATE migracao_rc_call_center t SET t.descricao = 'Text Tray Options' WHERE t.tabela = 'PS_RB_TT_OPTIONS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Text Tray Term record.' WHERE t.tabela = 'PS_RB_TT_TERM';
UPDATE migracao_rc_call_center t SET t.descricao = 'Tipos Dados Taxas de Mercado' WHERE t.tabela = 'PS_RT_TYPE_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Token Group details' WHERE t.tabela = 'PS_RBC_TKNGRP_DTL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Tokens attched to Templates' WHERE t.tabela = 'PS_RBC_TEMPLAT_TKN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Toolbar Definition' WHERE t.tabela = 'PS_RB_TOOLBAR_DEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Toolbar Timezone Definition' WHERE t.tabela = 'PS_RB_TOOLBAR_TMZN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Transaction Actions' WHERE t.tabela = 'PS_RB_TD_TRANS_ACT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Transaction Header' WHERE t.tabela = 'PS_RB_TD_TRANS_HDR';
UPDATE migracao_rc_call_center t SET t.descricao = 'Transaction Sub-Interactions' WHERE t.tabela = 'PS_RB_TD_SUB_TRANS';
UPDATE migracao_rc_call_center t SET t.descricao = 'Transaction Type Defintion' WHERE t.tabela = 'PS_RBB_TRNSTYP_DFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Transaction Type Defintion' WHERE t.tabela = 'PS_RBB_TRNSTYP_DTL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Transition Target Record' WHERE t.tabela = 'PS_RC_BP_TRNS_TO';
UPDATE migracao_rc_call_center t SET t.descricao = 'Tree EIP' WHERE t.tabela = 'PS_RB_TD_EIP';
UPDATE migracao_rc_call_center t SET t.descricao = 'Tree Node' WHERE t.tabela = 'PS_RB_TD_NODE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Tree Node' WHERE t.tabela = 'PS_RB_TD_TREE_NDE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Unid Taxa Conversão de Medida' WHERE t.tabela = 'PS_UNITS_CVT_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Unidade de Medida de Produto' WHERE t.tabela = 'PS_PROD_UOM';
UPDATE migracao_rc_call_center t SET t.descricao = 'Unidades de Medida' WHERE t.tabela = 'PS_UNITS_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'URI definitions for Int n Ext' WHERE t.tabela = 'PS_RB_WF_URI_DEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Usada para Definir Categorias' WHERE t.tabela = 'PS_RBC_TEMPLT_CAT';
UPDATE migracao_rc_call_center t SET t.descricao = 'Usada para Definir Tipos' WHERE t.tabela = 'PS_RBC_TEMPLT_TYPE';
UPDATE migracao_rc_call_center t SET t.descricao = 'Usages used on Template' WHERE t.tabela = 'PS_RBC_PACKAGE_USG';
UPDATE migracao_rc_call_center t SET t.descricao = 'Used to setup Moods' WHERE t.tabela = 'PS_RB_MOOD_ID';
UPDATE migracao_rc_call_center t SET t.descricao = 'User Default Filter Set' WHERE t.tabela = 'PS_RD_DFLT_FILTER';
UPDATE migracao_rc_call_center t SET t.descricao = 'User Preferences' WHERE t.tabela = 'PS_OPR_DEF_TBL_RB';
UPDATE migracao_rc_call_center t SET t.descricao = 'Verity Search Index Template' WHERE t.tabela = 'PS_RB_SRCHIDX_HDR';
UPDATE migracao_rc_call_center t SET t.descricao = 'View Privilege Definition' WHERE t.tabela = 'PS_RSEC_VIEW_DEFN';
UPDATE migracao_rc_call_center t SET t.descricao = 'Vínculo Grupo Produtos-Produto' WHERE t.tabela = 'PS_PROD_PGRP_LNK';
UPDATE migracao_rc_call_center t SET t.descricao = 'Worker Functions' WHERE t.tabela = 'PS_RB_WRK_FUNC_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = 'Worklist Completion' WHERE t.tabela = 'PS_RBB_AAF_CMPLWL';
UPDATE migracao_rc_call_center t SET t.descricao = 'ÿndices das Taxas de Mercado' WHERE t.tabela = 'PS_RT_INDEX_TBL';
UPDATE migracao_rc_call_center t SET t.descricao = '360 View Tree Header' WHERE t.tabela = 'PS_RB_TD_TREE_HDR';

select count(1) from psrecdefn;--22418
-- DESCRLONG LONG

select count(1) from psdbfldlabl;--57301

-- UPDATE TIPO RC correcao
UPDATE migracao_rc_call_center t
   SET t.tipo = 'RC'
 WHERE t.tabela IN (
'PS_ABNP_BLACKOUT',
'PS_ABNP_DNC_CHNL',
'PS_ABNP_DNC_PROD',
'PS_ABNP_MIG_RETURN',
'PS_ABNP_OLM_RETURN',
'PS_ABN_ACCT_XREF',
'PS_ABN_ALIM_TABELA',
'PS_ABN_ALIM_TB_AET',
'PS_ABN_AUDIT_TBLAO',
'PS_ABN_BUS_UNIT_RA',
'PS_ABN_CAMPAIGN',
'PS_ABN_CAMPGN_RSTR',
'PS_ABN_CASE_AET',
'PS_ABN_CA_TY_DE_CT',
'PS_ABN_CA_TY_DE_SC',
'PS_ABN_CA_TY_D_TMP',
'PS_ABN_CA_TY_S_TMP',
'PS_ABN_CMPGN_CTRL',
'PS_ABN_CMPGN_DEL',
'PS_ABN_CMP_STS_RST',
'PS_ABN_CNT_RSN_DTL',
'PS_ABN_CONTACT_RSN',
'PS_ABN_CONT_BLOCK',
'PS_ABN_CPNY_TEMPL',
'PS_ABN_CUST_AET',
'PS_ABN_EMPPERS_AET',
'PS_ABN_EXCREL_TBL',
'PS_ABN_FINANC_TBL',
'PS_ABN_FREQ_BLACK',
'PS_ABN_GRP_ORIGEM',
'PS_ABN_INT_AET',
'PS_ABN_INT_DEFAULT',
'PS_ABN_LOAD_ACCT',
'PS_ABN_LOAD_CUST',
'PS_ABN_LOCAIS_AET',
'PS_ABN_NOT_STS_RST',
'PS_ABN_PN_INVLD_CT',
'PS_ABN_PRDEXP_AET',
'PS_ABN_PRDEXP_TBL',
'PS_ABN_PRD_CAT_AET',
'PS_ABN_PRVGRP_CO',
'PS_ABN_RA_STAT_SEC',
'PS_ABN_REQ_INF_LOG',
'PS_ABN_REST_CAD_WL',
'PS_ABN_RNCTRL_DMSR',
'PS_ABN_ROLLOUT_CTR',
'PS_ABN_RUNCNTL_INT',
'PS_ABN_RUN_DISTR_H',
'PS_ABN_RUN_LOCAIS',
'PS_ABN_RUN_MIGRAC',
'PS_ABN_RUN_MIG_ACC',
'PS_ABN_RUN_PRD_CAT',
'PS_ABN_SETUP_BLOCK',
'PS_ABN_SR_AREA',
'PS_ABN_SR_BCH_AREA',
'PS_ABN_SR_CAUSE',
'PS_ABN_SR_CHANNEL',
'PS_ABN_SR_CLASSIF',
'PS_ABN_SR_CLS_AET',
'PS_ABN_SR_CLS_AREA',
'PS_ABN_SR_CLS_CAUH',
'PS_ABN_SR_CLS_CAUS',
'PS_ABN_SR_CSE_NOTE',
'PS_ABN_SR_ESCL_TM',
'PS_ABN_SR_FEEDBACK',
'PS_ABN_SR_MNDTR_ID',
'PS_ABN_SR_ODC',
'PS_ABN_SR_ODC_ORIG',
'PS_ABN_SR_OUVIDOR',
'PS_ABN_SR_PAR_AREA',
'PS_ABN_SR_PAR_PRIO',
'PS_ABN_SR_PAR_SCRI',
'PS_ABN_SR_PAR_SLA',
'PS_ABN_SR_PAT_CRIT',
'PS_ABN_SR_POST_ATT',
'PS_ABN_SR_PRIORITY',
'PS_ABN_SR_PROCESS',
'PS_ABN_SR_PROC_HDR',
'PS_ABN_SR_REINCIDN',
'PS_ABN_SR_REIN_DFL',
'PS_ABN_SR_REQ_FLG',
'PS_ABN_SR_ROLE',
'PS_ABN_SR_SCRIPT',
'PS_ABN_SR_SLA',
'PS_ABN_SR_SLA_DFLT',
'PS_ABN_SR_SOLN_TBL',
'PS_ABN_SR_SPCL_CST',
'PS_ABN_SR_STATUS',
'PS_ABN_SR_STD_SOLN',
'PS_ABN_SR_STG_NOTI',
'PS_ABN_SR_SUBCAUSE',
'PS_ABN_SR_SUBJECT',
'PS_ABN_SR_SUGGESTN',
'PS_ABN_SR_TRATMAN',
'PS_ABN_SR_XCP_CAUS',
'PS_ABN_SR_XCP_SRC',
'PS_ABN_WAV_STS_RST',
'PS_RBT_SOLN_LB_LNG',
'PS_RBT_TGUIDE',
'PS_RBT_TGUIDE_LNG',
'PS_RC_BSUPG_AET',
'PS_RC_BSUPG_TMP',
'PS_RC_BS_ANSWER',
'PS_RC_CASETYPE_LNG',
'PS_RC_CASETYPE_TBL',
'PS_RC_CASE_STYPE_L',
'PS_RC_CASE_SUBTYPE',
'PS_RC_CATEGORY_LNG',
'PS_RC_CATEGORY_TBL',
'PS_RC_CATEGORY_TMP',
'PS_RC_CATYDE_COMP',
'PS_RC_CATY_COMP',
'PS_RC_CA_COMP',
'PS_RC_CA_TY_DE_LNG',
'PS_RC_CA_TY_DE_TBL',
'PS_RC_CA_TY_DE_TMP',
'PS_RC_CA_TY_LNG',
'PS_RC_CA_TY_TBL',
'PS_RC_CA_TY_TMP',
'PS_RC_CC_WF_AET',
'PS_RC_CNTCTMTH_LNG',
'PS_RC_ERROR_TBL',
'PS_RC_EVENT_SET',
'PS_RC_GRP_ASGMNT',
'PS_RC_IMPACT_LNG',
'PS_RC_IMPACT_TBL',
'PS_RC_LINK_KEY_TBL',
'PS_RC_NOTETYPE_LNG',
'PS_RC_NOTETYPE_TBL',
'PS_RC_PRIORITY_LNG',
'PS_RC_PRIORITY_TBL',
'PS_RC_PROBTYPE_LNG',
'PS_RC_PROBTYPE_TBL',
'PS_RC_PT_COMP',
'PS_RC_REASON_SOLN',
'PS_RC_RELATION_LNG',
'PS_RC_RELATION_TBL',
'PS_RC_REL_SOL_AET',
'PS_RC_RSN_INT_LNG',
'PS_RC_SA_RSLT_KEYS',
'PS_RC_SCRIPT_TMP',
'PS_RC_SEVERITY_LNG',
'PS_RC_SEVERITY_TBL',
'PS_RC_SOLN_ATH_LNG',
'PS_RC_SOLN_ATTACH',
'PS_RC_SOLN_CTD',
'PS_RC_SOLN_ERROR',
'PS_RC_SOLN_HIST',
'PS_RC_SOLN_HISTORY',
'PS_RC_SOLN_LIB_LIB',
'PS_RC_SOLN_LIB_LNG',
'PS_RC_SOLN_LIB_TBL',
'PS_RC_SOLN_NOTE',
'PS_RC_SOLN_PRODUCT',
'PS_RC_SOLN_USG_AET',
'PS_RC_SOLUTION',
'PS_RC_SOLUTION_BP',
'PS_RC_SOLUTION_DTL',
'PS_RC_SOLUTION_LNG',
'PS_RC_SOLUTION_WL',
'PS_RC_SOL_ADH_AET',
'PS_RC_SOL_PRODSRCH',
'PS_RC_SOURCE_LNG',
'PS_RC_SOURCE_TBL',
'PS_RC_STATUS_LNG',
'PS_RC_STATUS_TBL',
'PS_RC_TOP_SOL',
'PS_RC_WFL_ETST_LNG',
'PS_RC_WFL_EVENTSET',
'PS_RC_WF_RUN_CNTL',
'PS_RD_COMPANY_NOTE',
'PS_RSF_WFL_EVENTS',
'PS_RUN_CASES',
'PS_RUN_CASESBYCUST',
'PS_RUN_HELPDESK',
'PS_RUN_RCC1000',
'PS_RUN_RCC2000',
'PS_RUN_RCC2012',
'PS_RUN_RCC2014',
'PS_RUN_RCCTOP100',
'PS_SAN_AREA_CONC',
'PS_SAN_AREA_SOLUC',
'PS_SAN_CASETYP_GRP',
'PS_SAN_CASE_PARAM',
'PS_SAN_CASE_RUN',
'PS_SAN_CASE_RUNPAR',
'PS_SAN_CATEG_GRP',
'PS_SAN_CA_TY_DE_MC',
'PS_SAN_CA_TY_M_TMP',
'PS_SAN_CNTRL_LOCFI',
'PS_SAN_CNT_CAT_REC',
'PS_SAN_CTD_TABELAO',
'PS_SAN_CUST_AET',
'PS_SAN_CUST_PAR',
'PS_SAN_CUST_RUN',
'PS_SAN_DEFAULT_OUV',
'PS_SAN_DEPARA_CLIC',
'PS_SAN_DEPARA_MATR',
'PS_SAN_ESCA12_AET',
'PS_SAN_ESCALO_AET',
'PS_SAN_ESCAL_EMAIL',
'PS_SAN_FAM_ORIGEM',
'PS_SAN_GERA_TBELAO',
'PS_SAN_HORA_ESCALO',
'PS_SAN_INATV_SINTM',
'PS_SAN_LE_SINT_REC',
'PS_SAN_MODEL_CARTA',
'PS_SAN_ORIGMOB_TBL',
'PS_SAN_PARAM_FASES',
'PS_SAN_PARAM_SLA',
'PS_SAN_PROD_CANAL',
'PS_SAN_PROD_RAMO',
'PS_SAN_PROVGRP_ORI',
'PS_SAN_PRZ_OUVI',
'PS_SAN_RC_CASE_LOG',
'PS_SAN_RD_SEGMENT',
'PS_SAN_RNCTRL_XDOM',
'PS_SAN_SINTOMA_GRP',
'PS_SAN_SOURCE_OUVI',
'PS_SAN_SR_MOT_INSA',
'PS_SAN_TIME_ESCALO',
'PS_SAN_TYPE_OUVI',
'PS_SAN_WEB_PUB_REC',
'PS_SUBJECT_DTL_TBL',
'PS_SUBJECT_HDR_TBL',
'PS_UPG_BC_AET',
'PS_UPG_CH_DET_AET',
'PS_UPG_RCEVTST_AET',
'PS_UPG_RC_EVENTSET',
'PS_UPG_SOL_ADH_AET'
); 

-- UPDATE TIPO Parametrizacao correcao
UPDATE migracao_rc_call_center t
   SET t.tipo = 'Parametrizacao'
 WHERE t.tabela IN (
'PS_ALT_CHAR_TBL',
'PS_AUTO_NUM_TBL',
'PS_AUTO_NUMFLD_TBL',
'PS_BO_NAME_TYPE',
'PS_BO_REL_CAT_ITEM',
'PS_BO_REL_CATEGORY',
'PS_BO_REL_CFG1',
'PS_BO_REL_CFG2',
'PS_BO_REL_CFG3',
'PS_BO_REL_CFG4',
'PS_BO_REL_ROLEDFLT',
'PS_BO_REL_TREENDE2',
'PS_BO_REL_TYPE',
'PS_BO_REL_VIEW_TMP',
'PS_BO_ROLE',
'PS_BO_ROLE_TYPE',
'PS_BO_ROLE_TYPE_QC',
'PS_BO_TYPE',
'PS_BUS_UNIT_RC_RDT',
'PS_BUS_UNIT_TBL_FS',
'PS_CM_PURP_TYPE',
'PS_CM_TYPE',
'PS_CM_TYPE_REL',
'PS_CM_TYPE_ROLE',
'PS_CM_TYPE_TBL',
'PS_CM_TYPE_USE',
'PS_CM_USE_TBL',
'PS_COLLECTOR_TBL',
'PS_COMPETENCY_TBL',
'PS_COMPETENCY_TYPS',
'PS_COMPETITOR_CD',
'PS_COUNTRY_TBL',
'PS_CR_ANALYST_TBL',
'PS_CURR_QUOTE_TBL',
'PS_CURRENCY_CD_TBL',
'PS_CUST_GROUP_TBL',
'PS_DEPT_TBL',
'PS_EOCF_CONTEXT',
'PS_EOCF_IMPL_BINDS',
'PS_EOCF_IMPL_DEFN',
'PS_EOCF_IMPL_PARMS',
'PS_EOCF_TERM_ATTRS',
'PS_EOCF_TERM_BINDS',
'PS_EOCF_TERM_DEFN',
'PS_HOLIDAY_DATE',
'PS_HOLIDAY_TBL',
'PS_INSTALLATION',
'PS_INSTALLATION_BO',
'PS_INSTALLATION_RF',
'PS_INSTALLATION_RO',
'PS_JOBCODE_TBL',
'PS_KIT_COMPS_PRICE',
'PS_LOCATION_TBL',
'PS_OPR_DEF_TBL_RB',
'PS_OPR_DEF_TBL_RG',
'PS_PAY_TRMS_TBL',
'PS_PCTLG_CGRP_LNK',
'PS_POI_TYPE_TBL',
'PS_PROD_ATT',
'PS_PROD_BRAND_TBL',
'PS_PROD_CATGRY_TBL',
'PS_PROD_COMPTTRS',
'PS_PROD_EXT_DESCR',
'PS_PROD_GROUP_TBL',
'PS_PROD_IMAGES',
'PS_PROD_INSTALLAT',
'PS_PROD_ITEM_CURR',
'PS_PROD_PGRP_LNK',
'PS_PROD_PRICE',
'PS_PROD_PRICE_BU',
'PS_PROD_REGION',
'PS_PROD_SUB_TERMS',
'PS_PROD_UOM',
'PS_PROD_UOM_CURR',
'PS_PRODKIT_COMPS',
'PS_PRODKIT_DOC',
'PS_PRODKIT_HEADER',
'PSCLOCK',
'PSRECDEFN',
'PS_RATING_MDL_TBL',
'PS_RB_ANON_BO_ID',
'PS_RB_ATTR_CND',
'PS_RB_ATTR_GROUP',
'PS_RB_ATTR_GRP_CND',
'PS_RB_ATTR_ITEM',
'PS_RB_ATTR_KEY_MAP',
'PS_RB_ATTR_RULE',
'PS_RB_ATTRIBUTE',
'PS_RB_BUTTON_DEFN',
'PS_RB_FILEIDX_DEFN',
'PS_RB_FILEIDX_FILE',
'PS_RB_FILEIDX_PATH',
'PS_RB_FILTER_DEFN',
'PS_RB_FILTER_FIELD',
'PS_RB_FILTER_RSLT',
'PS_RB_HTTPIDX_DEFN',
'PS_RB_HTTPIDX_FILE',
'PS_RB_HTTPIDX_MIME',
'PS_RB_HTTPIDX_URL',
'PS_RB_IMP_EDIT_VW',
'PS_RB_IMP_GLB_TBL',
'PS_RB_LOCATION_TMZ',
'PS_RB_LST_SYS_MODE',
'PS_RB_MKT_CTL_DFN',
'PS_RB_MKT_CTL_TBL',
'PS_RB_MOOD_ID',
'PS_RB_OBJ_ATTR',
'PS_RB_OBJ_ATTR_GRP',
'PS_RB_OBJECT_TYPE',
'PS_RB_PROD_BSCRIPT',
'PS_RB_REASON_CD',
'PS_RB_REGION',
'PS_RB_ROLE_WORKER',
'PS_RB_SRCH_PARMS',
'PS_RB_SRCHIDX_HDR',
'PS_RB_TD_360SUSET',
'PS_RB_TD_ACT_CAT',
'PS_RB_TD_ACT_DFN',
'PS_RB_TD_ANON_HDR',
'PS_RB_TD_ANON_LINK',
'PS_RB_TD_CNF_FLDS',
'PS_RB_TD_CNF_KEY',
'PS_RB_TD_DYN_ACT',
'PS_RB_TD_DYNGRDHDR',
'PS_RB_TD_DYNGRDKEY',
'PS_RB_TD_DYNGRDLN',
'PS_RB_TD_EIP',
'PS_RB_TD_EIP_FLDS',
'PS_RB_TD_EIP_INOPT',
'PS_RB_TD_HCM_SEC',
'PS_RB_TD_HCNTRYSEC',
'PS_RB_TD_NODE',
'PS_RB_TD_NODE_RGRD',
'PS_RB_TD_PCDE_FLDS',
'PS_RB_TD_PCODE',
'PS_RB_TD_PROF_DTL',
'PS_RB_TD_PROF_SET',
'PS_RB_TD_RGRD_FLDS',
'PS_RB_TD_ROLE_TREE',
'PS_RB_TD_SUB_NODE',
'PS_RB_TD_SUB_TRANS',
'PS_RB_TD_TRANS_ACT',
'PS_RB_TD_TRANS_HDR',
'PS_RB_TD_TREE_HDR',
'PS_RB_TD_TREE_NDE',
'PS_RB_TD_VIEW',
'PS_RB_TD_VW_FLDS',
'PS_RB_TOOLBAR_DEFN',
'PS_RB_TOOLBAR_DISP',
'PS_RB_TOOLBAR_FFLD',
'PS_RB_TOOLBAR_TMZN',
'PS_RB_TSK_PRTY_TBL',
'PS_RB_TSK_TYPE',
'PS_RB_TT_CATEGORY',
'PS_RB_TT_OPTIONS',
'PS_RB_TT_PERSONAL',
'PS_RB_TT_TERM',
'PS_RB_TXN_DEFN',
'PS_RB_TXN_MKT',
'PS_RB_VRTY_PG_AOPT',
'PS_RB_VRTY_PG_BOPT',
'PS_RB_VRTY_PG_CFG',
'PS_RB_VRTY_PG_FIDX',
'PS_RB_VRTY_PG_HIDX',
'PS_RB_VRTY_PG_RDX1',
'PS_RB_WF_COMP_MAP',
'PS_RB_WF_DELOPT_W1',
'PS_RB_WF_DELOPT_W2',
'PS_RB_WF_URI_DEFN',
'PS_RB_WL_GRID_DFN',
'PS_RB_WRK_FUNC_TBL',
'PS_RBB_AAF_CMPLWL',
'PS_RBB_AAF_RULEBND',
'PS_RBB_BPEL_ORMI',
'PS_RBB_TRNSTYP_DFN',
'PS_RBB_TRNSTYP_DTL',
'PS_RBB_VIEW_SETUP',
'PS_RBC_CM_SYSDEFN',
'PS_RBC_PACKAG_TMPL',
'PS_RBC_PACKAGE_DFN',
'PS_RBC_PACKAGE_FIL',
'PS_RBC_PACKAGE_USG',
'PS_RBC_PRINTER_LST',
'PS_RBC_SUBTMPL_DFN',
'PS_RBC_TEMPLAT_DFN',
'PS_RBC_TEMPLAT_FIL',
'PS_RBC_TEMPLAT_TKN',
'PS_RBC_TEMPLT_CAT',
'PS_RBC_TEMPLT_TYPE',
'PS_RBC_TKNGRP_DFN',
'PS_RBC_TKNGRP_DTL',
'PS_RBC_TMPLT_CAT_T',
'PS_RBC_TMPLT_PDGRP',
'PS_RBC_USAGE_DFN',
'PS_RBC_USAGE_DTL',
'PS_RBG_MAP_HDR',
'PS_RBG_MAP_QRY_FLD',
'PS_RBG_MAP_QRY_REC',
'PS_RBG_MAP_SERVICE',
'PS_RBN_AECNTRLTBL',
'PS_RBN_APPDEFN',
'PS_RBN_APPMAP',
'PS_RBN_CATEGORYDTL',
'PS_RBN_CATEGORYHDR',
'PS_RBN_CNTNTFLD',
'PS_RBN_FDBK_QUEUE',
'PS_RBN_KB',
'PS_RBN_KB_CATGFLD',
'PS_RBN_KB_CNTNTFLD',
'PS_RBN_KBDATA_BIND',
'PS_RBN_KBDATADEFN',
'PS_RBN_KBDATADTL',
'PS_RBN_LANGKB',
'PS_RBN_LEVEL1',
'PS_RBN_LEVEL2',
'PS_RBQ_ADPTFL_TMP',
'PS_RBQ_ADPTR',
'PS_RBQ_ADPTR_EXT',
'PS_RBQ_ADPTR_FLD',
'PS_RBQ_ADPTR_LBL',
'PS_RBQ_ADPTR_RL',
'PS_RBQ_ADPTR_SECT',
'PS_RBQ_CRITDFN',
'PS_RBQ_CRITDFN_FLD',
'PS_RBQ_FLDDFN',
'PS_RBQ_FLDDFN_REC',
'PS_RBQ_FLDDFN_RL',
'PS_RBQ_QCDFN',
'PS_RBQ_QCDFN_TMPL',
'PS_RBQ_QCTMPL',
'PS_RBQ_QCTMPL_FLD',
'PS_RBQ_QCTMPL_REL',
'PS_RBQ_QCTMPL_RL',
'PS_RBQ_SRCHDFN',
'PS_RBQ_SRCHDFN_FLD',
'PS_RBQ_SRCHDFN_GRP',
'PS_RBQ_SRCHDFN_RL',
'PS_RBQ_SRCHRL',
'PS_RBQ_SRCHRL_FLD',
'PS_RBT_PROD_ACTION',
'PS_RBT_PROD_BUSPRJ',
'PS_RBT_PROD_ITEM',
'PS_RC_ACTSET_ITEM',
'PS_RC_ANS_DRV_ID',
'PS_RC_ANS_SCROLL',
'PS_RC_ANS_SCROLL2',
'PS_RC_ANSWER_RULE',
'PS_RC_ANSWER_SET',
'PS_RC_ANSWER_VALUE',
'PS_RC_AS_DRV_RSLT',
'PS_RC_BP_ACTIVITY',
'PS_RC_BP_EVENT',
'PS_RC_BP_INVL_ACTN',
'PS_RC_BP_TRNS_TO',
'PS_RC_BR_SCROLL',
'PS_RC_BS_ACT_PAR',
'PS_RC_BS_ACTION',
'PS_RC_BS_ACTIONSET',
'PS_RC_BS_FUNCTIONS',
'PS_RC_BS_INSTANCE',
'PS_RC_BS_TREE',
'PS_RC_BS_VARIABLE',
'PS_RC_BSCRIPT',
'PS_RC_BUS_PROCESS',
'PS_RC_DISP_TMP_CFG',
'PS_RC_INST_KEYS',
'PS_RC_INVALID_ACTN',
'PS_RC_QUEST_ITEM',
'PS_RC_QUESTION',
'PS_RC_QUESTION_GRP',
'PS_RC_RATE_SET',
'PS_RC_RATE_VALUE',
'PS_RC_RULE',
'PS_RC_RULE_COND',
'PS_RC_RULE_ITEM',
'PS_RC_RULE_SCROLL',
'PS_RC_RULE_SET',
'PS_RC_SG_FIELD',
'PS_RC_SG_RECORD',
'PS_RC_TASK',
'PS_RC_TASK_EVENT',
'PS_RC_TOKEN',
'PS_RC_VARIABLE',
'PS_RD_DFLT_FILTER',
'PS_RD_SITETYPE_TBL',
'PS_RDM_360_RECORDS',
'PS_RDM_RELTREE_NDE',
'PS_RDT_CFG_COMP',
'PS_RDT_CFG_FIELD',
'PS_RDT_CFG_OPT',
'PS_RDT_CFG_PAGE',
'PS_RDT_CFG_SECTION',
'PS_RDT_CFG_STATE',
'PS_RDT_TMPL_ICN_RO',
'PS_RDT_TMPL_OPT_RO',
'PS_REVW_RATING_TBL',
'PS_RF_AG_LINE_ENTL',
'PS_RF_AG_LINE_PROD',
'PS_RF_AGREEMENT_LN',
'PS_RF_ASSIGN_WGHT',
'PS_RF_ASSIGN_WT_PG',
'PS_RF_COST_CAT',
'PS_RF_COST_CAT_GRP',
'PS_RF_COST_CAT_MEM',
'PS_RF_ENT_PL_HDR',
'PS_RF_ENTITLEMENTS',
'PS_RF_ENTL_PL_DTL',
'PS_RF_GRP_MEMBER',
'PS_RF_INSTPRD_DFLT',
'PS_RF_PRD_RATE_MDL',
'PS_RF_PROD_REG_CAT',
'PS_RF_PROD_REG_FLD',
'PS_RF_PROD_RST_DFL',
'PS_RF_PRVGRP_COMP',
'PS_RF_SERVICE_LVL',
'PS_RF_SLVL_COSTCAT',
'PS_RF_SVC_PRICE',
'PS_RG_UD_TSK_ROLE',
'PS_RSEC_FUNC_DEFN',
'PS_RSEC_FUNC_GROUP',
'PS_RSEC_FUNCGP_DTL',
'PS_RSEC_FUNCMSGCAT',
'PS_RSEC_MEMBERDEFN',
'PS_RSEC_OBJECT_REL',
'PS_RSEC_OBJECTDEFN',
'PS_RSEC_PROFILEDFN',
'PS_RSEC_PROFILEFNC',
'PS_RSEC_PROFILEMDM',
'PS_RSEC_PROFILEVDM',
'PS_RSEC_STAT_MENU',
'PS_RSEC_VIEW_DEFN',
'PS_RSEC_VIEW_FUNC',
'PS_RT_INDEX_TBL',
'PS_RT_RATE_DEF_TBL',
'PS_RT_RATE_TBL',
'PS_RT_TYPE_TBL',
'PS_RV_APP_COMP',
'PS_RV_APP_CPG',
'PS_RV_APP_CPG_FLD',
'PS_RV_APP_PNLGRP',
'PS_RV_LBL_TMPL',
'PS_RV_TMPL_MAP',
'PS_SALUTATION_TBL',
'PS_SAN_SEGMENT',
'PS_SEC_BU_CLS',
'PS_SEC_BU_OPR',
'PS_SEC_SETID_CLS',
'PS_SEC_SETID_OPR',
'PS_SEC_VIEW_NAMES',
'PS_SETID_TBL',
'PS_STATE_TBL',
'PS_SUB_TOPIC_TBL',
'PS_UNITS_CVT_TBL',
'PS_UNITS_TBL',
'PS_WS_SRCH',
'PSPRCSRQST',
'PS_RB_IMPORT_DEFN',
'PS_RB_IMPT_RUNSPEC',
'PS_RB_IMP_TYPE_TBL',
'PS_RB_MATCHING_SQL'
);

--update migracao_rc_call_center set tipo='' where tipo='Parametrizacao';

select tipo, count(1) from migracao_rc_call_center group by tipo;
/*
TIPO	        COUNT(1)
Parametrizacao	359
RC	             78
	            647
*/    