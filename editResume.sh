if [[ ! -f resume.md ]]; then
	echo "# Edward Liao Resume" >> resume.md;
else
	echo "File Already Exists: resume.md";
fi;

gvim resume.md;
sh ./thing.sh;
