## Version: v4.4.1
## Date: 2021-05-13
## Update Content: EnableTaskFinishShell=true时，给task_finish.sh增加一个参考文件的链接。

## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第一区域：jd_scripts特有变量填写区域（需要shell转换的） ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## Cookie（必填，由脚本去export JD_COOKIE，无需在config.sh中export）
## 请依次填入每个用户的Cookie，Cookie的具体形式（只有pt_key字段和pt_pin字段，没有其他字段）：pt_key=xxxxxxxxxx;pt_pin=xxxx;
Cookie1=""
Cookie2=""
Cookie3=""
Cookie4=""
Cookie5=""
Cookie6=""

## 每日签到的通知形式（选填，JD_BEAN_SIGN_STOP_NOTIFY和JD_BEAN_SIGN_NOTIFY_SIMPLE，由脚本去export，无需在config.sh中export）
## js脚本每日签到提供3种通知方式，分别为：关闭通知，请填入0；简洁通知，请填入1；长通知，请填入2
NotifyBeanSign=""

## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第一区域：jd_scripts脚本特有变量填写区域（需要shell转换的） ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第二区域：jd_scripts特有变量填写区域（不需要shell转换的） ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## 请在本区域补充其他你需要用到变量，export 变量名="变量值"，或：export 变量名='变量值'
## 创建容器后在容器内运行 `cat /jd/scripts/githubAction.md` 可查看环境变量清单
## 该链接中除JD_COOKIE、JD_BEAN_SIGN_STOP_NOTIFY、JD_BEAN_SIGN_NOTIFY_SIMPLE这三个变量以及所有互助码类变量外，其他所有变量请在本区域自行补充

## 店铺取关，例，1是0否&1是0否&截止商品&截止店铺，默认取消全部
export UN_SUBSCRIBES=""

## 如需使用，请自行解除下一行注释
#export JD_USER_AGENT=""

## 惊喜工厂电力活动ID
export TUAN_ACTIVEID=""

## 助力作者，默认是，false为否
export HELP_AUTHOR=""

## 滴滴橙心果园，多个用户逗号隔开
export DD_TOKEN=""

################################## 定义通知TOKEN（选填） ##############################
## 推送通知环境变量(目前提供微信server酱、pushplus(推送加)、iOS Bark APP、telegram机器人、钉钉机器人、企业微信机器人、iGot、企业微信应用消息等通知方式)
## 具体设置教程：https://github.com/wisz2021/jd_docker/blob/main/githubAction.md

## 微信server酱推送
export PUSH_KEY=""

## BARK推送
export BARK_PUSH=""
export BARK_SOUND=""

## Telegram推送
export TG_BOT_TOKEN=""
export TG_USER_ID=""

## Telegram 代理的 IP
export TG_PROXY_HOST=""
export TG_PROXY_PORT=""
export TG_PROXY_AUTH=""
export TG_API_HOST=""

## 钉钉推送
export DD_BOT_TOKEN=""
export DD_BOT_SECRET=""

## 企业微信机器人推送
export QYWX_KEY=""
export QYWX_AM=""

## iGot推送
export IGOT_PUSH_KEY=""

## pushplus推送
export PUSH_PLUS_TOKEN=""
export PUSH_PLUS_USER=""

################################## 控制环境变量（选填） ##############################

## 自定义延迟签到,单位毫秒,默认分批并发无延迟
export JD_BEAN_STOP=""

## 京东萌宠是否静默运行,false为推送,true为不推送，默认为false
export PET_NOTIFY_CONTROL=""

## 京东农场是否静默运行,false为推送,true为不推送，默认为false
export FRUIT_NOTIFY_CONTROL=""

## 京东领现金是否静默运行,false为推送,true为不推送，默认为true
export CASH_NOTIFY_CONTROL=""

## 京东领现金是否把红包兑换成京豆,false为否,true为是(即：花费2元红包兑换200京豆，一周可换四次)，默认为false
export CASH_EXCHANGE=""

## 点点券是否静默运行,false为推送,true为不推送，默认为false
export DDQ_NOTIFY_CONTROL=""

## 京东赚赚小程序是否静默运行,false为推送,true为不推送，默认为true
export JDZZ_NOTIFY_CONTROL=""

## 京东摇钱树兑换0.07金贴后是否静默运行,false为推送,true为不推送，默认为false
export MONEYTREE_NOTIFY_CONTROL=""

## 宠汪汪兑京豆脚本是否静默运行,false为推送,true为不推送，默认为false
export JD_JOY_REWARD_NOTIFY=""

