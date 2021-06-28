#!/usr/bin/env bash

############################## 作者列表 ##############################
author_list="jiulan passerby longzhuzhu Wenmoux panghu999 zsm hyzaw star261 Super my"
#####################################################################

############################## 脚本列表 ##############################
# 感谢各位大佬的脚本

# 京喜财富岛提现（不用就注释掉定时任务）
scripts_base_url_1=https://ghproxy.com/https://raw.githubusercontent.com/jiulan/platypus/main/scripts/
my_scripts_list_1="jx_cfdtx.js jdJxncTokens.js"

# 京东到家脚本
scripts_base_url_2=https://ghproxy.com/https://raw.githubusercontent.com/passerby-b/JDDJ/main/
my_scripts_list_2="jddj_bean.js jddj_fruit.js jddj_fruit_collectWater.js jddj_getPoints.js jddj_plantBeans.js"

# 龙猪猪
scripts_base_url_3=https://ghproxy.com/https://raw.githubusercontent.com/longzhuzhu/nianyu/main/qx/
my_scripts_list_3="long_half_redrain.js long_super_redrain.js"

# Wenmoux
scripts_base_url_4=https://ghproxy.com/https://raw.githubusercontent.com/Wenmoux/scripts/wen/jd/
my_scripts_list_4="jd_SplitRedPacket.js jd_ddnc_farmpark.js"

# 柠檬
scripts_base_url_5=https://ghproxy.com/https://raw.githubusercontent.com/panghu999/panghu/master/
my_scripts_list_5="jd_sqdyj.js jd_sq.js jd_wsdlb.js"

 # Andy
scripts_base_url_6=https://ghproxy.com/https://raw.githubusercontent.com/zsm85887823/AndyJD/main/own/
my_scripts_list_6="Andy_sendBeans.js"

# dd大佬脚本
scripts_base_url_7=https://ghproxy.com/https://raw.githubusercontent.com/hyzaw/scripts/main/
my_scripts_list_7="ddo_pk.js"

# star261
scripts_base_url_9=https://ghproxy.com/https://raw.githubusercontent.com/star261/jd/main/scripts/
my_scripts_list_9="star_dreamFactory_tuan.js"

# 点点券
scripts_base_url_8=https://gitee.com/SuperManito/scripts/raw/master/
my_scripts_list_8="jd_necklace.js"

# 自己收集的脚本
scripts_base_url_10=https://gitee.com/qweradci/shell/raw/v4/my_scripts/
my_scripts_list_10=""


############################ 是否强制替换脚本的定时 ############################
# 设为"true"时强制替换脚本的定时，设为"false"则不替换脚本的定时...
Enablerenew="false"

############################ 是否远程更新diy ############################
# 设为"true"时更新diy，设为"false"则不更新diy...
Updatediy="true"

############################## 随机函数 ##############################
rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(cat /proc/sys/kernel/random/uuid | cksum | awk -F ' ' '{print $1}')
    echo $(($num%$max+$min))
}

############################## 手动删除失效脚本 ##############################
cd $dir_scripts
# rm -rf z_mother_jump.js

############################## 开始下载脚本 ##############################
index=1
for author in $author_list
do
  echo -e "######################### 开始下载 $author 的脚本 #########################"
  # 下载my_scripts_list中的每个js文件
  eval scripts_list=\$my_scripts_list_${index}
  eval url_list=\$scripts_base_url_${index}
  for js in $scripts_list
  do
    eval url=$url_list$js
    eval name=$js
    echo $name
    wget -q --no-check-certificate $url -O $name.new

    # 如果上一步下载没问题，才去掉后缀".new"，如果上一步下载有问题，就保留之前正常下载的版本
    if [ $? -eq 0 ]; then
      mv -f $name.new $name
      echo -e "$name 更新成功!!!"
	  croname=`echo "$name"|awk -F\. '{print $1}'`
	  script_date=`cat  $name|grep "http"|awk '{if($1~/^[0-59]/) print $1,$2,$3,$4,$5}'|sort |uniq|head -n 1`
	  [ -z "${script_date}" ] && script_date=`cat  $name|grep -Eo "([0-9]+|\*) ([0-9]+|\*) ([0-9]+|\*) ([0-9]+|\*) ([0-9]+|\*)"|sort |uniq|head -n 1`
	  if [ -z "${script_date}" ]; then
	    cron_min=$(rand 1 59)
	    cron_hour=$(rand 7 9)
      [ $(grep -c "$croname" ${dir_config}/crontab.list) -eq 0 ] && sed -i "/hangup/a${cron_min} ${cron_hour} * * * jtask $croname"  ${dir_config}/crontab.list
	  else
	    check_existing_cron=`grep -c "$croname" ${dir_config}/crontab.list`
	    echo $name "开始添加定时..."
	    if [ "${check_existing_cron}" -eq 0 ]; then
	      sed -i "/hangup/a${script_date} jtask $croname &>/dev/null"  ${dir_config}/crontab.list
	      echo -e "$name 成功添加定时!!!\n"
	    else
	      if [ "${Enablerenew}" = "true" ]; then
	      	echo -e "检测到"$name"定时已存在开始替换...\n"
	        grep -v "$croname" ${dir_config}/crontab.list > output.txt
		      mv -f output.txt ${dir_config}/crontab.list
		      sed -i "/hangup/a${script_date} jtask $croname &>/dev/null"  ${dir_config}/crontab.list
	        echo -e "替换"$name"定时成功!!!"
	      else
	        echo -e "$name 存在定时,已选择不替换...\n"
	      fi
	    fi
	  fi
    else
      [ -f $name.new ] && rm -f $name.new
      echo -e "$name 脚本失效,已删除脚本...\n"
      croname=`echo "$name"|awk -F\. '{print $1}'`
      check_existing_cron=`grep -c "$croname" ${dir_config}/crontab.list`
      if [ "${check_existing_cron}" -ne 0 ]; then
        grep -v "$croname" ${dir_config}/crontab.list > output.txt
        mv -f output.txt ${dir_config}/crontab.list
        echo -e "检测到"$name"残留文件..."
        rm -f ${name:-default}
        echo -e "开始清理"$name"残留文件..."
        cd $dir_log
        rm -rf ${croname:-default}
        echo -e "清理"$name"残留文件完成!!!\n"
        cd $dir_scripts
      fi
    fi
  done
  index=$[$index+1]
done

if [ "${Updatediy}" = "true" ]; then
############################## 更新diy.sh ##############################
cd $dir_config
echo -e "开始更新 diy.sh "
wget -q --no-check-certificate https://gitee.com/qweradci/shell/raw/v4/config/diy.sh -O diy.sh.new
 if [ $? -eq 0 ]; then
  mv -f diy.sh.new diy.sh
  echo -e "更新 diy.sh 成功!!!"
 else
  rm -rf diy.sh.new
  echo -e "更新 diy.sh 失败...\n"
 fi
fi
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
