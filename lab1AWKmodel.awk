# got these trim functions from stack overflow to try

function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s) { return rtrim(ltrim(s)); }




BEGIN{


	num = 1

        while ((getline make < "sampleOutputs/makeList.csv") > 0){

                #printf("%-20s \n", make) > "sampleOutputs/bestMakes.csv"

               # print make

		makeList[num] = make

		num++


        }















	count = 1

	while((getline car < "sampleOutputs/rankingReportFinal.csv") > 0  ){
                    

		#print car
		
		carList[count] = car


		count++

	



	}


                
# for some reason the loop is acting weird
# does a different order when using a for make in make list loop

	for(makeNum= 1; makeNum < num; makeNum++){



		curMake = makeList[makeNum]

		#print curMake

		#print carList[1]



                printf("%-20s \n", curMake) > "sampleOutputs/bestMakes.csv"

                printf("%-20s \n", carList[1]) > "sampleOutputs/bestMakes.csv"

	

		bestMakes = 0

		i = 1
		while((bestMakes < 3) && (i <= count)){


		# while loop can probably be removed

		# can use the method of storing in arrays to do this all possib;y in one file

	        	for(carNum= 0; carNum <= count; carNum++){


                        	carSpec = carList[carNum]
                 

                        	#print carSpec

                        	split(carSpec, arr, ",")


				

				if ((trim(curMake) == trim(arr[2])) &&  (bestMakes <3)){


					#print carSpec



				        printf("%-20s \n", carSpec) > "sampleOutputs/bestMakes.csv"


					bestMakes++

				}


		               i++


			}


		        printf("\n") > "sampleOutputs/bestMakes.csv"




		}
		




	}











}

END{





}
