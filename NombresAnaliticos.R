#Manipulación de los nombres de los datos del Raw - Nombres STC -> Nombres analíticos.

#Lectura de la data
library(readr)
BCCA_TDP_DATA_RAW <- read_csv("BCCA_TDP_DATA_RAW.csv", 
                              col_types = list("costpl_n" = col_double(), "cnttoc_n"= col_double(), 
                                               "cntnrc_n"= col_double(), "cnttmc_n"= col_double(), 
                                               "fld139_n"= col_double(), "fld141_n"= col_double(), 
                                               "fld143_n"= col_double(), "fld145_n"= col_double(), 
                                               "fld146_n"= col_double(),
                                               "cant1m_n"= col_double(), "mont1m_n"= col_double(), "cant3m_n"= col_double(), "mont3m_n"= col_double(), "cant6m_n"= col_double(), "mont6m_n"= col_double(), "ctotal_n"= col_double(), "mtotal_n"= col_double()))
BCCA_TDP_DATA_RAW_SAVE <- BCCA_TDP_DATA_RAW

names(BCCA_TDP_DATA_RAW) <- c("id",      "xanexo_n","xtelef_n","vgener_c","vedadc_n","vantig_n","vnline_n","vprodu_c","vecivi_c",
                              "vdepar_c1","vprovi_c1","vdisti_c1","vsetdp_c","vgamma_c","veaseg_c","veanti_n","vtperm_c","vtrc11_n",
                              "vrc11f_n","vrc11c_n","vrc11r_n","vrc11a_n","vrc11p_n","vtrc13_n","vrc13f_n","vrc13c_n","vrc13r_n",
                              "vrc13a_n","vrc13p_n","vtrc16_n","vrc16f_n","vrc16c_n","vrc16r_n","vrc16a_n","vrc16p_n","vtrc21_n",
                              "vrc21f_n","vrc21c_n","vrc21r_n","vrc21a_n","vrc21p_n","vtrc23_n","vrc23f_n","vrc23c_n","vrc23r_n",
                              "vrc23a_n","vrc23p_n","vtrc26_n","vrc26f_n","vrc26c_n","vrc26r_n","vrc26a_n","vrc26p_n","vtrc31_n",
                              "vrc31f_n","vrc31c_n","vrc31r_n","vrc31a_n","vrc31p_n","vtrc33_n","vrc33f_n","vrc33c_n","vrc33r_n",
                              "vrc33a_n","vrc33p_n","vtrc36_n","vrc36f_n","vrc36c_n","vrc36r_n","vrc36a_n","vrc36p_n","vtrc41_n",
                              "vrc41f_n","vrc41c_n","vrc41r_n","vrc41a_n","vrc41p_n","vtrc43_n","vrc43f_n","vrc43c_n","vrc43r_n",
                              "vrc43a_n","vrc43p_n","vtrc46_n","vrc46f_n","vrc46c_n","vrc46r_n","vrc46a_n","vrc46p_n","vcplan_n",
                              "vcrequ_c","vctcpl_n","vccpno_n","vccpte_n","vccdeu_n","vcclcv_n","vcclcs_n","vcclcd_n","vcsbaj_n",
                              "vtarge_c","xtccpr_c","xtccli_c","xtccts_c","xtctic_c","xcordi_n","xtccop_n","xtciny_c","xivtip_c",
                              "xtcser_c","xmequi_c","xtcces_n","xtcaes_n","xtcmes_n","xtcdes_n","xivgas_c","xtcdsg_c","xtcccl_n",
                              "xtccdi_n","xtccme_n","xtccan_n","xtcndi_n","xtcnme_n","xtcnan_n","xtcesc_c","xtcsex_c","vtrp11_n",
                              "vrp11f_n","vrp11a_n","vrp11p_n","vtrp13_n","vrp13f_n","vrp13a_n","vrp13p_n","vtrp16_n","vrp16f_n",
                              "vrp16a_n","vrp16p_n","vtrp21_n","vrp21f_n","vrp21a_n","vrp21p_n","vtrp23_n","vrp23f_n","vrp23a_n",
                              "vrp23p_n","vtrp26_n","vrp26f_n","vrp26a_n","vrp26p_n","vtrp31_n","vrp31f_n","vrp31a_n","vrp31p_n",
                              "vtrp33_n","vrp33f_n","vrp33a_n","vrp33p_n","vtrp36_n","vrp36f_n","vrp36a_n","vrp36p_n","vtrp41_n",
                              "vrp41f_n","vrp41a_n","vrp41p_n","vtrp43_n","vrp43f_n","vrp43a_n","vrp43p_n","vtrp46_n","vrp46f_n",
                              "vrp46a_n","vrp46p_n","otcpp6_n","oncpp1_n","oncpp3_n","oncpp6_n","otcpi6_n","oncpi1_n","oncpi3_n",
                              "oncpi6_n","otspp6_n","onspp1_n","onspp3_n","onspp6_n","otspi6_n","onspi1_n","onspi3_n","onspi6_n",
                              "ocpcla_n","ocpent_n","ocpvit_n","ttmrcl_n","tmrcl1_n","tmrcl3_n","tmrcl6_n","ttmren_n","tmren1_n",
                              "tmren3_n","tmren6_n","ttmrvi_n","tmrvi1_n","tmrvi3_n","tmrvi6_n","ttmhcl_n","tmhcl1_n","tmhcl3_n",
                              "tmhcl6_n","ttmhen_n","tmhen1_n","tmhen3_n","tmhen6_n","ttmhvi_n","tmhvi1_n","tmhvi3_n","tmhvi6_n",
                              "ttkbco_n","tkbco1_n","tkbco3_n","tkbco6_n","tsmsen_n","tsmse1_n","tsmse3_n","tsmse6_n","ttcall_n",
                              "tcall1_n","tcall3_n","tcall6_n","tcmlpl_n","tckbpl_n","tcsmsp_n","tmilmm_c","tmilmf_c","tmilmo_c",
                              "tsmsil_c","ftexre_n","fmtexr_n","fcexr1_n","fmexr1_n","fcexr3_n","fmexr3_n","fcexr6_n","fmexr6_n",
                              "figtdp_n","ecprpl_c","ecrec1_n","emrec1_n","ecrec3_n","emrec3_n","ecrec6_n","emrec6_n","ectrec_n",
                              "emtrec_n","vtrec1_n","vtrec2_n","vtrec3_n","vtrec4_n","vtrep1_n","vtrep2_n","vtrep3_n","vtrep4_n",
                              "vdepar_c","vprovi_c","vdisti_c")

names(BCCA_TDP_DATA_RAW)
#Exportación de la data con nombres analíticos
write.csv(BCCA_TDP_DATA_RAW, "BCCA_TDP_DATA_RAW_ANALITICO.csv", row.names = FALSE)