## 宠汪汪喂食数量,可以填的数字0,10,20,40,80,其他数字不可
export JOY_FEED_COUNT="80"

## 宠汪汪帮好友喂食是否给好友喂食,false为否,true为是(给好友喂食)
export JOY_HELP_FEED=""

## 宠汪汪是否参加赛跑(默认双人赛)
export JOY_RUN_FLAG=""

## 脚本参加几人的赛跑,可选数字为2,10,50(注：此项功能在JOY_RUN_FLAG为true的时候才生效)，如设置不同账号参加不同类别比赛则用&区分(如三个账号：2&10&50)
export JOY_TEAM_LEVEL=""

## 宠汪汪赛跑获胜后是否推送通知，false为不推送,true为推送，默认为true
export JOY_RUN_NOTIFY=""

## 宠汪汪赛跑自己账号内部互助，false为否,true为是，默认为false
export JOY_RUN_HELP_MYSELF=""

## 宠汪汪积分兑京豆，可填20或500,脚本默认0,0表示不兑换京豆
export JD_JOY_REWARD_NAME="20"

## 宠汪汪赛跑token需自行抓包,宠汪汪小程序获取token
export JOY_RUN_TOKEN=""

## 东东超市兑换京豆数量,可输入20或1000或其他商品名称,例碧浪洗衣凝珠
export MARKET_COIN_TO_BEANS="20"

## 东东超市兑换奖品成功后是否静默运行,false为推送,true为不推送，默认为false
export MARKET_REWARD_NOTIFY=""

## 东东超市pk活动参加作者创建的pk队伍,true表示参加,false表示不参加，默认为true
export JOIN_PK_TEAM=""

## 东东超市抽奖是否使用金币去抽奖,true表示抽奖,false表示不抽奖，默认为false
export SUPERMARKET_LOTTERY=""

## 东东农场水滴换豆卡，true表示换豆(不浇水),false表示不换豆(继续浇水),脚本默认是浇水
export FRUIT_BEAN_CARD=""

## 疯狂的JOY循环助力，true表示循环助力,false表示不循环助力，默认不开启循环助力。
export JDJOY_HELPSELF=""

## 疯狂的JOY京豆兑换，目前最小值为2000京豆详情请查看活动页面，默认数字0不开启兑换
export JDJOY_APPLYJDBEAN=""

## 疯狂的JOY自动购买什么等级的JOY，如需使用，请自行解除注释
#expore BUY_JOY_LEVEL=""

## 摇钱树是否自动卖出金果兑换成金币，true卖出，false不卖出，默认为false
export MONEY_TREE_SELL_FRUIT="true"

## 东东工厂提供心仪商品名称，达到条件后兑换，如不提供则会兑换当前所选商品
export FACTORAY_WANTPRODUCT_NAME=""

## 京喜工厂控制哪个京东账号不运行此脚本，多个账户&连接，输入0，代表全部账号不运行京喜工厂脚本
export DREAMFACTORY_FORBID_ACCOUNT=""

## 东东工厂控制哪个京东账号不运行此脚本，多个账户&连接，输入0，代表全部账号不运行京喜工厂脚本
export JDFACTORY_FORBID_ACCOUNT=""

## 京喜财富岛控制是否运行脚本后通知，输入true为通知,不填则为不通知
export CFD_NOTIFY_CONTROL=""

## 京喜农场通知推送开关,默认1，通知级别 0=只通知成熟;1=本次获得水滴>0;2=任务执行;3=任务执行+未种植种子
export JXNC_NOTIFY_LEVEL=""

## 加购任务，默认false不做这些任务，如想做，请设置为true
export PURCHASE_SHOPS=""

################################## 第三方脚本设置 ##################################

## 暂无

## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第二区域：jd_scripts脚本特有变量填写区域（不需要shell转换的） ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第三区域：互助码填写区域 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## 所有互助码活动，请在运行过一次需要互助的活动脚本以后，再运行一次jcode即可获取，将jcode的输出内容粘贴在本区域中即可，或粘贴在config/sharecode.sh中
## 如想在运行互助活动脚本时直接从jcode中自动获取互助码并进行互助，请将第四区域中 AutoHelpOther 设置为true
## 当 AutoHelpOther 设置为 true 时，jtask会先导入jcode最新日志，再导入config/sharecode.sh，如果你希望不完全按照jcode日志内容进行互助，你可以按需要修改config/sharecode.sh，config/sharecode.sh赋值内容会覆盖jcode日志中同名变量

