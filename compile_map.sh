mkgmap="bin/mkgmap-r4581/mkgmap.jar"
stylefile="styles/CF_Mapsource"
optionsFile="mkgmap_options/mgc.args"
typfile="typ/mgcmpb-draworder_modified.TYP"
resources_dir="resources"
outdir="product"

echo "$outdir"

rm -rf $outdir/*

java -DLog.config=logging.properties -Xmx4g -ea -jar $mkgmap \
--style-file=$stylefile  \
--precomp-sea=$resources_dir/sea \
--bounds=$resources_dir/bounds-latest \
--output-dir=product \
-c $optionsFile \
$typfile