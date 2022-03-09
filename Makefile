lab1:
	awk -f lab1AWKscript.awk data_lab1/data.csv
	awk -f lab1AWKrank.awk sampleOutputs/rankingReport.csv
	awk -f lab1AWKmodel.awk sampleOutputs/makeList.csv




lab2:
	sed -r -e 'sx([^0-9]|^)([0-9]/)x\10\2xg' -e 'sx/([0-9]/)x/0\1xg' data_lab2/data.csv > leadingZeros.csv
	sed -e 's|\([0-9][0-9]\)/\([0-2][0-9]\)/\([0-9][0-9][0-9][0-9]\)|\3-\2-\1|g' leadingZeros.csv > cleanedLab2Data.csv
	cat lab2SQLscripts.sql | sqlite3 lab2CarShow.db

