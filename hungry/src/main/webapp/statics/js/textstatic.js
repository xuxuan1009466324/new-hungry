function setSessionPageReferrer(){var a=live800.utils.getCookie("pageReferrInSession"),b=document.referrer;if((null===a||""===a||a!=b&&isBaidu(b))&&(a=b),null!==a&&""!==a){var c=700;if(a.length>c){var d=a.substring(0,c),e=isBaidu(a);if(e){var f=getBaiduWd(a);if(null!==f){var g=getBaiduWd(d);null===g?d=d+f[0]+f[1]:f[1]!==g[1]&&(d=d.replace(f[0],f[0]+f[1]+"&"))}var h=getBDEqid(a);if(null!==h){var i=getBDEqid(d);null===i?d=d+h[0]+h[1]:h[1]!==i[1]&&(d=d.replace(h[0],h[0]+h[1]+"&"))}}a=d}live800.utils.setSessionCookie("pageReferrInSession",a)}}function isBaidu(a){var b=/[a-zA-Z0-9\u4E00-\u9FA5][\-a-zA-Z0-9\u4E00-\u9FA5]{0,62}(\.[a-zA-Z0-9\u4E00-\u9FA5][\-a-zA-Z0-9\u4E00-\u9FA5]{0,62})+/gi,c=a.match(b);return c&&c[0].indexOf(".baidu.")>0?!0:!1}function getBDParam(a,b){for(var c=null,d=0,e=b.length;e>d;d++){var f=a.indexOf(b[d]);if(f>0){var g=a.indexOf("&",f+1);0>g&&(g=a.length),c=[b[d],a.substring(f+b[d].length,g)];break}}return c}function getBaiduWd(a){var b=["&wd=","&word=","&rqwd=","?wd=","?word=","?rqwd="];return getBDParam(a,b)}function getBDEqid(a){var b=["&eqid=","?eqid="];return getBDParam(a,b)}function setSessionFirstEnterUrl(){var a=live800.utils.getCookie("firstEnterUrlInSession");null==a&&(a=window.location,null==a&&(a=" "),live800.utils.setSessionCookie("firstEnterUrlInSession",a))}function text_generate(){return layerHtml}function startFlowCapacity(){if(live800.utils.isCookie()&&"1"!=document.body.getAttribute("lim:VisitorCapacity")){document.body.setAttribute("lim:VisitorCapacity","1");var a=live800.utils.getCookie("VisitorCapacity");if(null==a||""==a){var b=preferences.protocol+"://"+preferences.baseUrl+preferences.baseWebapp+"/SurferServer?cmd=115&companyID="+preferences.companyID,c=new Image;c.onload=function(){live800.utils.setSessionCookie("VisitorCapacity","1")},c.src=b}}}if(window.onerror=function(){return!0},!live800)var live800={};live800.Sys||(live800.Sys={}),live800.utils||(live800.utils={});var isMobile=function(a){a&&(a=a.toLowerCase());for(var b=["iPhone","iPad","iPod","Android","Mobile","Linux","SymbianOS","BlackBerry","Phone"],c=0;c<b.length;c++){var d=a.indexOf(b[c].toLowerCase());if(-1!=d)return!0}return!1}(navigator.userAgent),isSougou=function(a){a&&(a=a.toLowerCase());var b=a.indexOf("se 2.x");return-1!=b?!0:!1}(navigator.userAgent),isyl="undefined"!=typeof releaseVersion&&"yl"==releaseVersion,isOpenNewTab=isMobile||isSougou||isyl;if("steady"==live800_codeType&&(window.Sys?window.Sys.getObj||(window.Sys.getObjt=live800.Sys.getObj):window.Sys=live800.Sys),live800.navigateToUrl=function(a,b,c,d){"undefined"!=typeof live800_Language&&(a+="&lan="+live800_Language);try{parent.closeMini()}catch(e){}if(isOpenNewTab)return d.setAttribute("href",a),!0;b+=(new Date).getTime();var f,g=document.getElementById("live800:link");if(document.all&&isNeedCheckDomainBinding)if(document.URL.indexOf("preview.jsp")>-1)f=window.open(a,b,c);else try{f=window.open("about:blank",b,c),g.target=b,g.href=a,g.click()}catch(e){}else f=window.open(a,b,c);return"undefined"!=typeof f&&f.focus(),!1},live800.Sys.urlDecode=function(a){return"undefined"==typeof decodeURIComponent?unescape(a).replace(/\+/g," ").replace(/%2B/g,"+"):unescape(a).replace(/\+/g," ").replace(/%2B/g,"+")},live800.Sys.getObj=function(a){return document.getElementById(a)},live800.Sys.urlToParams=function(a){for(cmdMap=new Array,cmdParams=new Array,pos=-1;;){if(newPos=a.indexOf("&",pos+1),encodedProperty=newPos>=0?a.substring(pos+1,newPos):a.substring(pos+1,a.length),equalsPos=encodedProperty.indexOf("="),paramName=encodedProperty.substring(0,equalsPos),paramValue=live800.Sys.urlDecode(encodedProperty.substring(equalsPos+1,encodedProperty.length)),cmdParams[paramName]=paramValue,-1==newPos)break;pos=newPos}return cmdParams},live800.utils.paramsToUrl=function(a){var b="";for(var c in a)""!=a[c]&&(b+=a[c]+"&");var d=utils.getCookie("pageReferrInSession");(null==d||" "==d)&&(d=""),d="pagereferrer="+utils.URLEncode(d),""!=d&&(b+=d+"&");var e=utils.getCookie("firstEnterUrlInSession");return(null==e||" "==e)&&(e=""),e="firstEnterUrl="+utils.URLEncode(e),""!=e&&(b+=e+"&"),b.substring(0,b.length-1)},live800.utils.setCookie=function(a,b){if("undefined"!=typeof b){var c=30,d=new Date;d.setTime(d.getTime()+24*c*60*60*1e3),document.cookie=a+"="+escape(b)+";expires="+d.toGMTString()+";path=/"}},live800.utils.getCookie=function(a){var b,c=new RegExp("(^| )"+a+"=([^;]*)(;|$)");return b=document.cookie.match(c),b?unescape(b[2]):null},live800.utils.isCookie=function(){document.cookie="testcookie=testvalue";var a=new String(document.cookie),b="testcookie=testvalue",c=a.indexOf(b);return-1!=c?(live800.utils.delCookie("testcookie"),!0):!1},live800.utils.delCookie=function(a){var b=new Date;b.setTime(b.getTime()-1);var c=live800.utils.getCookie(a);null!=c&&(document.cookie=a+"="+c+";expires="+b.toGMTString())},live800.utils.setSessionCookie=function(a,b){document.cookie=a+"="+escape(b)+";path=/"},live800.utils.setLiveCookie=function(){this.delCookie("operatorId"),this.delCookie("skillId");var a=live800.params;"undefined"!=typeof a.live800_operator&&0!=a.live800_operator.length&&"undefined"!=a.live800_operator&&this.setCookie("operatorId",a.live800_operator),"undefined"!=typeof a.live800_skill&&0!=a.live800_skill.length&&"undefined"!=a.live800_skill&&this.setCookie("skillId",a.live800_skill)},live800.utils.getGid=function(){return"undefined"!=typeof jid?"jid="+jid:""},live800.utils.getParam=function(){var a="",b=live800.Sys.urlToParams(live800_configContent);return"undefined"!=typeof b.live800_operator&&0!=b.live800_operator.length&&"undefined"!=b.live800_operator&&(a="operatorId="+b.live800_operator),"undefined"!=typeof b.live800_skill&&0!=b.live800_skill.length&&"undefined"!=b.live800_skill&&(a=a+"skillId="+b.live800_skill),a},live800.utils.getTrustfulVisitorInfo=function(){var a="";return"undefined"!=typeof trustfulInfo&&trustfulInfo.length>0&&null!=trustfulInfo&&"null"!=trustfulInfo&&(a="info="+trustfulInfo),a},live800.utils.URLEncode=function(a){function b(a){return a.toString(16).toUpperCase()}if(null==a||""==a)return"";for(var c,d="",e=0,f=a.length;f>e;e++)c=a.charCodeAt(e),16>c?d+="%0"+c.toString(16).toUpperCase():128>c?d+=32==c?"+":c>=48&&57>=c||c>=65&&90>=c||c>=97&&122>=c?a.charAt(e):"%"+b(c):2048>c?(d+="%"+b(192+(c>>6)),d+="%"+b(128+c%64)):(d+="%"+b(224+(c>>12)),d+="%"+b(128+(c>>6)%64),d+="%"+b(128+c%64));return d},live800.utils.getEnterUrl=function(){var a="";return"null"==enterurl&&(enterurl=document.URL),a=enterurl,"enterurl="+a},live800.params=live800.Sys.urlToParams(live800_configContent),live800.utils.setLiveCookie(),null==live800_companyID||""==live800_companyID)throw new Error("miss companyID");var params=live800.params,utils=live800.utils,lim_script=document.scripts;preferences=new Array,preferences.companyID=live800_companyID,preferences.configID=live800_configID,preferences.text=unescape(null!=params.live800_text?params.live800_text:"%u5728%u7EBF%u5BA2%u670D"),preferences.baseUrl=live800_baseUrl,preferences.baseHtmlUrl=live800_baseHtmlUrl,preferences.baseWebapp=live800_baseWebApp,preferences.baseChatHtmlDir=live800_baseChatHtmlDir,preferences.visitorIDInSession=preferences.companyID+"chater";for(var i=0;i<lim_script.length;i++)lim_script[i].src.indexOf("textStatic.js")>-1&&(preferences.protocol=lim_script[i].src.split(":")[0]);var pagetitle;pagetitle=utils.URLEncode(document.title.length>80?document.title.substring(0,80):document.title),pagetitle="pagetitle="+pagetitle;var urlParams={jid:utils.getGid(),enterUrl:utils.getEnterUrl(),info:utils.getTrustfulVisitorInfo(),param:utils.getParam(),pagetitle:pagetitle};setSessionPageReferrer(),setSessionFirstEnterUrl();var layerHtml="";"1"!=document.body.getAttribute("lim:initchat")&&(layerHtml+='<a id="live800iconlink" target="_blank" href="javascript:void(0)" onclick="return live800.navigateToUrl(\''+this.preferences.protocol+"://"+this.preferences.baseUrl+this.preferences.baseWebapp+this.preferences.baseChatHtmlDir+"/chatbox.jsp"+jsessionId+"?companyID="+this.preferences.companyID+"&amp;configID="+this.preferences.configID+"&amp;"+utils.paramsToUrl(urlParams).replace(/&/g,"&amp;")+"', 'chatbox"+this.preferences.companyID+"', globalWindowAttribute,this);\">",layerHtml+=preferences.text.replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;"),layerHtml+="</a>",document.getElementById("live800:link")||(layerHtml+="<a href='javascript:void(0);' id='live800:link' style='visibility:hidden;position:absolute;top:0px;right:0px;'>&#160;</a>")),"undefined"==typeof live800_codeType&&(live800_codeType=null),("custom"==live800_codeType||null==live800_codeType||""==live800_codeType||"null"==live800_codeType)&&(live800.Sys.getObj("live"+live800_configID)||("undefined"==typeof live800_textrenderid?document.write(layerHtml):document.getElementById(live800_textrenderid).innerHTML=layerHtml)),"undefined"==live800.utils.getCookie("operatorId")&&live800.utils.delCookie("operatorId"),"undefined"==live800.utils.getCookie("skillId")&&live800.utils.delCookie("skillId"),setTimeout("startFlowCapacity()",5e3);