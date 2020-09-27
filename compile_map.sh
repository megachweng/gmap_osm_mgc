mkgmap="bin/mkgmap-r4581/mkgmap.jar"
stylefile="styles/MGC_Edge"
optionsFile="mgc.args"
typfile="typ/MGC_Edge.TYP"
resources_dir="resources"
outdir="product"

rm -rf $outdir/*

java -DLog.config=logging.properties -Xmx10g -ea -jar $mkgmap \
  --style-file=$stylefile \
  --max-jobs=12 \
  --bounds=$resources_dir/bounds-latest \
  --output-dir=product \
  --bounds=$resources_dir/bounds-latest \
  --precomp-sea=$resources_dir/sea \
  -c $optionsFile \
  $typfile
