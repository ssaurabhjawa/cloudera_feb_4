export HADOOP_CONF_DIR="/etc/hadoop/conf"
export SPARK_HOME=/home/itv000925/streaming_venv/lib/python3.6/site-packages/pyspark
export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.10.9-src.zip:$PYTHONPATH
export PATH=$SPARK_HOME/bin:$SPARK_HOME/python:$PATH
export PYSPARK_PYTHON=python3
export ENVIRON=PROD
export SRC_DIR='/home/itv000925/retail_db_data/'
spark-submit \
--master yarn \
--packages org.apache.spark:spark-sql-kafka-0-10_2.12:3.0.1 \
--deploy-mode client \
--conf spark.ui.port=0 \
python/app.py

