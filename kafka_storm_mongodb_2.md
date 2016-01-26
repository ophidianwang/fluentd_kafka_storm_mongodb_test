# 3 VM(4 core & 16G ram) on Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz (4 core 8 thread)  
# Kafka 3 part 3 replica ; pure pykafka client consume performance: 75.5896468163 seconds consuming 1085594 messages  
# mongodb 3 shard 1 replica  
---

# 3 worker emit_thread 1 split 1 group 6 output:
---
784370 records  
Spout spend 118.659999847 seconds consuming 1000000 messages  
Spout spend 118.669999838 seconds emitting 1000000 tuples  
Bolt spend 216.998996973 seconds dumping 1000000 records.  
The 1th record walks through the topology in 2.0460858345 seconds  
The 1000000th record walks through the topology in 100.38508296 seconds  
---
784370 records  
Spout spend 117.230000019 seconds consuming 1000000 messages  
Spout spend 117.25999999 seconds emitting 1000000 tuples  
Bolt spend 218.165097952 seconds dumping 1000000 records.  
The 1th record walks through the topology in 1.42766499519 seconds  
The 1000000th record walks through the topology in 102.362762928 seconds  
---
784370 records  
Spout spend 116.309999943 seconds consuming 1000000 messages  
Spout spend 116.319999933 seconds emitting 1000000 tuples  
Bolt spend 217.772272825 seconds dumping 1000000 records.  
The 1th record walks through the topology in 1.47668504715 seconds  
The 1000000th record walks through the topology in 102.93895793 seconds  
===

# 3 worker emit_thread 1 split 3 group 6 output:
---
709025 records  
Spout spend 114.710000038 seconds consuming 1000000 messages  
Spout spend 114.720000029 seconds emitting 1000000 tuples  
Bolt spend 193.706103802 seconds dumping 1000000 records.  
The 1th record walks through the topology in 3.78900122643 seconds  
The 1000000th record walks through the topology in 82.78510499 seconds  
---
709025 records  
Spout spend 116.49000001 seconds consuming 1000000 messages  
Spout spend 116.519999981 seconds emitting 1000000 tuples  
Bolt spend 191.477756977 seconds dumping 1000000 records.  
The 1th record walks through the topology in 13.3878588676 seconds  
The 1000000th record walks through the topology in 88.3756158352 seconds  
---
709025 records  
Spout spend 115.680000067 seconds consuming 1000000 messages  
Spout spend 115.690000057 seconds emitting 1000000 tuples  
Bolt spend 195.906291008 seconds dumping 1000000 records.  
The 1th record walks through the topology in 3.33645105362 seconds  
The 1000000th record walks through the topology in 83.5627419949 seconds  
===

# 3 worker emit_thread 1 split 6 group 6 output:
---
645793 records  
Spout spend 113.78000021 seconds consuming 1000000 messages  
Spout spend 113.7900002 seconds emitting 1000000 tuples  
Bolt spend 177.743953943 seconds dumping 1000000 records.  
The 1th record walks through the topology in 6.53059411049 seconds  
The 1000000th record walks through the topology in 70.4945478439 seconds  
---
645793 records  
Spout spend 111.130000114 seconds consuming 1000000 messages  
Spout spend 111.150000095 seconds emitting 1000000 tuples  
Bolt spend 177.60372591 seconds dumping 1000000 records.  
The 1th record walks through the topology in 6.64631414413 seconds  
The 1000000th record walks through the topology in 73.1200399399 seconds  
---
645793 records  
Spout spend 114.119999886 seconds consuming 1000000 messages  
Spout spend 114.129999876 seconds emitting 1000000 tuples  
Bolt spend 181.439156055 seconds dumping 1000000 records.  
The 1th record walks through the topology in 6.53698897362 seconds  
The 1000000th record walks through the topology in 73.8561451435 seconds  
===

# 3 worker emit_thread 3 split 3 group 6 output:
---
709593 records  
Spout spend 120.400000095 seconds consuming 1000000 messages  
Spout spend 120.410000086 seconds emitting 1000000 tuples  
Bolt spend 199.53677392 seconds dumping 1000000 records.  
The 1th record walks through the topology in 3.58677697182 seconds  
The 1000000th record walks through the topology in 82.7235507965 seconds  
---
717534 records
Spout spend 120.730000019 seconds consuming 1000000 messages  
Spout spend 120.74000001 seconds emitting 1000000 tuples  
Bolt spend 198.961384058 seconds dumping 1000000 records.  
The 1th record walks through the topology in 3.37846398354 seconds  
The 1000000th record walks through the topology in 81.6098480225 seconds  
---
709674 records  
Spout spend 120.409999847 seconds consuming 1000000 messages  
Spout spend 120.439999819 seconds emitting 1000000 tuples  
Bolt spend 199.836374044 seconds dumping 1000000 records.  
The 1th record walks through the topology in 3.73995089531 seconds  
The 1000000th record walks through the topology in 83.1663250923 seconds  
---
stuck @ Split bolt 1 times  
===

# 3 worker emit_thread 3 split 6 group 6 output:
---
646120 records  
Spout spend 120.960000038 seconds consuming 1000000 messages  
Spout spend 120.970000029 seconds emitting 1000000 tuples  
Bolt spend 188.05143404 seconds dumping 1000000 records.  
The 1th record walks through the topology in 7.16098093987 seconds  
The 1000000th record walks through the topology in 74.2524149418 seconds  
---

---

===