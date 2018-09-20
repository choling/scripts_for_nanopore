#echo 'Count accumulated readlength'
#echo 'readlen >=0, total no. of reads, bp, average readlen'
#awk '!/^@/{next}{getline seq}length(seq)>=0{sum+=length(seq);n++;}END{print n, sum, sum/n}' $1 $2
#echo 'readlen >=2000, total no. of reads, bp, average read len'
#awk '!/^@/{next}{getline seq}length(seq)>=2000{sum+=length(seq);n++;}END{print n, sum, sum/n}' $1 $2
#echo 'readlen >=4000, total no. of reads, bp, average read len'
#awk '!/^@/{next}{getline seq}length(seq)>=4000{sum+=length(seq);n++;}END{print n, sum, sum/n}' $1 $2
#echo 'readlen >=6000, total no.of reads, bp, average read len'
#awk '!/^@/{next}{getline seq}length(seq)>=6000{sum+=length(seq);n++;}END{print n, sum, sum/n}' $1 $2
#echo 'readlen >=8000, total no. of reads, bp, average read len'
#awk '!/^@/{next}{getline seq}length(seq)>=8000{sum+=length(seq);n++;}END{print n, sum, sum/n}' $1 $2
#echo 'readlen >=10000, total no. of reads, bp, average readlen'
#awk '!/^@/{next}{getline seq}length(seq)>=10000{sum+=length(seq);n++;}END{print n, sum, sum/n}' $1 $2
#echo 'Finished!'
echo 'Count different read length amount'
echo '0-2000bp, no. of reads, bp, average readlen'
awk '!/^@/{next}{getline seq}{if (length(seq)>=0 && length(seq)<=2000)print seq;}' $1 | awk '{sum+=length($1);n++;}END{print n, sum, sum/n}'
echo '2001-4000, no. of reads, bp, average read length'
awk '!/^@/{next}{getline seq}{if (length(seq)>=2001 && length(seq)<=4000)print seq;}' $1 | awk '{sum+=length($1);n++;}END{print n, sum, sum/n}'
echo '4001-6000, no. of reads, bp, average read length'
awk '!/^@/{next}{getline seq}{if (length(seq)>=4001 && length(seq)<=6000)print seq;}' $1 | awk '{sum+=length($1);n++;}END{print n, sum, sum/n}'
echo '6001-8000, no. of reads, bp, averge read length'
awk '!/^@/{next}{getline seq}{if (length(seq)>=6001 && length(seq)<=8000)print seq;}' $1 | awk '{sum+=length($1);n++;}END{print n, sum, sum/n}'
echo '8001-10000, no. of reads, bp, average read length'
awk '!/^@/{next}{getline seq}{if (length(seq)>=8001 && length(seq)<=10000)print seq;}' $1 | awk '{sum+=length($1);n++;}END{print n, sum, sum/n}'
echo '>10000, no. of reads, average read length'
awk '!/^@/{next}{getline seq}length(seq)>=10001{sum+=length(seq);n++;}END{print n, sum, sum/n}' $1
echo 'Finshed~'
