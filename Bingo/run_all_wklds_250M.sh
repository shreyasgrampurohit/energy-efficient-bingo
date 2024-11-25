# # -- No Prefetching
# echo "Running omnetpp with no prefetcher"
# ./bin/bimodal-no-no-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/620.omnetpp_s-141B.champsimtrace.xz > logs_250M/non_conf/620.omnetpp_no.txt

# echo "Running soplex with no prefetcher"
# ./bin/bimodal-no-no-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/450.soplex-247B.champsimtrace.xz > logs_250M/non_conf/450.soplex-247B_no.txt

# echo "Running lbm with no prefetcher"
# ./bin/bimodal-no-no-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/470.lbm-1274B.champsimtrace.xz > logs_250M/non_conf/470.lbm-1274B_no.txt

# echo "Running client_001 with no prefetcher"
# ./bin/bimodal-no-no-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/client_001.champsimtrace.xz> logs_250M/non_conf/client_001_no.txt

# echo "Running server_001 with no prefetcher"
# ./bin/bimodal-no-no-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/server_001.champsimtrace.xz> logs_250M/non_conf/server_001_no.txt

# echo "Running spec_gcc_001 with no prefetcher"
# ./bin/bimodal-no-no-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/spec_gcc_001.champsimtrace.xz> logs_250M/non_confspec_gcc_001_no.txt


# -- Bingo Prefetcher
# ./build_champsim.sh bimodal no bingo_thresh080 lru 1
# echo "Running omnetpp with bingo prefetcher"
# # ./bin/bimodal-no-bingo_thresh001-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/620.omnetpp_s-141B.champsimtrace.xz > logs_250M/non_conf/620.omnetpp_bingo_thresh001.txt
# ./bin/bimodal-no-bingo_thresh080-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/620.omnetpp_s-141B.champsimtrace.xz > logs_250M/non_conf/620.omnetpp_bingo_thresh080.txt


echo "Running soplex with bingo prefetcher"
# ./bin/bimodal-no-bingo_thresh001-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/450.soplex-247B.champsimtrace.xz > logs_250M/non_conf/450.soplex-247B_bingo_thresh001.txt
./bin/bimodal-no-bingo_thresh080-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/450.soplex-247B.champsimtrace.xz > logs_250M/non_conf/450.soplex-247B_bingo_thresh080.txt


# echo "Running lbm with bingo prefetcher"
# # ./bin/bimodal-no-bingo_thresh001-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/470.lbm-1274B.champsimtrace.xz > logs_250M/non_conf/470.lbm-1274B_bingo_thresh001.txt
# ./bin/bimodal-no-bingo_thresh080-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/470.lbm-1274B.champsimtrace.xz > logs_250M/non_conf/470.lbm-1274B_bingo_thresh080.txt


# echo "Running client_001 with bingo prefetcher"
# # ./bin/bimodal-no-bingo_thresh001-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/client_001.champsimtrace.xz> logs_250M/non_conf/client_001_bingo_thresh001.txt
# ./bin/bimodal-no-bingo_thresh080-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/client_001.champsimtrace.xz> logs_250M/non_conf/client_001_bingo_thresh080.txt


# echo "Running server_001 with bingo prefetcher"
# # ./bin/bimodal-no-bingo_thresh001-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/server_001.champsimtrace.xz> logs_250M/non_conf/server_001_bingo_thresh001.txt
# ./bin/bimodal-no-bingo_thresh080-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/server_001.champsimtrace.xz> logs_250M/non_conf/server_001_bingo_thresh080.txt

# echo "Running spec_gcc_001 with bingo prefetcher"
# # ./bin/bimodal-no-bingo_thresh001-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/spec_gcc_001.champsimtrace.xz> logs_250M/non_conf/spec_gcc_001_bingo_thresh001.txt
# ./bin/bimodal-no-bingo_thresh080-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/spec_gcc_001.champsimtrace.xz> logs_250M/non_conf/spec_gcc_001_bingo_thresh080.txt


# # -- Bingo plus Confidence Prefetcher
# # ---- threshold 0.8 0.5
# python3 edit_thresh.py 0.8 0.5
# ./build_champsim.sh bimodal no bingo_thresh001_conf lru 1

