lab1:
	awk -f lab1AWKscript.awk data_lab1/data.csv
	awk -f lab1AWKrank.awk sampleOutputs/rankingReport.csv
	awk -f lab1AWKmodel.awk sampleOutputs/makeList.csv
