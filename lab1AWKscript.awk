BEGIN{
	FS = ",";
	# Change the delimeter used to seperate the data

#	OFS = ",";










#while ((getline line < "data_lab1/data.csv") > 0){


#                print line

                

#        }








	
}





FNR == 1 {

	printf( "%-14s, %-14s, %-14s, %-14s, %-14s, %-14s \n", $4,
	$5, 
	$6,
	$7,
	"total_score", 
	"ranking") > "sampleOutputs/rankingReport.csv" ;


}



FNR > 1{ # skip the first line as it is a header row

	total = 0; # initilize total to 0 for each entry
	for(i = 8; i <= NF; i++){ # start at 8 as that is where rank start
		total += $i;
	};



	$(NF + 1) = total;
#	$2 = total

#	print $NF;
	

	ranking = FNR - 1;

	$(NF + 1) = ranking;  
#	$1 = ranking
#	print $NF;

	if ($5 in makeList){
	} else {
	makeList[$5] = $5;
	}

# k can only take single digit values 
# what to do if we had 11 fields?


# how to handle ties
# they should probably get the same ranking

# same when showing top 3 makes
# show ties



# do I need multiple files to do this?



	command = "sort -t, -r -n -k5  >> sampleOutputs/rankingReport.csv";

	
        printf( "%-14s, %-14s, %-14s, %-14s, %-14d\n", $4,
	$5,
	$6,
	$7,
	total ) | command
# $NF
#total
#ranking





	

}


END{


	for (make in makeList){
		



		printf( "%-14s \n", make) > "sampleOutputs/makeList.csv" ;





	}   

# there appears to be some spelling mistakes
# for example mitsu and mitsub
# which I assume both mean mitsubishi


# maybe a way to do all tasks in 1 script?







# easier way to loop through the file?





	

}
