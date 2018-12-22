/** Import an XLS file. **/
	PROC IMPORT DATAFILE="/folders/myfolders/final data. xlsx"
	OUT=WORK.data
	DBMS=XLSx
	REPLACE;
RUN;
/** Print the results. **/
PROC PRINT DATA=WORK. data; RUN;
data data; set data;
label e="exchange rate"
GEXR="Percentage change in exchange rate"
INFD="Inflation differential"
GFXR="Percentage change in forex reserves"
GIIP="Percentage change in IIP"
BR="Bank Rate"
CR="Call Rate";
run;
proc sgplot data=data;
xaxis type=time;
series x=year y=GEXR;
series x=year y=GFXR;
run;
proc sgplot data=data;
xaxis type=time;
series x=year y=GEXR;
series x=year y=BR;
run;
proc sgplot data=data;
xaxis type=time;
series x=year y=GEXR;
series x=year y=CR;
run;
proc sgplot data=data;
xaxis type=time;
series x=year y=GEXR;
series x=year y=INFD;
run;
proc sgplot data=data;
xaxis type=time;
series x=year y=GEXR;
series x=year y=GIIP;
run;
proc reg data=data plots=all;
model GEXR=Lag1gexr Lag2gexr Lag3gexr INFD Lag1infd Lag2infd Lag3infd GFXR Lag1gfxr Lag2gfxr Lag3gfxr GIIP Lag1giip
output out=data1 predicted=p residual=r;
run;
quit;
proc corr data=data pearson;
var GEXR GFXR BR CR INFD STYD LTYD GIIP GM3;
with GEXR GFXR BR CR INFD STYD LTYD GIIP GM3;
run;
proc corr data=data1 pearson;
var GEXR;
with Lag1gexr Lag2gexr Lag3gexr INFD Lag1infd Lag2infd Lag3infd GFXR Lag1gfxr Lag2gfxr Lag3gfxr GIIP Lag1giip
run;
