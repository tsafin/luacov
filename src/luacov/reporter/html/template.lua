local template = {}

template.SCRIPT = {
   "prettify.js",
   "lang-lua.js",
   "report.js"
}

template.STYLE = {
   "report.css"
}

template.HTML_HEADER = [[
<!doctype html>
<html lang="en">
<head>
   <meta charset="utf-8" />
   <title>Code coverage report</title>
   <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
   <link rel="shortcut icon" type="image/png" sizes="16x16" href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAFo9M/3AAAACXBIWXMAAADsAAAA7AF5KHG9AAAAGXRFWHRTb2Z0d2FyZQB3d3cuaW5rc2NhcGUub3Jnm+48GgAAAYBJREFUOI2tkjtLA0EUhb+JjxQ+qhGtBAtbG0GJFj5rsfQXWKUUQau7QoRIUFBRyG8QBNuABhFNoY12dopso43iM2iuxe7ETXwQxQMLM3funnPumYFKiJaXJtiZyfJRJnOo4I0ZAOujAKc9fAlvDkStXSoAxEAXAW5uHvsdYZ/1Ud+iIqImYiIGTEBTDh4SQA7ExCIO34Bt1Zn7dHo8B03NoeGgwfpS5nL2skmhLCESmfOPWOgFb+TDk9yGc7pC6bilpWF3eflIId4FtDn1rfAP9by8qqqCPDpeA/IMxD9LinESqyJgfcH6ggj4VvBtcCMxkNmfrBv4PgMRMXW1RQCwGof+HRjehJEXyBcA6qs4p4A00BkpPgEbcLcGJIBW0FFgJdKzkAApubjcl0rtq0OQr2SqfYUjDJ0AzdWHhcIVr68lDg4uSaX2KRbfBmA0D3sXrse9pnOgW6T2RCAIMcygcRCKZ0D7+vRnlmRWmF6vrGeTwT58S/PXIB2/0/8nvAPwp5kuNmMrGQAAAABJRU5ErkJggg==" />
{{style}}
</head>
<body onload="initialize()">
   <main>
]]

template.HTML_FOOTER = [[
   </main>
   <footer>
        Code coverage generated by <a href="https://lunarmodules.github.io/luacov/" target="_blank">LuaCov</a> at {{timestamp}}
   </footer>
{{script}}
</body>
</html>
]]

template.HTML_TOTAL = [[
      <div class="file {{css_class}} total">
         <h1 class="title">
            Code coverage report
            <span class="stats">
               <span class="cov">
                  <span class="bg" style="width: {{coverage}}%"></span>
                  <span><strong>{{coverage}}%</strong> Coverage</span>
               </span>
               <span class="hits"><strong>{{hits}}</strong> Hits</span>
               <span class="miss"><strong>{{miss}}</strong> Missed</span>
            </span>
         </h1>
      </div>

]]

template.HTML_FILE_HEADER = [[
      <div class="hidden file {{css_class}}" id="{{id}}">
         <h2 class="title">
            {{filename}}
            <span class="stats">
               <span class="cov">
                  <span class="bg" style="width: {{coverage}}%"></span>
                  <span><strong>{{coverage}}%</strong> Coverage</span>
               </span>
               <span class="hits"><strong>{{hits}}</strong> Hits</span>
               <span class="miss"><strong>{{miss}}</strong> Missed</span>
            </span>
         </h2>
         <pre class="prettyprint lang-lua linenums">]]

template.HTML_FILE_FOOTER = [[</pre>
      </div>

]]

template.HTML_LINE_HIT = [[<span class="fc" data-hits="{{hits}}">{{line}}</span>]] .. "\n"
template.HTML_LINE_MIS = [[<span class="nc">{{line}}</span>]] .. "\n"

return template
