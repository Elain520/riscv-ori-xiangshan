#!/bin/bash
echo "Start tracing"
trace-cmd start -p function  # 开始跟踪

# 这里是需要重点跟踪的代码
sleep 1
time bash mugen.sh -f smoke -r oe_test_golang -x

echo "Stop tracing"
trace-cmd stop  # 停止跟踪
trace-cmd report  # 生成报告

trace-cmd extract -o trace.dat

trace-cmd report | awk '{print $5}' > report_func_list.log

trace-cmd record -p function -- bash mugen.sh -f smoke -r oe_test_golang -x

sort -T /tmp --parallel=4 -u report_func_list.log > report_python1_uniq.log



