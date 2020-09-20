set pathtosplitter="bin/splitter-r597/splitter.jar"
set mapfile="pbf/test_riverbank.pbf"
set outdir="splitted"
set resources_dir="resources"
@echo off

rem delete exist splitted files
IF EXIST "%outdir%" (
    echo Delete old splitted files
    del /S /Q %outdir%\*
)
echo Start splitting
java -Xmx2000m -DLog.config=logging.properties -ea -jar %pathtosplitter% --max-nodes=1600000 --precomp-sea=%resources_dir%/sea --geonames-file=%resources_dir%/cities15000.txt --output-dir=%outdir% %mapfile%
pause