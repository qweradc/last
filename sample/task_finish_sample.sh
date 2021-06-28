#判断当前安装环境
isTermux=${ANDROID_RUNTIME_ROOT}${ANDROID_ROOT}
if [ -n "${isTermux}" ]; then
 echo -e "检测到当前环境为Termux"
 A=/data/data/com.termux/files/home
 else
 echo -e "检测到当前环境为docker"
fi

PanelPath="$A/jd/panel"

if [[ ! -d "$PanelPath" ]]; then
 echo "控制面板不存在，重新安装面板"
else
 echo -e "检测面板是否运行"
 PROC_NAME=server.js
 ProcNumber=`ps -ef |grep -w $PROC_NAME|grep -v grep|wc -l`
 if [ $ProcNumber -le 0 ];then
   echo -e "面板进程没运行\n"
   pm2 start $PanelPath/server.js
 else
   echo -e "面板进程运行中\n"
 fi
fi

## 在跑完jd_bean_change任务后，立即运行一次jcsv
[[ $file_name == jd_bean_change ]] && {
    echo -e "开始记录豆豆变化情况...\n"
    $cmd_jcsv
}

