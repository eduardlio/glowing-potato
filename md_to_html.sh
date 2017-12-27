if [[ ! -d html ]]; then
   mkdir html
fi;
htmlfile=html/output.html
echo '<link rel="stylesheet" type="text/css" href="../css/main.css">' > $htmlfile
echo '<div class="content">' >> $htmlfile;
pandoc -f markdown -t html -o $htmlfile.tmp resume.md
echo '</div>'>> $htmlfile.tmp;
cat $htmlfile.tmp >> $htmlfile;
rm $htmlfile.tmp;

echo "HTML file update at html/output.html";
