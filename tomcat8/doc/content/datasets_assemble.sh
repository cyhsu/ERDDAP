
# ----- ERDDAP BP START

cat BP/datasets_boilerplate_begin.xml > datasets_prov.xml

#************************** GRIIDC *********************************

# ----- GRIIDC TRAJECTORY-PROFILE DATASETS

#cat trajprof/griidc_trajprof_begin.xml >> datasets_prov.xml

# Dataset summaries.

#cat trajprof/erddap_trajprof_cloud.xml >> datasets_prov.xml

# Individual files.

#cat trajprof/*.XML >> datasets_prov.xml

#cat trajprof/griidc_trajprof_end.xml >> datasets_prov.xml

# ----- GRIIDC TRAJECTORY DATASETS

#cat trajectory/griidc_trajectory_begin.xml >> datasets_prov.xml

# Dataset summaries.

#cat trajectory/erddap_trajectory_cloud.xml >> datasets_prov.xml

# Individual files.

#cat trajectory/*.XML >> datasets_prov.xml

#cat trajectory/griidc_trajectory_end.xml >> datasets_prov.xml

# ----- GRIIDC profile datasets

#cat profile/griidc_profile_begin.xml >> datasets_prov.xml

# Dataset summaries.

#cat profile/erddap_profile_cloud.xml >> datasets_prov.xml

# Individual files.

#cat profile/*.XML >> datasets_prov.xml

#cat profile/griidc_profile_end.xml >> datasets_prov.xml

# ----- GRIIDC TIMESERIES DATASETS

#cat ts/griidc_ts_begin.xml >> datasets_prov.xml

# Dataset summaries.

#cat ts/erddap_ts_cloud.xml >> datasets_prov.xml

# Individual files.

#cat ts/*.XML >> datasets_prov.xml

#cat ts/griidc_ts_end.xml >> datasets_prov.xml

# ----- GRIIDC TIMESERIES-PROFILES DATASETS

#cat tsprof/griidc_tsprof_begin.xml >> datasets_prov.xml

# Dataset summaries.

#cat tsprof/erddap_tsprof_cloud.xml >> datasets_prov.xml

# Individual files.

#cat tsprof/*.XML >> datasets_prov.xml

#cat tsprof/griidc_tsprof_end.xml >> datasets_prov.xml

# ----- GOM SSH ANOMALY GRIDS

cat ssh/ssh_begin.xml >> datasets_prov.xml

cat ssh/*.XML >> datasets_prov.xml

cat ssh/ssh_end.xml >> datasets_prov.xml

# ----- CREMP REVISITED

#cat cremp/cremp_begin.xml >> datasets_prov.xml

#cat cremp/*.XML >> datasets_prov.xml

#cat cremp/cremp_end.xml >> datasets_prov.xml

#************************** FGBNMS/MANTA TRAJECTORY DATASET *********************************

cat trajectory/FGBNMS/FGBNMS_begin.xml >> datasets_prov.xml

cat trajectory/FGBNMS/FGBNMS_ALL.XML >> datasets_prov.xml

cat trajectory/FGBNMS/FGBNMS_end.xml >> datasets_prov.xml

#************************** WALTON-SMITH PROFILE DATASETS *********************************

cat WS/WS*.XML >> WS_individual.xml

cat WS/ws_begin.xml >> datasets_prov.xml

cat WS_individual.xml >> datasets_prov.xml

cat WS/ws_end.xml >> datasets_prov.xml

rm WS_individual.xml

#************************** LATEX, NEGOM, DEEPWATER PROFILE DATASETS *********************************

cat profile/latex/latex_begin.xml >> datasets_prov.xml

cat profile/latex/*.XML >> datasets_prov.xml

cat profile/latex/latex_end.xml >> datasets_prov.xml

#************************** FLORIDA VISUAL CENSUS DATABASE *********************************

# ----- DRY TORTUGAS VISUAL CENSUS

#cat VISUAL/dt_reef_census_begin.xml >> datasets_prov.xml

#cat VISUAL/DT_DAT_all.xml >> datasets_prov.xml
#cat VISUAL/DT_EVE_all.xml >> datasets_prov.xml
#cat VISUAL/DT_MEA_all.xml >> datasets_prov.xml
#cat VISUAL/DT_OCC_all.xml >> datasets_prov.xml

#cat VISUAL/dt_reef_census_end.xml >> datasets_prov.xml

# ----- FLORIDA KEYS VISUAL CENSUS

#cat VISUAL/fk_reef_census_begin.xml >> datasets_prov.xml

#cat VISUAL/FK_DAT_all.xml >> datasets_prov.xml
#cat VISUAL/FK_EVE_all.xml >> datasets_prov.xml
#cat VISUAL/FK_MEA_all.xml >> datasets_prov.xml
#cat VISUAL/FK_OCC_all.xml >> datasets_prov.xml

#cat VISUAL/fk_reef_census_end.xml >> datasets_prov.xml

# ----- HFRADAR

#cat HFRADAR/hfradar_begin.xml >> datasets_prov.xml

#cat HFRADAR/hfradar_all.xml >> datasets_prov.xml

#cat HFRADAR/hfradar_end.xml >> datasets_prov.xml

# ----- SPORTFISH

#cat SPORTFISH/sportfish_begin.xml >> datasets_prov.xml

#cat SPORTFISH/sportfish_all.xml >> datasets_prov.xml

#cat SPORTFISH/sportfish_end.xml >> datasets_prov.xml

# ----- PHYTOPLANKTON

#cat PHYTO/phytoplankton_begin.xml >> datasets_prov.xml

#cat PHYTO/phytoplankton_all.xml >> datasets_prov.xml

#cat PHYTO/phytoplankton_end.xml >> datasets_prov.xml`

# ---- END OF DATASETS ----

cat BP/datasets_boilerplate_end.xml >> datasets_prov.xml



