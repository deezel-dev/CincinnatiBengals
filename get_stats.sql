select SUM("YardsBoyd") "Boyd Yards",
	   SUM("YardsHiggins") "Higgins Yards",
	   SUM("YardsChase") "Chase Yards",
	   CAST(SUM(CASE WHEN "Result" = 'Win' THEN 1 END) as VARCHAR) || '-' ||
	   CAST(SUM(CASE WHEN "Result" = 'Loss' THEN 1 END) as VARCHAR) "Win/Loss"
FROM public.danny_sostre
