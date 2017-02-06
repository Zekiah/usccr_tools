-- View: vw_geojson_usccr_issues

-- DROP VIEW vw_geojson_usccr_issues;

CREATE OR REPLACE VIEW vw_geojson_usccr_issues AS 
 SELECT states_gen.geom, usccr_complaints_issue.id, usccr_complaints_issue.state, usccr_complaints_issue.total, usccr_complaints_issue.aj, usccr_complaints_issue.ed, usccr_complaints_issue.e, usccr_complaints_issue.fp, usccr_complaints_issue.hac, usccr_complaints_issue.hec, usccr_complaints_issue.h, usccr_complaints_issue.hr, usccr_complaints_issue.nj, usccr_complaints_issue.o, usccr_complaints_issue.pb, usccr_complaints_issue.pm, usccr_complaints_issue.pc, usccr_complaints_issue.pr, usccr_complaints_issue.pa, usccr_complaints_issue.unk, usccr_complaints_issue.vr, usccr_complaints_issue.month, vw_usccr_issues_ytd.state_abbr, vw_usccr_issues_ytd.year, vw_usccr_issues_ytd.ytd, vw_usccr_issues_ytd.ytd_aj, vw_usccr_issues_ytd.ytd_ed, vw_usccr_issues_ytd.ytd_e, vw_usccr_issues_ytd.ytd_fp, vw_usccr_issues_ytd.ytd_hac, vw_usccr_issues_ytd.ytd_hec, vw_usccr_issues_ytd.ytd_h, vw_usccr_issues_ytd.ytd_hr, vw_usccr_issues_ytd.ytd_nj, vw_usccr_issues_ytd.ytd_o, vw_usccr_issues_ytd.ytd_pb, vw_usccr_issues_ytd.ytd_pm, vw_usccr_issues_ytd.ytd_pc, vw_usccr_issues_ytd.ytd_pr, vw_usccr_issues_ytd.ytd_pa, vw_usccr_issues_ytd.ytd_unk, vw_usccr_issues_ytd.ytd_vr
   FROM states_gen, usccr_complaints_issue, vw_usccr_issues_ytd
  WHERE states_gen.state_abbr::text = usccr_complaints_issue.state_abbr::text AND usccr_complaints_issue.state_abbr::text = vw_usccr_issues_ytd.state_abbr::text AND usccr_complaints_issue.year = vw_usccr_issues_ytd.year;

ALTER TABLE vw_geojson_usccr_issues
  OWNER TO postgres;

