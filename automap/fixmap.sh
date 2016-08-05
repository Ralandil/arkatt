sed -i 's/(/{/g' /home/adam/arkatt-nomap/maps/automap.tin
sed -i 's/)/}/g' /home/adam/arkatt-nomap/maps/automap.tin
sed -i 's/>\\</>\\\\</g' /home/adam/arkatt-nomap/maps/automap.tin
sed -i 's/{\\</{\\\\</g' /home/adam/arkatt-nomap/maps/automap.tin
sed -i 's/|\\</|\\\\</g' /home/adam/arkatt-nomap/maps/automap.tin
sed -i 's/>\\|/>\\\\|/g' /home/adam/arkatt-nomap/maps/automap.tin
sed -i 's/<aba>/<829>/g' /home/adam/arkatt-nomap/maps/automap.tin
sed -i 's/<faa>/<119>/g' /home/adam/arkatt-nomap/maps/automap.tin
sed -i 's/<acd>/<149>/g' /home/adam/arkatt-nomap/maps/automap.tin
sed -i 's/ \\/ \\\\/g' /home/adam/arkatt-nomap/maps/automap.tin
#echo sed -i 's/\^ /\^/g' /home/adam/arkatt-nomap/maps/automap.tin
files=`ls /home/adam/arkatt-nomap/maps/*.tin`

