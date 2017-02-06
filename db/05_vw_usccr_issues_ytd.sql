-- View: vw_usccr_issues_ytd

-- DROP VIEW vw_usccr_issues_ytd;

CREATE OR REPLACE VIEW vw_usccr_issues_ytd AS 
 SELECT usccr_complaints_issue.state_abbr, usccr_complaints_issue.year, sum(usccr_complaints_issue.total) AS ytd, sum(usccr_complaints_issue.aj) AS ytd_aj, sum(usccr_complaints_issue.ed) AS ytd_ed, sum(usccr_complaints_issue.e) AS ytd_e, sum(usccr_complaints_issue.fp) AS ytd_fp, sum(usccr_complaints_issue.hac) AS ytd_hac, sum(usccr_complaints_issue.hec) AS ytd_hec, sum(usccr_complaints_issue.h) AS ytd_h, sum(usccr_complaints_issue.hr) AS ytd_hr, sum(usccr_complaints_issue.nj) AS ytd_nj, sum(usccr_complaints_issue.o) AS ytd_o, sum(usccr_complaints_issue.pb) AS ytd_pb, sum(usccr_complaints_issue.pm) AS ytd_pm, sum(usccr_complaints_issue.pc) AS ytd_pc, sum(usccr_complaints_issue.pr) AS ytd_pr, sum(usccr_complaints_issue.pa) AS ytd_pa, sum(usccr_complaints_issue.unk) AS ytd_unk, sum(usccr_complaints_issue.vr) AS ytd_vr
   FROM usccr_complaints_issue
  GROUP BY usccr_complaints_issue.state_abbr, usccr_complaints_issue.year;

ALTER TABLE vw_usccr_issues_ytd
  OWNER TO postgres;

