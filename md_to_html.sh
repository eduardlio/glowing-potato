if [[ ! -d html ]]; then
   mkdir html
   git add .
fi;
htmlfile=html/output.html
echo '<link rel="stylesheet" type="text/css" href="../css/main.css">' > $htmlfile
echo '<div class="content">' >> $htmlfile;
pandoc -f markdown -t html -o $htmlfile.tmp resume.md
echo '</div>'>> $htmlfile.tmp;
cat $htmlfile.tmp >> $htmlfile;
rm $htmlfile.tmp;

echo "HTML file update in html/output.html";
git commit -am "Updated html resume";
git push origin master;
