###  Bookdinner
使用 Java Web 技术实现的一个简单网上订餐系统。

## [仓库目录结构介绍]

```
|-- bookdinner
|  `--build
|      |--classes
|      |    |--action
|      |    |--dao
|      |    |--model
|      |    |--service
|      |    |--util 
|  `--src
|      |--com
|      |    |--action
|      |         |--goodsAction.java
|      |         |--adminAction.java
|      |         |--buyAction.java
|      |         |--catelogAction.java
|      |         |--goodsAction.java
|      |         |--indexAction.java
|      |         |--liuyanAction.java
|      |         |--UserAction.java
|      |    |--dao
|      |         |--TAdminDAO.java
|      |         |--TCatelogDAO.java
|      |         |--TGoodsDAO.java
|      |         |--TliuyanDAO.java
|      |         |--TOrderltemDAO.java
|      |         |--TUserDAO.classeeer
|      |    |--model
|      |    |--service
|      |         |--careService.java
|      |         |--catelogService.java
|      |         |--loginService.java
|      |    |--util
|      |
|  `--WebContent
|      |--admin
|      |    |--admin
|      |         |--adminAdd.jsp
|      |         |--adminManage.jsp
|      |         |--adminManageFenye.jsp
|      |    |--catelog
|      |         |--catelogAdd.jsp
|      |         |--catelogMana.jsp
|      |    |--goods
|      |         |--goodsDetailHou.jsp
|      |         |--goodsManaNoTejia.jsp
|      |         |--goodsNoTejiaAdd.jsp
|      |    |--index
|      |         |--sysPro.jsp
|      |    |--js    JS中outlookbar.additem(设置个人中心下拉菜单样式)
|      |    |--liuyan
|      |         |--liuyanMana.jsp
|      |    |--order
|      |         |--orderDetail.jsp
|      |         |--orderMana.jsp
|      |         |--userXinxi.jsp
|      |    |--user
|      |         |--userMana.jsp

|      |         |--userMana.jsp
|      |         |--userPw.jsp
|      |    `--index.jsp
|      |    `--menu.jsp
|      |    `--top.jsp
|      |--common
|      |         |--add_success.jsp
|      |         |--succ.jsp
|      |         |--succeed.jsp
|      |--css
|      |--fckeditor(不知道啥作用目前)
|      |--img
|      |--META-INF
|      |My97DatePicker
|      |qiantai（目录参考admin）
|      |updown
|      |upload
|      |WEB-INF
|      |login.jsp
|      |loginSuccess.jsp
```

-`qiantai`来不及写完了
完成首页等JSP页面的布局
主要就是类似前端美化部分代码


##完善数据库（仍存在的问题）
比如注册要有
user_name user_pw user_realname user_address user_sex user_tel user_email user_qq
自己也比较偷懒并没有对此格式进行要求。。
有时间再改吧前端美化太难看了




contributor BY 党岩松&&杨坤