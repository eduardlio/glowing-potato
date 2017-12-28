message=""

if [[ ! -d html ]]; then
   echo "directory html doesn't exist yet, creating directory html"
   mkdir html
fi;
if [[ ! -f html/output.html ]]; then
   message="Added html/output.html"
else
   message="Updated html/output.html"
fi;

htmlfile=html/output.html

echo '<link rel="stylesheet" type="text/css" href="../css/main.css">' > $htmlfile
echo '<div class="content">' >> $htmlfile;

if [[ ! -f resume.md ]]; then
   echo "resume.md file not found, creating one now"
   sh ./editResume.sh;
fi;

echo "Converting resume.md to html ( location: $htmlfile )"
pandoc -f markdown -t html -o $htmlfile.tmp resume.md

echo '</div>'>> $htmlfile.tmp;
cat $htmlfile.tmp >> $htmlfile;
rm $htmlfile.tmp;

git add html/output.html
git commit -am "$message";
git push origin master;
