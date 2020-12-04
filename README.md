* [subconverter wiki](https://github.com/tindy2013/subconverter)  
* 支持自定义节点列表地址生成订阅 [create secret gist](https://gist.github.com/)  
* 可fork后按需修改start.sh中auto.ini实现筛选自定义节点等其它功能  
  
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https://github.com/mixool/subconverterku)  
  
### 服务端
点击上面紫色`Deploy to Heroku`，会跳转到heroku app创建页面，填上app的名字、选择节点、按需修改部分参数后点击下面deploy创建app即可开始部署  
如出现错误，可以多尝试几次，待部署完成后页面底部会显示Your app was successfully deployed  
  * 点击Manage App可在Settings下的Config Vars项**查看和重新设置参数,立即生效**  
  * 点击Open app跳转域名即为heroku分配域名，格式为`appname.herokuapp.com`，用于客户端  
  
### 客户端
* **务必使用HTTPS访问**  
* **替换subku.herokuapp.com为heroku分配的项目域名**  
* **替换API_TOKEN为部署时设置的API_TOKEN值**  
> demo  
* 订阅转换: https://subku.herokuapp.com/
* 订阅自定义节点列表: https://subku.herokuapp.com/getprofile?name=profiles/auto.ini&token=password

> 贡献demo订阅节点需得到节点提供者授权,可编辑[links.diy](https://github.com/mixool/subconverterku/blob/master/etc/links.diy)文件后提交PR或使用[issues](https://github.com/mixool/subconverterku/issues/new)  