## 东东农场：
MyFruit1=''
MyFruit2=''
MyFruit3=''
MyFruit4=''
MyFruit5=''
MyFruit6=''

ForOtherFruit1=""
ForOtherFruit2=""
ForOtherFruit3=""
ForOtherFruit4=""
ForOtherFruit5=""
ForOtherFruit6=""

## 东东萌宠：
MyPet1=''
MyPet2=''
MyPet3=''
MyPet4=''
MyPet5=''
MyPet6=''

ForOtherPet1=""
ForOtherPet2=""
ForOtherPet3=""
ForOtherPet4=""
ForOtherPet5=""
ForOtherPet6=""

## 种豆得豆：
MyBean1=''
MyBean2=''
MyBean3=''
MyBean4=''
MyBean5=''
MyBean6=''

ForOtherBean1=""
ForOtherBean2=""
ForOtherBean3=""
ForOtherBean4=""
ForOtherBean5=""
ForOtherBean6=""

## 京喜工厂：
MyDreamFactory1=''
MyDreamFactory2=''
MyDreamFactory3=''
MyDreamFactory4=''
MyDreamFactory5=''
MyDreamFactory6=''

ForOtherDreamFactory1=""
ForOtherDreamFactory2=""
ForOtherDreamFactory3=""
ForOtherDreamFactory4=""
ForOtherDreamFactory5=""
ForOtherDreamFactory6=""

## 东东工厂：
MyJdFactory1=''
MyJdFactory2=''
MyJdFactory3=''
MyJdFactory4=''
MyJdFactory5=''
MyJdFactory6=''

ForOtherJdFactory1=""
ForOtherJdFactory2=""
ForOtherJdFactory3=""
ForOtherJdFactory4=""
ForOtherJdFactory5=""
ForOtherJdFactory6=""

## 京东赚赚：
MyJdzz1=''
MyJdzz2=''
MyJdzz3=''
MyJdzz4=''
MyJdzz5=''
MyJdzz6=''

ForOtherJdzz1=""
ForOtherJdzz2=""
ForOtherJdzz3=""
ForOtherJdzz4=""
ForOtherJdzz5=""
ForOtherJdzz6=""

## 疯狂的JOY：
MyJoy1=''
MyJoy2=''
MyJoy3=''
MyJoy4=''
MyJoy5=''
MyJoy6=''

ForOtherJoy1=""
ForOtherJoy2=""
ForOtherJoy3=""
ForOtherJoy4=""
ForOtherJoy5=""
ForOtherJoy6=""

## 京喜农场：
MyJxnc1=''
MyJxnc2=''
MyJxnc3=''
MyJxnc4=''
MyJxnc5=''
MyJxnc6=''

ForOtherJxnc1=""
ForOtherJxnc2=""
ForOtherJxnc3=""
ForOtherJxnc4=""
ForOtherJxnc5=""
ForOtherJxnc6=""

## 口袋书店：
MyBookShop1=''
MyBookShop2=''
MyBookShop3=''
MyBookShop4=''
MyBookShop5=''
MyBookShop6=''

ForOtherBookShop1=""
ForOtherBookShop2=""
ForOtherBookShop3=""
ForOtherBookShop4=""
ForOtherBookShop5=""
ForOtherBookShop6=""

## 签到领现金：
MyCash1=''
MyCash2=''
MyCash3=''
MyCash4=''
MyCash5=''
MyCash6=''

ForOtherCash1=""
ForOtherCash2=""
ForOtherCash3=""
ForOtherCash4=""
ForOtherCash5=""
ForOtherCash6=""

## 闪购盲盒：
MySgmh1=''
MySgmh2=''
MySgmh3=''
MySgmh4=''
MySgmh5=''
MySgmh6=''

ForOtherSgmh1=""
ForOtherSgmh2=""
ForOtherSgmh3=""
ForOtherSgmh4=""
ForOtherSgmh5=""
ForOtherSgmh6=""

## 京喜财富岛：
MyCfd1=''
MyCfd2=''
MyCfd3=''
MyCfd4=''
MyCfd5=''
MyCfd6=''

ForOtherCfd1=""
ForOtherCfd2=""
ForOtherCfd3=""
ForOtherCfd4=""
ForOtherCfd5=""
ForOtherCfd6=""

## 东东健康社区：
MyHealth1=''
MyHealth2=''
MyHealth3=''
MyHealth4=''
MyHealth5=''
MyHealth6=''

