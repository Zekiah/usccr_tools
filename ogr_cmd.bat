ogr2ogr -f "GeoJSON" usccr_basis_%2_%1.geojson PG:"host=localhost user=username dbname=db password=password" -sql "SELECT * FROM vw_geojson_usccr_basis WHERE month = %1 and year = %2"

ogr2ogr -f "GeoJSON" usccr_issue_%2_%1.geojson PG:"host=localhost user=username dbname=db password=password" -sql "SELECT * FROM vw_geojson_usccr_issues WHERE month = %1 and year = %2"