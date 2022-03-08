lab1:
	awk -f lab1AWKscript.awk data_lab1/data.csv
	awk -f lab1AWKrank.awk sampleOutputs/rankingReport.csv
	awk -f lab1AWKmodel.awk sampleOutputs/makeList.csv




lab2:
	sed -e 's|\([0-9]\)/\([0-9]\)/\([0-9][0-9][0-9][0-9]\)|\3-\2-\1|g' data_lab2/data.csv > cleanedLab2Data.csv
	cat lab2SQLscripts.sql | sqlite3 lab2Carshow.db