# # ------ workloads
# echo "Running omnetpp with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/620.omnetpp_s-141B.champsimtrace.xz > logs_250M/0.8_0.5/620.omnetpp_bingo_thresh001_conf.txt
# echo "Running soplex with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/450.soplex-247B.champsimtrace.xz > logs_250M/0.8_0.5/450.soplex-247B_bingo_thresh001_conf.txt
# echo "Running lbm with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/470.lbm-1274B.champsimtrace.xz > logs_250M/0.8_0.5/470.lbm-1274B_bingo_thresh001_conf.txt
# echo "Running client_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/client_001.champsimtrace.xz> logs_250M/0.8_0.5/client_001_bingo_thresh001_conf.txt
# echo "Running server_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/server_001.champsimtrace.xz> logs_250M/0.8_0.5/server_001_bingo_thresh001_conf.txt
# echo "Running spec_gcc_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/spec_gcc_001.champsimtrace.xz> logs_250M/0.8_0.5/spec_gcc_001_bingo_thresh001_conf.txt

# # ---- threshold 0.6 0.3
# python3 edit_thresh.py 0.6 0.3
# ./build_champsim.sh bimodal no bingo_thresh001_conf lru 1

# # ------ workloads
# echo "Running omnetpp with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/620.omnetpp_s-141B.champsimtrace.xz > logs_250M/0.6_0.3/620.omnetpp_bingo_thresh001_conf.txt
# echo "Running soplex with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/450.soplex-247B.champsimtrace.xz > logs_250M/0.6_0.3/450.soplex-247B_bingo_thresh001_conf.txt
# echo "Running lbm with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/470.lbm-1274B.champsimtrace.xz > logs_250M/0.6_0.3/470.lbm-1274B_bingo_thresh001_conf.txt
# echo "Running client_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/client_001.champsimtrace.xz> logs_250M/0.6_0.3/client_001_bingo_thresh001_conf.txt
# echo "Running server_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/server_001.champsimtrace.xz> logs_250M/0.6_0.3/server_001_bingo_thresh001_conf.txt
# echo "Running spec_gcc_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/spec_gcc_001.champsimtrace.xz> logs_250M/0.6_0.3/spec_gcc_001_bingo_thresh001_conf.txt


# # ---- threshold 0.4 0.25
# python3 edit_thresh.py 0.4 0.25
# ./build_champsim.sh bimodal no bingo_thresh001_conf lru 1

# # ------ workloads
# echo "Running omnetpp with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/620.omnetpp_s-141B.champsimtrace.xz > logs_250M/0.4_0.25/620.omnetpp_bingo_thresh001_conf.txt
# echo "Running soplex with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/450.soplex-247B.champsimtrace.xz > logs_250M/0.4_0.25/450.soplex-247B_bingo_thresh001_conf.txt
# echo "Running lbm with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/470.lbm-1274B.champsimtrace.xz > logs_250M/0.4_0.25/470.lbm-1274B_bingo_thresh001_conf.txt
# echo "Running client_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/client_001.champsimtrace.xz> logs_250M/0.4_0.25/client_001_bingo_thresh001_conf.txt
# echo "Running server_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/server_001.champsimtrace.xz> logs_250M/0.4_0.25/server_001_bingo_thresh001_conf.txt
# echo "Running spec_gcc_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/spec_gcc_001.champsimtrace.xz> logs_250M/0.4_0.25/spec_gcc_001_bingo_thresh001_conf.txt

# # ---- threshold 0.1 0.0
# python3 edit_thresh.py 0.1 0.0
# ./build_champsim.sh bimodal no bingo_thresh001_conf lru 1

# # ------ workloads
# echo "Running omnetpp with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/620.omnetpp_s-141B.champsimtrace.xz > logs_250M/0.1_0.0/620.omnetpp_bingo_thresh001_conf.txt
# echo "Running soplex with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/450.soplex-247B.champsimtrace.xz > logs_250M/0.1_0.0/450.soplex-247B_bingo_thresh001_conf.txt
# echo "Running lbm with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/470.lbm-1274B.champsimtrace.xz > logs_250M/0.1_0.0/470.lbm-1274B_bingo_thresh001_conf.txt
# echo "Running client_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/client_001.champsimtrace.xz> logs_250M/0.1_0.0/client_001_bingo_thresh001_conf.txt
# echo "Running server_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/server_001.champsimtrace.xz> logs_250M/0.1_0.0/server_001_bingo_thresh001_conf.txt
# echo "Running spec_gcc_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/spec_gcc_001.champsimtrace.xz> logs_250M/0.1_0.0/spec_gcc_001_bingo_thresh001_conf.txt


