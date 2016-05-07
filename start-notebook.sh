#! /bin/bash
notebook_port=$1
spark_ui_port=$2
export PYSPARK_DRIVER_PYTHON=/data1/software/anaconda2/bin/jupyter
export PYSPARK_PYTHON=/data1/software/anaconda2/bin/python
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --NotebookApp.open_browser=False --NotebookApp.ip='*' --NotebookApp.port=$notebook_port"
/data1/software/spark-1.6.1-bin-hadoop2.6/bin/pyspark --master local[4] --name $USER-escape-conference --conf spark.ui.port=$spark_ui_port --driver-memory 8G --jars "/data1/software/spark-csv_2.11-1.4.0.jar,/data1/software/commons-csv-1.1.jar"