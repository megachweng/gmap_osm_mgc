set mkgmap="bin/mkgmap-r4581/mkgmap.jar"
set stylefile="styles/CF_Mapsource"
set optionsFile="mkgmap_options/mgc.args"
set typfile="typ/mgcmpb-draworder_modified.TYP"
set resources_dir="resources"
set outdir="product"

rem delete exist splitted files
IF EXIST "%outdir%" (
    echo Delete old splitted files
    del /S /Q %outdir%\*
)
IF EXIST "basecamp" (
    echo Delete old splitted files
    del /S /Q basecamp\*
)

java -DLog.config=logging.properties -Xmx11g -ea -jar %mkgmap% ^
--style-file=%stylefile%  ^
--precomp-sea=%resources_dir%/sea ^
--bounds=%resources_dir%/bounds ^
--output-dir=product ^
-c %optionsFile% ^
%typfile%

pause

