(function(window){var svgSprite='<svg><symbol id="icon-jiahaocu" viewBox="0 0 1024 1024"><path d="M984.293767 435.610686 590.464452 435.610686 590.464452 41.78318l-157.531364 0 0 393.827505L39.105583 435.610686l0 157.531364 393.827505 0 0 393.831124 157.531364 0L590.464452 593.142049l393.829314 0L984.293767 435.610686z"  ></path></symbol><symbol id="icon-xia" viewBox="0 0 1024 1024"><path d="M978.192 264.944a39.84 39.84 0 0 0-56.256 0.24L514.368 676.48 101.12 266.944a39.808 39.808 0 0 0-56.048 56.544L484.304 758.72c0.672 0.688 1.552 0.848 2.224 1.472 0.16 0.176 0.208 0.352 0.352 0.528a39.808 39.808 0 0 0 56.256-0.24l435.248-439.232a39.808 39.808 0 0 0-0.192-56.304m0 0z"  ></path></symbol><symbol id="icon-you1" viewBox="0 0 1024 1024"><path d="M264.944 45.792a39.84 39.84 0 0 0 0.24 56.256L676.48 509.616 266.944 922.88a39.808 39.808 0 0 0 56.544 56.048L758.72 539.68c0.688-0.672 0.848-1.552 1.472-2.224 0.176-0.176 0.352-0.208 0.528-0.368a39.776 39.776 0 0 0-0.24-56.24L321.248 45.6a39.792 39.792 0 0 0-56.304 0.192m0 0z"  ></path></symbol><symbol id="icon-shoucang" viewBox="0 0 1024 1024"><path d="M734.53112889 35.48046222c-87.96387555 0-169.51978667 44.27320889-223.69621334 117.09098667-53.59388445-72.81777778-135.73233778-117.09098667-223.69621333-117.09098667-158.45148445 0-287.19331555 140.97521778-287.19331555 313.99025778 0 103.10997333 46.02083555 175.92775111 83.30353778 234.18197333C191.01923555 753.17248 462.48391111 963.47022222 474.13475555 972.20835555c11.06830222 8.73813333 23.88423111 12.81592889 36.70016 12.8159289s25.63185778-4.07779555 36.70016-12.8159289c11.65084445-8.73813333 282.53297778-219.61841778 390.88583112-388.55566222 37.28270222-58.25422222 83.30353778-131.072 83.30353778-234.18197333 0-173.01504-128.74183111-313.99025778-287.19331556-313.99025778z"  ></path></symbol></svg>';var script=function(){var scripts=document.getElementsByTagName("script");return scripts[scripts.length-1]}();var shouldInjectCss=script.getAttribute("data-injectcss");var ready=function(fn){if(document.addEventListener){if(~["complete","loaded","interactive"].indexOf(document.readyState)){setTimeout(fn,0)}else{var loadFn=function(){document.removeEventListener("DOMContentLoaded",loadFn,false);fn()};document.addEventListener("DOMContentLoaded",loadFn,false)}}else if(document.attachEvent){IEContentLoaded(window,fn)}function IEContentLoaded(w,fn){var d=w.document,done=false,init=function(){if(!done){done=true;fn()}};var polling=function(){try{d.documentElement.doScroll("left")}catch(e){setTimeout(polling,50);return}init()};polling();d.onreadystatechange=function(){if(d.readyState=="complete"){d.onreadystatechange=null;init()}}}};var before=function(el,target){target.parentNode.insertBefore(el,target)};var prepend=function(el,target){if(target.firstChild){before(el,target.firstChild)}else{target.appendChild(el)}};function appendSvg(){var div,svg;div=document.createElement("div");div.innerHTML=svgSprite;svgSprite=null;svg=div.getElementsByTagName("svg")[0];if(svg){svg.setAttribute("aria-hidden","true");svg.style.position="absolute";svg.style.width=0;svg.style.height=0;svg.style.overflow="hidden";prepend(svg,document.body)}}if(shouldInjectCss&&!window.__iconfont__svg__cssinject__){window.__iconfont__svg__cssinject__=true;try{document.write("<style>.svgfont {display: inline-block;width: 1em;height: 1em;fill: currentColor;vertical-align: -0.1em;font-size:16px;}</style>")}catch(e){console&&console.log(e)}}ready(appendSvg)})(window)