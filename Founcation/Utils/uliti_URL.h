//*
 
//
//  uliti_URL.h
//  View
//
//  Created by YTO on 13-7-22.
//  Copyright (c) 2013年 YTO—jhony. All rights reserved.
//


//<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>

#define headUrltest @"http://10.1.195.56:8180"    //uat
//#define headUrl @"http://58.32.246.93:8180"
#define headUrl @"http://58.32.246.78:8380"     //生产
//#define headUrl @"http://192.168.20.23:8080"    //本地
//#define headUrltest @"http://192.168.20.21:8080"  //本地
//#define headUrl @"http://10.1.195.56:8180"        //UAT

//<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>



#define loginURL [NSString stringWithFormat:@"%@/android/androidUserLogin.action?",headUrl]  //登录 外网ok

//新闻
//#define newUrl       [NSString stringWithFormat:@"%@/android/getNewRecords?",headUrltest]   //UAT外网 ok
//#define test_url     @"http://occtest.yto56.com.cn" //新闻图片路径
#define newUrl         [NSString stringWithFormat:@"%@/android/getNewRecords?",headUrl]     //UAT外网老的
#define test_url       @"http://occ.yto56.com.cn" //新闻图片路径

//数据  业务量
#define dataUrl       [NSString stringWithFormat:@"%@/android/getDataInfoRecords?",headUrl]    //外网
#define workerDataUrl [NSString stringWithFormat:@"%@/android/getBusinessEmpDw?" ,headUrl]     //外网
//业务员信息数据
#define jobDataUrl    [NSString stringWithFormat:@"%@/android/getEmpByOrgCode?",headUrl]       //外网
#define progressUrl   [NSString stringWithFormat:@"%@/android/getDataCount?" ,headUrl]         //外网
#define jobMonthUrl   [NSString stringWithFormat:@"%@/android/getAllBusinessEmpDw.action?",headUrltest]

//指标
#define proListUrl    [NSString stringWithFormat:@"%@/android/getBranchSubOrg?" ,headUrl] //全国省，分公司

#define monthListFUrl [NSString stringWithFormat:@"%@/android/getRptBusinessAmountByMonth?",headUrl]//月报 总
#define monthListWUrl [NSString stringWithFormat:@"%@/android/getRptEmpDwByMonth?" ,headUrl]        //月报 员工

#define dayListSUrl   [NSString stringWithFormat:@"%@/android/getRptOrgDwByDayRegion?",headUrl] //日报  省区
#define dayListFUrl   [NSString stringWithFormat:@"%@/android/getRptOrgDwByDay?",headUrl]       //日报  分公司
#define dataCheckUrl  [NSString stringWithFormat:@"%@/android/iosDataRecord?",headUrl]          //查询数据
#define calanderUrl   [NSString stringWithFormat:@"%@/android/getOftenCatch?",headUrl]

#define SelCmpUrl     [NSString stringWithFormat:@"%@/android/getSubOrg?",headUrl] //公司级别的选择

#define serviceRankUrl [NSString stringWithFormat:@"%@/android/getServiceComplaintRate?",headUrltest] //客服投诉排名
#define serviceMonUrl [NSString stringWithFormat:@"%@/android/getServiceRpt?",headUrltest]//客服投诉日-月报
#define serviceGraphUrl [NSString stringWithFormat:@"%@/android/getServiceRptLineChart?",headUrltest]  //曲线图
#define servicePieUrl [NSString stringWithFormat:@"%@/android/getServiceRptPie?",headUrltest]   //饼图

//============================================================
#define monitorDataUrl @"http://58.32.246.78:8380/android/getMonitorData?" //数据监控测试
#define arbitrationUrl @"http://116.228.70.222:9081/AoService/OperateStatisticsService.asmx"//仲裁
#define ordertrackUrl  @"http://58.32.246.70:8088/MarketingInterface" //运单跟踪接口
//============================================================

//17、支干线 分部
#define inboundDefuUrl   [NSString stringWithFormat:@"%@/android/getBranchTrunkByList?",headUrl]  //一级
#define inboundDateUrl   [NSString stringWithFormat:@"%@/android/getBranchTrunkByDate?",headUrl]  //二级
#define inboundLoadUrl   [NSString stringWithFormat:@"%@/android/getBranchTrunkByLine?",headUrl]  //三级

//17、总公司 二级
#define inboundProUrl   [NSString stringWithFormat:@"%@/android/getBranchTrunkByProvince?",headUrl] //省区二级
#define inboundMagUrl   [NSString stringWithFormat:@"%@/android/getBranchTrunkByManage?",headUrl]   //全国二级
#define goCarTimeUrl    [NSString stringWithFormat:@"%@/android/getBranchTrunkInstant?",headUrl]    //发车

//18、处罚
#define punishMagUrl    [NSString stringWithFormat:@"%@/android/getBillAccount?",headUrl]         //一级

//18、处罚明细
#define punishInfoUrl   [NSString stringWithFormat:@"%@/android/getBillAccountDetail?",headUrl]   //二级


/* 100058  290037  100038  563300  796011 */
 #define balanceMagUrl  [NSString stringWithFormat:@"%@/android/getBalance?",headUrl]



#define jhonyzhang   @"GO"

#define APP_ITUNESLINK  @"https://itunes.apple.com/cn/app/guan-li-jia-shi-cang/id698563058?mt=8"

//*/