# # ---- threshold 0.0 0.0
# python3 edit_thresh.py 0.0 0.0
# ./build_champsim.sh bimodal no bingo_thresh001_conf lru 1

# # ------ workloads
# echo "Running omnetpp with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/620.omnetpp_s-141B.champsimtrace.xz > logs_250M/0.0_0.0/620.omnetpp_bingo_thresh001_conf.txt
# echo "Running soplex with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/450.soplex-247B.champsimtrace.xz > logs_250M/0.0_0.0/450.soplex-247B_bingo_thresh001_conf.txt
# echo "Running lbm with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/470.lbm-1274B.champsimtrace.xz > logs_250M/0.0_0.0/470.lbm-1274B_bingo_thresh001_conf.txt
# echo "Running client_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/client_001.champsimtrace.xz> logs_250M/0.0_0.0/client_001_bingo_thresh001_conf.txt
# echo "Running server_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/server_001.champsimtrace.xz> logs_250M/0.0_0.0/server_001_bingo_thresh001_conf.txt
# echo "Running spec_gcc_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/spec_gcc_001.champsimtrace.xz> logs_250M/0.0_0.0/spec_gcc_001_bingo_thresh001_conf.txt

# # -- Bingo plus Confidence Prefetcher with confidence threshold 1
# # ---- threshold 0.8 0.5
# python3 edit_thresh.py 0.8 0.5
# ./build_champsim.sh bimodal no bingo_thresh001_conf lru 1

# # ------ workloads
# echo "Running omnetpp with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/620.omnetpp_s-141B.champsimtrace.xz > logs_250M/0.8_0.5_conf1/620.omnetpp_bingo_thresh080_conf_1.txt
# echo "Running soplex with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/450.soplex-247B.champsimtrace.xz > logs_250M/0.8_0.5_conf1/450.soplex-247B_bingo_thresh080_conf_1.txt
# # echo "Running lbm with bingo plus confidence prefetcher"
# # ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/470.lbm-1274B.champsimtrace.xz > logs_250M/0.8_0.5_conf1/470.lbm-1274B_bingo_thresh001_conf_1.txt
# echo "Running client_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/client_001.champsimtrace.xz> logs_250M/0.8_0.5_conf1/client_001_bingo_thresh080_conf_1.txt
# echo "Running server_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/server_001.champsimtrace.xz> logs_250M/0.8_0.5_conf1/server_001_bingo_thresh080_conf_1.txt
# echo "Running spec_gcc_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/spec_gcc_001.champsimtrace.xz> logs_250M/0.8_0.5_conf1/spec_gcc_001_bingo_thresh080_conf_1.txt

# # ---- threshold 0.4 0.25
# python3 edit_thresh.py 0.4 0.25
# ./build_champsim.sh bimodal no bingo_thresh001_conf lru 1

# # ------ workloads
# echo "Running omnetpp with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/620.omnetpp_s-141B.champsimtrace.xz > logs_250M/0.4_0.25_conf1/620.omnetpp_bingo_thresh080_conf_1.txt
# echo "Running soplex with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/450.soplex-247B.champsimtrace.xz > logs_250M/0.4_0.25_conf1/450.soplex-247B_bingo_thresh080_conf_1.txt
# # echo "Running lbm with bingo plus confidence prefetcher"
# # ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../spec_cpu_traces/470.lbm-1274B.champsimtrace.xz > logs_250M/0.4_0.25_conf1/470.lbm-1274B_bingo_thresh001_conf_1.txt
# echo "Running client_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/client_001.champsimtrace.xz> logs_250M/0.4_0.25_conf1/client_001_bingo_thresh080_conf_1.txt
# echo "Running server_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/server_001.champsimtrace.xz> logs_250M/0.4_0.25_conf1/server_001_bingo_thresh080_conf_1.txt
# echo "Running spec_gcc_001 with bingo plus confidence prefetcher"
# ./bin/bimodal-no-bingo_thresh001_conf-lru-1core -warmup_instructions 25000000 -simulation_instructions 250000000 -traces ../ipc1_public/spec_gcc_001.champsimtrace.xz> logs_250M/0.4_0.25_conf1/spec_gcc_001_bingo_thresh080_conf_1.txt
