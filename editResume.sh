if [[ ! -f resume.md ]]; then
	echo "# Edward Liao Resume" >> resume.md;
else
	echo "File Already Exists: resume.md";
fi;

gvim resume.md;
git commit -am "Updated the resume";
git push origin master;
