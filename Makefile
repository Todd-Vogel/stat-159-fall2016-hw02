all: report/report.pdf data/eda-output.txt data/regression.RData

report/report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	pandoc report/report.Rmd -s -o report/report.pdf

data/eda-output.txt: code/eda-script.R data/Advertising.csv
	Rscript code/eda-script.R

data/regression.RData: code/regression-script.R data/Advertising.csv
	Rscript code/regression-script.R

data/Advertising.csv:
	curl -o data/Advertising.csv "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

clean: rm -f report/report.Rmd report/report.pdf
