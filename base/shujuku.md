# 樱果传媒APP || 网站 数据库设计
## 关系数据库
# 整体数据


CREATE TABLE vedio_template(
	vedio_id CHARACTER(9) PRIMARY KEY NOT NULL AUTO_INCREMENT,
   vedio_collections int,
   vedio_play_times int,
   vedio_play_duration varchar(255),
   vedio_title varchar(255),
   vedio_price float,
   vedio_tags_id varchar(255) FOREIGN KEY REFERENCES vedio_tags(tag_id),
   vedio_image varchar(255),
   vedio_order int,
   vedio_author varchar(255),
   vedio_introduce varchar(255),
   vedio_activity varchar(255),
   vedio_class char(10),
   vedio_class_side char(10)
)

<h2 style="color:red">模板页</h2>

- 视频ID，    char(9)         主键
- 收藏数，    int
- 播放量数，  int
- 上传时间，  DATE()
- 视频时长    varchar(255)  预留
- 标题，      varchar(255)
- 价格，      float
- 标签ID，    varchar(255)     外键
- 图片，      varchar(255)
- 视频地址，  varchar(255)
- 优先级，    int             从低到高0——9 默认1
- 作者，      varchar(255)
- 介绍信息，  varchar(255)
- 活动情况    varchar(255)
- 侧边栏大类分类ID    char(10)
- 顶栏小类分类ID      char(10)


<h2 style="color:red">标签 || </h2> 
>.
标签ID      char(10)
标签名称      varchar(255)
<h2 style="color:red">大类表</h2>

- 侧边栏大类分类ID    char(10)
- 侧边栏大类分类名称    varchar(255)

<h2 style="color:red">小类表</h2>

- 侧边栏大类分类ID    char(10)
- 顶栏小类分类ID     char(10)
- 顶栏小类分类名称    varchar(255)


<h2 style="color:red">轮播表</h2>

-  图片地址        varchar(255)
-  图片ID          char(10)
-  BOOL是否轮播为真    boolea
-  链接地址        varchar(255)

<h2 style="color:red">基本个人信息表</h2>

-  用户ID          char(10)
-  头像            varchar(255)
-  账号            varchar(255)
-  密码            varchar(255)
-  性别            varchar(255)
-  手机号          varchar(255) 
-  邮箱    预留    
-  个性签名    预留
-  预留
-  预留一个字段

<h2 style="color:red">社交表</h2>
>.暂无
## 概要设计