ForOtherHealth1=""
ForOtherHealth2=""
ForOtherHealth3=""
ForOtherHealth4=""
ForOtherHealth5=""
ForOtherHealth6=""

################################## 短期互助码 ##################################


## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第三区域：互助码填写区域 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第四区域：本shell脚本特有变量填写区域 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## 临时屏蔽某个Cookie（选填）
## 如果某些Cookie已经失效了，但暂时还没法更新，可以使用此功能在不删除该Cookie和重新修改Cookie编号的前提下，临时屏蔽掉某些编号的Cookie
## 多个Cookie编号以半角的空格分隔，两侧一对半角双引号，使用此功能后，在运行js脚本时账号编号将发生变化
## 举例1：TempBlockCookie="2"    临时屏蔽掉Cookie2
## 举例2：TempBlockCookie="2 4"  临时屏蔽掉Cookie2和Cookie4
TempBlockCookie=""

## 如果只是想要屏蔽某个账号不玩某些小游戏，可以参考下面 case 这个命令的例子来控制，脚本名称（不含路径）请去掉后缀 “.js”，包括own脚本和其他你自己添加的脚本，均按这样处理。
## case $1 in
##   jd_fruit)
##     TempBlockCookie="5"      # 账号5不玩jd_fruit
##     ;;
##   jd_dreamFactory | jd_jdfactory)
##     TempBlockCookie="2"      # 账号2不玩jd_dreamFactory和jd_jdfactory
##     ;;
##   jd_jdzz | jd_joy)
##     TempBlockCookie="3 6"    # 账号3、账号6不玩jd_jdzz和jd_joy
##     ;;
## esac

## 是否自动删除 jd_scripts 项目中失效的定时任务（选填）
AutoDelCron="true"

## 是否自动增加 jd_scripts 项目中新的本地定时任务（选填）
AutoAddCron="true"

## 删除日志的时间（选填） 
## 在运行删除旧的日志任务时，要删除多少天以前的日志，请输入正整数，不填则禁用删除日志的功能
RmLogDaysAgo="7"

## 随机延迟启动任务（选填）
## 如果任务不是必须准点运行的任务，那么给它增加一个随机延迟，由你定义最大延迟时间，单位为秒，如 RandomDelay="300" ，表示任务将在 1-300 秒内随机延迟一个秒数，然后再运行
## 在crontab.list中，在每小时第0-2分、第30-31分、第59分这几个时间内启动的任务，均算作必须准点运行的任务，在启动这些任务时，即使你定义了RandomDelay，也将准点运行，不启用随机延迟
## 在crontab.list中，除掉每小时上述时间启动的任务外，其他任务在你定义了 RandomDelay 的情况下，一律启用随机延迟，但如果你按照Wiki教程给某些任务添加了 "now"，那么这些任务也将无视随机延迟直接启动
RandomDelay="300"

## 自动按顺序进行账号间互助（选填）
## 设置为 true 时，将直接导入 jcode 最新日志来进行互助，如希望不完全按照jcode 最新日志来互助，可以在config目录下新建sharecode.sh，内容参考jcode日志并按需修改，sharecode.sh赋值内容会覆盖jcode日志中同名变量
## 如果启用了TempBlockCookie，那么只是被屏蔽的账号不助力其他账号，其他账号还是会助力被屏蔽的账号
## 如不需要自动互助，请设置为false，并将jcode脚本输出日志粘贴在第三区域或粘贴在config/sharecode.sh中，并自行根据需要进行修改
AutoHelpOther=""

## 定义 jcode 脚本导出的互助码模板样式（选填）
## 不填 使用“按编号顺序助力模板”，Cookie编号在前的优先助力
## 填 0 使用“全部一致助力模板”，所有账户要助力的码全部一致
## 填 1 使用“均等机会助力模板”，所有账户获得助力次数一致
## 填 2 使用“随机顺序助力模板”，本套脚本内账号间随机顺序助力，每次生成的顺序都不一致。
HelpType=""

## 当检测到scripts/githubAction.md文件发生变化时是否发送通知，该文件是jd_scripts所有环境变量的清单，填 true 则发送
EnvChangeNotify="true"

## 是否在运行jup后再额外运行你自己写的 shell 脚本（选填）
## 如果你自己会写 shell 脚本，并且希望在每次 jup 这个脚本运行时，额外运行你的 shell 脚本，请赋值为 "true"
## 同时，请务必将你的脚本命名为 diy.sh (只能叫这个文件名)，放在 config 目录下
EnableJupDiyShell=""

