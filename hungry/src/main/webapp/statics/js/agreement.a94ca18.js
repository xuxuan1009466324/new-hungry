webpackJsonp([65],{0:function(e,t){e.exports=function(e,t,r,n,o){var i,a=e=e||{},s=typeof e.default;"object"!==s&&"function"!==s||(i=e,a=e.default);var l="function"==typeof a?a.options:a;t&&(l.render=t.render,l.staticRenderFns=t.staticRenderFns),n&&(l._scopeId=n);var u;if(o?(u=function(e){e=e||this.$vnode&&this.$vnode.ssrContext||this.parent&&this.parent.$vnode&&this.parent.$vnode.ssrContext,e||"undefined"==typeof __VUE_SSR_CONTEXT__||(e=__VUE_SSR_CONTEXT__),r&&r.call(this,e),e&&e._registeredComponents&&e._registeredComponents.add(o)},l._ssrRegister=u):r&&(u=r),u){var c=l.functional,d=c?l.render:l.beforeCreate;c?l.render=function(e,t){return u.call(t),d(e,t)}:l.beforeCreate=d?[].concat(d,u):[u]}return{esModule:i,exports:a,options:l}}},1:function(e,t){function r(e,t){n(t,c,function(){s[e].instances.push(this)}),n(t,"beforeDestroy",function(){var t=s[e].instances;t.splice(t.indexOf(this),1)})}function n(e,t,r){var n=e[t];e[t]=n?Array.isArray(n)?n.concat(r):[n,r]:[r]}function o(e){return function(t,r){try{e(t,r)}catch(e){console.error(e),console.warn("Something went wrong during Vue component hot-reload. Full reload required.")}}}var i,a,s=window.__VUE_HOT_MAP__=Object.create(null),l=!1,u=!1,c="beforeCreate";t.install=function(e,r){if(!l)return l=!0,i=e.__esModule?e.default:e,a=i.version.split(".").map(Number),u=r,i.config._lifecycleHooks.indexOf("init")>-1&&(c="init"),t.compatible=a[0]>=2,t.compatible?void 0:void console.warn("[HMR] You are using a version of vue-hot-reload-api that is only compatible with Vue.js core ^2.0.0.")},t.createRecord=function(e,t){var n=null;"function"==typeof t&&(n=t,t=n.options),r(e,t),s[e]={Ctor:i.extend(t),instances:[]}},t.rerender=o(function(e,t){var r=s[e];if(!t)return void r.instances.slice().forEach(function(e){e.$forceUpdate()});"function"==typeof t&&(t=t.options),r.Ctor.options.render=t.render,r.Ctor.options.staticRenderFns=t.staticRenderFns,r.instances.slice().forEach(function(e){e.$options.render=t.render,e.$options.staticRenderFns=t.staticRenderFns,e._staticTrees=[],e.$forceUpdate()})}),t.reload=o(function(e,t){var n=s[e];if(t){"function"==typeof t&&(t=t.options),r(e,t),a[1]<2&&(n.Ctor.extendOptions=t);var o=n.Ctor.super.extend(t);n.Ctor.options=o.options,n.Ctor.cid=o.cid,n.Ctor.prototype=o.prototype,o.release&&o.release()}n.instances.slice().forEach(function(e){e.$vnode&&e.$vnode.context?e.$vnode.context.$forceUpdate():console.warn("Root or manually mounted instance modified. Full reload required.")})})},2:function(e,t){e.exports=function(e){if(!e.webpackPolyfill){var t=Object.create(e);t.children||(t.children=[]),Object.defineProperty(t,"loaded",{enumerable:!0,get:function(){return t.l}}),Object.defineProperty(t,"id",{enumerable:!0,get:function(){return t.i}}),Object.defineProperty(t,"exports",{enumerable:!0}),t.webpackPolyfill=1}return t}},243:function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var n=r(4),o={crayfishHost:"//crayfish.elemecdn.com",user:function(){return n.biz.userBasic()},vipCard:function(e){return(0,n.$fetch)("/member/v2/users/"+e+"/delivery_card")},crayfish:function(e){return(0,n.$fetch)(this.crayfishHost+"/m.ele.me@json/profile/"+e)},about:function(){return(0,n.$fetch)(this.crayfishHost+"/h5.ele.me@json/service/about")},crayfishArg:function(e){return(0,n.$fetch)(this.crayfishHost+"/h5.ele.me@json/service/"+e)}};t.default=o},278:function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var n=r(407),o=babelHelpers.interopRequireDefault(n),i=r(408),a=babelHelpers.interopRequireDefault(i),s=r(409),l=babelHelpers.interopRequireDefault(s);t.default={Human:o.default,Phone:a.default,ArrowRight:l.default}},2960:function(e,t,r){e.exports=r(2961)},2961:function(e,t,r){"use strict";var n=r(2962),o=babelHelpers.interopRequireDefault(n),i=r(2968),a=babelHelpers.interopRequireDefault(i);new Vue({el:"#app",store:a.default,render:function(e){return e(o.default)}})},2962:function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),function(e){function n(e){s||(l.$style=r(846),Object.defineProperty(this,"$style",{get:function(){return l.$style}}))}var o=r(2963),i=r.n(o),a=r(2967),s=!1,l={};e.hot&&e.hot.accept(['!!../../../node_modules/extract-text-webpack-plugin/dist/loader.js?{"omit":1,"remove":true}!vue-style-loader!css-loader?{"minimize":true,"localIdentName":"[name]-[hash:base64:5]_0","camelCase":true,"modules":true,"importLoaders":true}!../../../node_modules/vue-loader/lib/style-compiler/index?{"vue":true,"id":"data-v-60da4058","scoped":false,"hasInlineConfig":true}!../../../node_modules/vue-loader/lib/selector?type=styles&index=0!./app.vue'],function(){var e=l.$style;if(e){var t=r(846);JSON.stringify(t)!==JSON.stringify(e)&&(l.$style=t,r(1).rerender("data-v-60da4058"))}});var u=r(0),c=n,d=u(i.a,a.a,c,null,null);d.options.__file="src/service/agreement/app.vue",d.esModule&&Object.keys(d.esModule).some(function(e){return"default"!==e&&"__"!==e.substr(0,2)})&&console.error("named exports are not supported in *.vue files."),d.options.functional&&console.error("[vue-loader] app.vue: functional components are not supported with templates, they should use render functions."),t.default=d.exports}.call(t,r(2)(e))},2963:function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var n=r(8),o=r(2964),i=babelHelpers.interopRequireDefault(o),a=r(278),s=babelHelpers.interopRequireDefault(a),l=r(848),u=babelHelpers.interopRequireDefault(l),c=r(410),d=babelHelpers.interopRequireDefault(c),f=r(243),p=babelHelpers.interopRequireDefault(f),h=window.crayfish.config,v=void 0===h?{}:h,m=UParams();t.default={data:function(){return this.HEAEDER_SHOW=m.HEAEDER_SHOW,{Icon:s.default,config:crayfish.config,headerData:{title:v.title},markedHtml:"",ISPC:window.innerWidth>768}},components:{ElemeHeader:n.ElemeHeader,Tree:i.default},created:function(){if(this.content={},this.ISPC){var e=(new u.default).init(this.config),t=e.key;this.getData(t)}},computed:{key:function(){return this.$store.state.key},navbarShow:function(){return this.$store.state.navbarShow}},directives:{marked:d.default},methods:{getData:function(e){var t=this,r=this.content[e];if(r)return void(this.markedHtml=r);p.default.crayfishArg(e).then(function(r){t.markedHtml=window.marked(r[e]),t.content[e]=t.markedHtml}).catch(function(){})},toggleShow:function(){this.$store.commit("TOGGLE_SHOW")}},watch:{key:function(e){e&&(window.scroll(0,0),this.getData(e))}}}},2964:function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),function(e){function n(e){s||(l.$style=r(847),Object.defineProperty(this,"$style",{get:function(){return l.$style}}))}var o=r(2965),i=r.n(o),a=r(2966),s=!1,l={};e.hot&&e.hot.accept(['!!../../../../node_modules/extract-text-webpack-plugin/dist/loader.js?{"omit":1,"remove":true}!vue-style-loader!css-loader?{"minimize":true,"localIdentName":"[name]-[hash:base64:5]_0","camelCase":true,"modules":true,"importLoaders":true}!../../../../node_modules/vue-loader/lib/style-compiler/index?{"vue":true,"id":"data-v-70f8d2ae","scoped":false,"hasInlineConfig":true}!../../../../node_modules/vue-loader/lib/selector?type=styles&index=0!./Tree.vue'],function(){var e=l.$style;if(e){var t=r(847);JSON.stringify(t)!==JSON.stringify(e)&&(l.$style=t,r(1).rerender("data-v-70f8d2ae"))}});var u=r(0),c=n,d=u(i.a,a.a,c,null,null);d.options.__file="src/service/agreement/component/Tree.vue",d.esModule&&Object.keys(d.esModule).some(function(e){return"default"!==e&&"__"!==e.substr(0,2)})&&console.error("named exports are not supported in *.vue files."),d.options.functional&&console.error("[vue-loader] Tree.vue: functional components are not supported with templates, they should use render functions."),t.default=d.exports}.call(t,r(2)(e))},2965:function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var n=r(848),o=babelHelpers.interopRequireDefault(n),i=r(278),a=babelHelpers.interopRequireDefault(i);t.default={name:"Tree",data:function(){return{Icon:a.default,config:this.data,active:!1}},props:{data:{type:Array}},methods:{toggleShow:function(e){var t=e.show;(new o.default).clearStatus(this.config),e.show=!t,this.$store.commit("SHOW_KEY",e)}}}},2966:function(e,t,r){"use strict";var n=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("ul",{class:e.$style.tree},e._l(e.config,function(t){return r("li",{class:e.$style.treeNode},[r("a",{class:(n={},n[e.$style.active]=t.show&&!t.key,n),on:{click:function(r){e.toggleShow(t)}}},[r("span",[e._v(e._s(t.title))]),t.next?r("svg",[r("use",{attrs:{"xlink:href":e.Icon.ArrowRight}})]):e._e()]),r("div",{directives:[{name:"show",rawName:"v-show",value:t.show,expression:"item.show"}]},[t.next&&t.next.length>0?r("Tree",{attrs:{data:t.next}}):e._e()],1)]);var n}))},o=[];n._withStripped=!0;var i={render:n,staticRenderFns:o};t.a=i},2967:function(e,t,r){"use strict";var n=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{ref:"app"},[1!=+e.HEAEDER_SHOW?r("eleme-header",{attrs:{data:e.headerData}}):e._e(),r("a",{directives:[{name:"show",rawName:"v-show",value:!e.navbarShow,expression:"!navbarShow"}],class:e.$style.navbarToggle,attrs:{href:"javascript:;"},on:{click:function(t){t.preventDefault(),e.toggleShow(t)}}}),r("div",{class:e.$style.wrapper},[r("Tree",{directives:[{name:"show",rawName:"v-show",value:e.ISPC||e.navbarShow,expression:"ISPC || navbarShow"}],attrs:{data:e.config.next}}),r("div",{directives:[{name:"marked",rawName:"v-marked",value:e.markedHtml,expression:"markedHtml"}],staticClass:"markdown",class:e.$style.content})],1)],1)},o=[];n._withStripped=!0;var i={render:n,staticRenderFns:o};t.a=i},2968:function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default=new Vuex.Store({state:{key:"",navbarShow:!0},getters:{key:function(e){return e.key},navbarShow:function(e){return e.navbarShow}},mutations:{SHOW_KEY:function(e,t){var r=t.key;r&&(e.navbarShow=!1),e.key=r},TOGGLE_SHOW:function(e){e.navbarShow=!e.navbarShow}}})},3:function(e,t,r){var n=r(5),o=new n;document.body?o.elem=o.render(document.body):document.addEventListener("DOMContentLoaded",function(){o.elem=o.render(document.body)},!1),e.exports=o},407:function(e,t,r){var n=r(3);e.exports=n.add('<symbol viewBox="0 0 40 40" id="human" ><g fill="none" fill-rule="evenodd"><path fill="#818181" d="M23 16a3 3 0 1 1-6 0 3 3 0 0 1 6 0M13 16a3 3 0 1 1-5.999 0 3 3 0 0 1 6 0M33 16a3 3 0 1 1-5.999 0 3 3 0 0 1 6 0"/><path stroke="#818181" stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M15.499 37.5l8.002-8H26.5c6.628 0 12-5.373 12-12v-15h-37v27h13"/></g></symbol>',"human")},408:function(e,t,r){var n=r(3);e.exports=n.add('<symbol viewBox="0 0 40 40" id="phone" ><path fill="none" fill-rule="evenodd" stroke="#818181" stroke-linecap="round" stroke-width="3" d="M12.065 2l-1.172.29-6.658 1.644C3.044 4.228 2.138 5.23 2.03 6.452 1.638 10.886 5.104 20 12.547 27.447c7.443 7.447 16.55 10.915 20.983 10.523 1.222-.108 2.224-1.015 2.518-2.206l1.932-7.833a.674.674 0 0 0-.32-.746l-9.69-5.536a.672.672 0 0 0-.808.11l-2.954 2.954a.667.667 0 0 1-.947.004l-7.987-7.99a.666.666 0 0 1 .004-.945l2.956-2.957a.673.673 0 0 0 .108-.81l-2.378-4.167"/></symbol>',"phone")},409:function(e,t,r){var n=r(3);e.exports=n.add('<symbol viewBox="0 0 547 987" id="arrow-right" ><path fill="#999" fill-rule="evenodd" d="M0 931.973l51.2 54.613 494.933-494.933L51.2.133 0 51.333l440.32 440.32L0 931.973z"/></symbol>',"arrow-right")},410:function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default={bind:function(e,t){e.innerHTML=window.marked(t.value)},update:function(e,t){e.innerHTML=window.marked(t.value)}}},5:function(e,t,r){function n(e){return Array.prototype.slice.call(e,0)}function o(e){return e.replace(/\(|\)/g,"\\$&")}function i(e,t,r){var i=e.querySelectorAll(c);i&&n(i).forEach(function(e){e.attributes&&n(e.attributes).forEach(function(n){var i=n.localName.toLowerCase();if(-1!==u.indexOf(i)){var a=d.exec(e.getAttribute(i));if(a&&0===a[1].indexOf(t)){var s=o(r+a[1].split(t)[1]);e.setAttribute(i,"url("+s+")")}}})})}function a(e){try{if(document.importNode)return document.importNode(e,!0)}catch(e){}return e}function s(){var e=document.getElementsByTagName("base")[0],t=window.location.href.split("#")[0],r=e&&e.href;this.urlPrefix=r&&r!==t?t+p:p;var o=new l;o.sniff(),this.browser=o.browser,this.content=[],"ie"!==this.browser.name&&r&&window.addEventListener("spriteLoaderLocationUpdated",function(e){var t=this.urlPrefix,r=e.detail.newUrl.split(p)[0]+p;if(i(this.svg,t,r),this.urlPrefix=r,"chrome"!==this.browser.name||this.browser.version[0]>=49){n(document.querySelectorAll("use[*|href]")).forEach(function(e){var n=e.getAttribute(h);n&&0===n.indexOf(t)&&e.setAttributeNS(v,h,r+n.split(p)[1])})}}.bind(this))}var l=r(6),u=["clipPath","colorProfile","src","cursor","fill","filter","marker","markerStart","markerMid","markerEnd","mask","stroke"],c="["+u.join("],[")+"]",d=/^url\((.*)\)$/,f=function(e){for(var t=e.querySelector("defs"),r=e.querySelectorAll("symbol linearGradient, symbol radialGradient, symbol pattern"),n=0,o=r.length;n<o;n++)t.appendChild(r[n])},p="#",h="xlink:href",v="http://www.w3.org/1999/xlink",m='<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="'+v+'"';s.styles=["position:absolute","width:0","height:0"],s.spriteTemplate=function(){return m+' style="'+s.styles.join(";")+'"><defs>{content}</defs></svg>'},s.symbolTemplate=function(){return m+">{content}</svg>"},s.prototype.content=null,s.prototype.add=function(e,t){return this.svg&&this.appendSymbol(e),this.content.push(e),p+t},s.prototype.wrapSVG=function(e,t){var r=t.replace("{content}",e),n=(new DOMParser).parseFromString(r,"image/svg+xml").documentElement,o=a(n);return"ie"!==this.browser.name&&this.urlPrefix&&i(o,p,this.urlPrefix),o},s.prototype.appendSymbol=function(e){var t=this.wrapSVG(e,s.symbolTemplate()).childNodes[0];this.svg.querySelector("defs").appendChild(t),"firefox"===this.browser.name&&f(this.svg)},s.prototype.toString=function(){var e=document.createElement("div");return e.appendChild(this.render()),e.innerHTML},s.prototype.render=function(e,t){e=e||null,t="boolean"!=typeof t||t;var r=this.wrapSVG(this.content.join(""),s.spriteTemplate());return"firefox"===this.browser.name&&f(r),e&&(t&&e.childNodes[0]?e.insertBefore(r,e.childNodes[0]):e.appendChild(r)),this.svg=r,r},e.exports=s},6:function(e,t){!function(t){function r(){var e=this;s.forEach(function(t){e[t]={name:a,version:[],versionString:a}})}function n(e,t,r){i[t].forEach(function(n){var i=n[0],s=n[1],l=r.match(i);l&&(e[t].name=s,l[2]?(e[t].versionString=l[2],e[t].version=[]):l[1]?(e[t].versionString=l[1].replace(/_/g,"."),e[t].version=o(l[1])):(e[t].versionString=a,e[t].version=[]))})}function o(e){return e.split(/[\._]/).map(function(e){return parseInt(e)})}var i={browser:[[/msie ([\.\_\d]+)/,"ie"],[/trident\/.*?rv:([\.\_\d]+)/,"ie"],[/firefox\/([\.\_\d]+)/,"firefox"],[/chrome\/([\.\_\d]+)/,"chrome"],[/version\/([\.\_\d]+).*?safari/,"safari"],[/mobile safari ([\.\_\d]+)/,"safari"],[/android.*?version\/([\.\_\d]+).*?safari/,"com.android.browser"],[/crios\/([\.\_\d]+).*?safari/,"chrome"],[/opera/,"opera"],[/opera\/([\.\_\d]+)/,"opera"],[/opera ([\.\_\d]+)/,"opera"],[/opera mini.*?version\/([\.\_\d]+)/,"opera.mini"],[/opios\/([a-z\.\_\d]+)/,"opera"],[/blackberry/,"blackberry"],[/blackberry.*?version\/([\.\_\d]+)/,"blackberry"],[/bb\d+.*?version\/([\.\_\d]+)/,"blackberry"],[/rim.*?version\/([\.\_\d]+)/,"blackberry"],[/iceweasel\/([\.\_\d]+)/,"iceweasel"],[/edge\/([\.\d]+)/,"edge"]],os:[[/linux ()([a-z\.\_\d]+)/,"linux"],[/mac os x/,"macos"],[/mac os x.*?([\.\_\d]+)/,"macos"],[/os ([\.\_\d]+) like mac os/,"ios"],[/openbsd ()([a-z\.\_\d]+)/,"openbsd"],[/android/,"android"],[/android ([a-z\.\_\d]+);/,"android"],[/mozilla\/[a-z\.\_\d]+ \((?:mobile)|(?:tablet)/,"firefoxos"],[/windows\s*(?:nt)?\s*([\.\_\d]+)/,"windows"],[/windows phone.*?([\.\_\d]+)/,"windows.phone"],[/windows mobile/,"windows.mobile"],[/blackberry/,"blackberryos"],[/bb\d+/,"blackberryos"],[/rim.*?os\s*([\.\_\d]+)/,"blackberryos"]],device:[[/ipad/,"ipad"],[/iphone/,"iphone"],[/lumia/,"lumia"],[/htc/,"htc"],[/nexus/,"nexus"],[/galaxy nexus/,"galaxy.nexus"],[/nokia/,"nokia"],[/ gt\-/,"galaxy"],[/ sm\-/,"galaxy"],[/xbox/,"xbox"],[/(?:bb\d+)|(?:blackberry)|(?: rim )/,"blackberry"]]},a="Unknown",s=Object.keys(i);r.prototype.sniff=function(e){var t=this,r=(e||navigator.userAgent||"").toLowerCase();s.forEach(function(e){n(t,e,r)})},void 0!==e&&e.exports?e.exports=r:(t.Sniffr=new r,t.Sniffr.sniff(navigator.userAgent))}(this)},846:function(e,t){e.exports={markdown:"app-3DBlL_0","navbar-toggle":"app-bYyOo_0",navbarToggle:"app-bYyOo_0",wrapper:"app-1w6Q3_0"}},847:function(e,t){e.exports={"tree-node":"Tree-2xyeO_0",treeNode:"Tree-2xyeO_0",active:"Tree-2nTL6_0"}},848:function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var n=function(){function e(){babelHelpers.classCallCheck(this,e)}return babelHelpers.createClass(e,[{key:"single",value:function(e){var t=this;e.forEach(function(e){t.status&&t.convertTrue(e,"show"),t.markArr&&t.assign(e),e.next&&e.next.length>0&&t.single(e.next)})}},{key:"assign",value:function(e){e.key&&!this.count&&(this.privateInit(e),this.count=e),!this.count&&this.markArr.push(e)}},{key:"privateInit",value:function(e){var t=this;this.convertTrue(e,"show",!0),this.markArr.forEach(function(e){t.convertTrue(e,"show",!0)})}},{key:"init",value:function(e){return this.markArr=[],this.single(e.next),this.count}},{key:"clearStatus",value:function(e){this.status=!0,this.single(e)}},{key:"convertTrue",value:function(e,t,r){e[t]=!!r}}]),e}();t.default=n}},[2960]);