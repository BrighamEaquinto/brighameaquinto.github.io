#%% 
import pyspark 
from pyspark.sql import SparkSession
#%%
spark = SparkSession.builder.master("uhh")\
          .appName("Learn_Spark")\
          .getOrCreate()
#%%
df = spark.read.csv("grades.csv", header='True')
# %%
df.show(5)