## 是否在运行jtask/otask/mtask后再额外运行你自己写的 shell 脚本（选填）
## 如果你自己会写 shell 脚本，并且希望在每次 jtask/otask/mtask 脚本后，额外运行你的 shell 脚本，请赋值为 "true"
## 同时，请务必将你的脚本命名为 task_finish.sh (只能叫这个文件名)，放在 config 目录下
## 注意：只在正常依次运行单个任务时才会额外运行 task_finish.sh，账号并发运行，或运行所有脚本时不会额外运行
## 参考文件：https://gitee.com/evine/my_scripts/blob/master/task_finish.sh ，千万千万不要照搬
EnableTaskFinishShell="true"

## 启用其他开发者的仓库方式一（选填）：完整更新整个仓库，针对同一个仓库，方式一和方式二只能选择一种
## OwnRepoUrl：仓库地址清单，必须从1开始依次编号
## OwnRepoBranch：你想使用的分支清单，不指定分支（即使用默认分支）时可以用一对不包含内容的空引号""，编号必须和 OwnRepoUrl 对应。
## OwnRepoPath：要使用的脚本在仓库哪个路径下，请输入仓库下的相对路径，默认空值""代表仓库根目录，编号必须和 OwnRepoUrl 对应，同一个仓库下不同文件夹之间使用空格分开。如果既包括根目录又包括子目录，填写请见示例中OwnRepoPath3。
## 所有脚本存放在 own 目录下，三个清单必须一一对应，示例如下：
## OwnRepoUrl1="https://gitee.com/abc/jdtsa.git"
## OwnRepoUrl2="https://github.com/nedcd/jxddfsa.git"
## OwnRepoUrl3="git@github.com:eject/poex.git"
## 
## OwnRepoBranch1=""         # 代表第1个仓库 https://gitee.com/abc/jdtsa.git 使用 "默认" 分支
## OwnRepoBranch2="main"     # 代表第2个仓库 https://github.com/nedcd/jxddfsa.git 使用 "main" 分支
## OwnRepoBranch3="master"   # 代表第3个仓库 git@github.com:eject/poex.git 使用 "master" 分支
## 
## OwnRepoPath1=""                   # 代表第1个仓库https://gitee.com/abc/jdtsa.git，你想使用的脚本就在仓库根目录下。
## OwnRepoPath2="scripts/jd normal"  # 代表第2个仓库https://github.com/nedcd/jxddfsa.git，你想使用的脚本在仓库的 scripts/jd 和 normal文件夹下，必须输入相对路径
## OwnRepoPath3="'' cron"            # 代表第3个仓库git@github.com:eject/poex.git，你想使用的脚本在仓库的 根目录 和 cron 文件夹下，必须输入相对路径

OwnRepoUrl1=""
OwnRepoUrl2=""

OwnRepoBranch1=""
OwnRepoBranch2=""

OwnRepoPath1=""
OwnRepoPath2=""

## 启用其他开发者的仓库方式二（选填）：只下载想要的文件，针对同一个仓库，方式一和方式二只能选择一种。
## 请先确认你能正常下载该raw文件才列在下方，无论是github还是gitee，请只填入 raw 文件链接。
## 一行一个文件下载链接，首尾一对半角括号，示例：
## OwnRawFile=(
##     https://gitee.com/wabdwdd/scipts/raw/master/jd_abc.js
##     https://github.com/lonfeg/loon/raw/main/jd_dudi.js
##     https://github.com/sunsem/qx/raw/main/z_dida.js
## )
OwnRawFile=(

)

## 是否自动增加 own 类脚本（其他开发者脚本）的cron任务（选填）
## 本shell脚本不一定能完全从js脚本中识别出有效的cron设置，如果发现不能满足你的需要，请设置为 "false" 以取消自动增加。
AutoAddOwnCron="true"

## 是否自动删除 own 类脚本（其他开发者脚本）的cron任务（选填）
## 本shell脚本不一定能完全从js脚本中识别出有效的cron设置，如果发现不能满足你的需要，请设置为 "false" 以取消自动删除。
AutoDelOwnCron="true"

## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第四区域：本shell脚本特有变量填写区域 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑



## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第五区域：额外的环境变量填写区域 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## 请在以下补充你需要用到的额外的环境变量，形式：export 变量名="变量值"，或：export 变量名='变量值'


## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第五区域：额外的环境变量填写区域 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
