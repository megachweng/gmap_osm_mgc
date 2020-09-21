PATH_TO_SPLITTER="bin/splitter-r597/splitter.jar"
PROJECT_DIR="$HOME/project/gmap_osm_mgc"
TILE_FILE="$PROJECT_DIR/tiles/test_zhejiang.pbf"
OUTDIR="$PROJECT_DIR/splitted"
RESOURCES_DIR="$PROJECT_DIR/resources"
PRECOMP_SEA_DIR="$RESOURCES_DIR/sea"
GEO_NAME_FILE="$RESOURCES_DIR/cities15000.txt"
MAX_NODES=1600000

mkdir -p $OUTDIR
rm -rf $OUTDIR/*

java -Xmx2000m -DLog.config=logging.properties \
-ea -jar $PATH_TO_SPLITTER \
--max-nodes=$MAX_NODES \
--precomp-sea=$PRECOMP_SEA_DIR \
--geonames-file=$GEO_NAME_FILE \
--output-dir=$OUTDIR $TILE_FILE
