if [[ ! -f resume.md ]]; then
   file=resume.md;
	echo "# Name Resume" >> $file 
   echo "" >> $file; 

   echo "## Contact Details" >> $file
   echo "__Phone__: " >> $file
   echo "__Email__: " >> $file
   echo "__Github__: " >> $file
   echo "" >> $file

   echo "## Education" >> $file
   echo "Degree, Institution" >> $file
   echo "Dates" >> $file
   echo "" >> $file

   echo "## Languages and Skills" >> $file
   echo "### Web Development" >> $file
   echo "- HTML5" >> $file
   echo "- CSS3" >> $file
   echo "" >> $file
   echo "### Design" >> $file
   echo "- Adobe Illustrator" >> $file
   echo "- InVision" >> $file
   echo "" >> $file

   echo "## Work Experience" >> $file
   echo "Role, Place of Employment" >> $file
   echo "Description" >> $file
   echo "" >> $file

   echo "## References" >> $file

else
	echo "File Already Exists: resume.md";
fi;
git add resume.md;

# I have this set to gvim but change it to whatever man
gvim resume.md;
git commit -am "Updated the resume";
git push origin master;
