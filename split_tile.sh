PATH_TO_SPLITTER="bin/splitter-r597/splitter.jar"
PROJECT_DIR="$HOME/project/gmap_osm_mgc"
OUTDIR="$PROJECT_DIR/splitted"
RESOURCES_DIR="$PROJECT_DIR/resources"
PRECOMP_SEA_DIR="$RESOURCES_DIR/sea"
GEO_NAME_FILE="$RESOURCES_DIR/cities15000.txt"
MAX_NODES=1600000
TILE_FILE="$PROJECT_DIR/tiles/test_zhejiang.osm"

mkdir -p $OUTDIR
rm -rf $OUTDIR/*

java -Xmx10g -DLog.config=logging.properties \
  -ea -jar $PATH_TO_SPLITTER \
  --max-nodes=$MAX_NODES \
  --output-dir=$OUTDIR \
  --precomp-sea=$PRECOMP_SEA_DIR \
  --geonames-file=$GEO_NAME_FILE \
  $TILE_FILE
#  --polygon-file=china.poly \
