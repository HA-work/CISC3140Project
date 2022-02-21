BEGIN{




	

	count = 0


        while ((getline line < "sampleOutputs/rankingReport.csv") > 0){

		if (count == 0){
			printf( "%-14s \n", line ) > "sampleOutputs/rankingReportFinal.csv";
			count++



		} else {
                
                	printf( "%-14s, %-14d \n", line, count ) > "sampleOutputs/rankingReportFinal.csv";

                	count++;


			}

        }


}









END{



}



