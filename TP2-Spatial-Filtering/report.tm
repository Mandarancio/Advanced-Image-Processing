<TeXmacs|1.99.5>

<style|<tuple|generic|british>>

<\body>
  <doc-data|<doc-title|Spatial Filtering>|<doc-author|<\author-data|<author-name|Martino
  Ferrari>>
    \;
  </author-data>>>

  <section|On Spatial Filtering>

  In the following exerscies I will use a disk instead of the classical Dirac
  delta graphism beacouse is much simpler.

  <with|gr-mode|<tuple|edit|text-at>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|-0.179992gh>>|gr-geometry|<tuple|geometry|1par|0.186684par|center>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-arrow-end|\<gtr\>|gr-point-size|4ln|<graphics||<with|arrow-end|\<gtr\>|<line|<point|-6.5|1>|<point|-1.5|1.0>>>|<with|arrow-end|\<gtr\>|<line|<point|-4|1>|<point|-4.0|3.0>>>|<with|color|blue|arrow-end|\|\<gtr\>|line-width|2ln|<line|<point|-4|1>|<point|-4.0|2.0>>>|<with|arrow-end|\<gtr\>|<line|<point|1.5|1>|<point|6.5|1.0>>>|<with|arrow-end|\<gtr\>|<line|<point|4|1>|<point|4.0|3.0>>>|<with|color|blue|point-size|4ln|<point|4|2>>|<with|color|blue|<text-at|<math|>|<point|-3.4|2.7>>>|<text-at|<math|\<delta\><around*|(|n|)>>|<point|-2.2|2.6>>|<text-at|<math|\<delta\><around*|(|n|)>>|<point|5.8|2.55287027543636>>|<with|color|red|arrow-end|\|\<gtr\>|line-width|2ln|<line|<point|-1.0|2.0>|<point|1.0|2.0>>>>>

  <paragraph|Exercise 1>

  Manually convolve the two signal <math|x<rsub|1>=<around*|[|1,0,0|]>> and
  <math|x<rsub|2>=<around*|[|0,1,0|]>>:

  <with|gr-mode|<tuple|edit|line>|gr-frame|<tuple|scale|0.999947cm|<tuple|0.496771gw|0.40342gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-arrow-end|\<gtr\>|gr-point-size|4ln|gr-color|blue|<graphics||<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-4.0|3.0>|<point|-4.0|5.0>>>|<with|color|red|arrow-end|o|<line|<point|-4.0|3.0>|<point|-4.0|4.0>>>|<with|color|red|point-size|4ln|<point|-3.0|3.0>>|<with|color|red|point-size|4ln|<point|-2.0|3.0>>|<with|color|blue|point-size|4ln|<point|-4.0|3.0>>|<with|color|blue|point-size|4ln|point-style|round|<point|-2.0|3.0>>|<with|color|blue|point-size|4ln|<point|-2.0|4.5>>|<with|color|red|point-size|4ln|<point|-2.0|5.0>>|<text-at|<math|x<rsub|1>>|<point|-1.8|4.9>>|<text-at|<math|x<rsub|2>>|<point|-1.8|4.4>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-7|0>|<point|-1.0|0.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-7|3>|<point|-1.0|3.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-4|0>|<point|-4.0|2.0>>>|<with|color|red|point-size|4ln|<point|-4|1>>|<with|color|red|point-size|4ln|<point|-3|0>>|<with|color|red|point-size|4ln|<point|-2|0>>|<with|color|blue|point-size|4ln|<point|-4|0>>|<with|color|blue|point-size|4ln|<point|-5|1>>|<with|color|blue|point-size|4ln|<point|-6|0>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-7|-3>|<point|-1.0|-3.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-4|-3>|<point|-4.0|-1.0>>>|<with|color|red|point-size|4ln|<point|-4|-2>>|<with|color|red|point-size|4ln|<point|-3|-3>>|<with|color|red|point-size|4ln|<point|-2|-3>>|<with|color|blue|point-size|4ln|<point|-5|-3>>|<with|color|blue|point-size|4ln|point-style|round|<point|-4|-2>>|<with|color|blue|point-size|4ln|point-style|round|<point|-3|-3>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|1|3>|<point|7.0|3.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|4|3>|<point|4.0|5.0>>>|<with|color|red|point-size|4ln|<point|4|4>>|<with|color|red|point-size|4ln|<point|5|3>>|<with|color|red|point-size|4ln|<point|6|3>>|<with|color|blue|point-size|4ln|<point|4|3>>|<with|color|blue|point-size|4ln|<point|5|4>>|<with|color|blue|point-size|4ln|point-style|round|<point|6|3>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|1|0>|<point|7.0|0.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|3|0>|<point|3.0|2.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|1|-3>|<point|7.0|-3.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|2|-3>|<point|2.0|-1.0>>>|<with|color|red|point-size|4ln|<point|3|1>>|<with|color|red|point-size|4ln|<point|4|0>>|<with|color|red|point-size|4ln|<point|5|0>>|<with|color|red|point-size|4ln|<point|2|-2>>|<with|color|red|point-size|4ln|<point|3|-3>>|<with|color|red|point-size|4ln|<point|4|-3>>|<with|color|blue|point-size|4ln|point-style|round|<point|4|0>>|<with|color|blue|point-size|4ln|<point|5|1>>|<with|color|blue|point-size|4ln|<point|6|0>>|<with|color|blue|point-size|4ln|<point|5|-2>>|<with|color|blue|point-size|4ln|<point|6|-3>>|<with|color|blue|point-size|4ln|point-style|round|<point|4|-3>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-4|0>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-4|-3>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-3|-2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4|3>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5|4>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6|3>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3|0>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4|1>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5|0>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|2|-3>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3|-2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4|-3>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5|-3>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6|0>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6|-3>>|<with|color|none|arrow-end|\<gtr\>|fill-color|orange|<line|<point|5|0>|<point|6.0|0.0>>>|<with|color|none|arrow-end|\<gtr\>|fill-color|orange|<line|<point|5|0>|<point|6.0|0.0>>>|<with|color|orange|arrow-end|\<gtr\>|<line|<point|5|0>|<point|6.0|0.0>>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-2|4>>|<text-at|<math|x<rsub|1>\<ast\>x<rsub|2>>|<point|-1.8|3.9>>||<with|color|blue|arrow-end|o|<line|<point|-3.0|4.0>|<point|-3.0|4.0>>>|<with|color|blue|point-size|4ln|<point|-3|4>>|<with|color|red|arrow-end|\<gtr\>|<line|<point|-4|4>|<point|-3.0|3.0>|<point|-3.0|3.0>>>|<with|color|blue|arrow-end|\<gtr\>|<line|<point|-4|3>|<point|-3.0|4.0>|<point|-3.0|4.0>>>|<with|color|blue|arrow-end|\<gtr\>|<line|<point|5.0|4.0>|<point|5.0|4.0>|<point|5.0|4.0>>>|<with|color|red|arrow-end|\<gtr\>|<line|<point|4|4>|<point|5.0|3.0>|<point|5.0|3.0>>>|<with|color|orange|arrow-end|\<gtr\>|<line|<point|5.0|4.0>|<point|5.0|4.0>|<point|5.0|4.0>>>|<with|color|red|arrow-end|\<gtr\>|<line|<point|4.0|0.0>|<point|4.0|0.0>|<point|4.0|0.0>>>|<with|color|blue|arrow-end|\<gtr\>|<line|<point|4|0>|<point|5.0|1.0>|<point|5.0|1.0>>>|<with|color|orange|arrow-end|\<gtr\>|<line|<point|4.0|1.0>|<point|4.0|1.0>|<point|4.0|1.0>>>|<with|color|red|arrow-end|\<gtr\>|<line|<point|-4|1>|<point|-3.0|0.0>|<point|-3.0|0.0>>>|<with|color|blue|arrow-end|\<gtr\>|<line|<point|-6|0>|<point|-5.0|1.0>|<point|-5.0|1.0>>>|<with|color|orange|arrow-end|\<gtr\>|<line|<point|-4|-3>|<point|-4.0|-3.0>>>|<with|color|blue|arrow-end|\<gtr\>|<line|<point|-4.0|-2.0>|<point|-4.0|-2.0>|<point|-4.0|-2.0>>>|<with|color|red|arrow-end|\<gtr\>|<line|<point|-4|-2>|<point|-3.0|-3.0>|<point|-3.0|-3.0>>>|<with|color|red|arrow-end|\<gtr\>|<line|<point|3.0|-3.0>|<point|3.0|-3.0>|<point|3.0|-3.0>>>|<with|color|orange|arrow-end|\<gtr\>|<line|<point|3.0|-2.0>|<point|3.0|-2.0>|<point|3.0|-2.0>|<point|3.0|-2.0>>>|<with|color|blue|arrow-end|\<gtr\>|<line|<point|5.0|-2.0>|<point|5.0|-2.0>|<point|5.0|-2.0>>>>>

  \;

  Manually convolve the two signal <math|x<rsub|1>=<around*|[|0,1,0,0,0,0|]>>
  and <math|x<rsub|2>=<around*|[|1,1,1,1,1,1|]>>:

  <with|gr-mode|<tuple|edit|line>|gr-frame|<tuple|scale|0.840869cm|<tuple|0.488517gw|0.557992gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|0.5>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|0.5>|gr-point-size|4ln|gr-line-width|2ln|gr-arrow-end|\<gtr\>|gr-fill-color|orange|gr-point-style|triangle|magnify|0.840896415|<graphics||<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-4|3.5>|<point|-4.0|4.5>>>|<with|color|blue|point-size|4ln|<point|-4|3.5>>|<with|color|blue|point-size|4ln|<point|-3.5|4>>|<with|color|blue|point-size|4ln|<point|-3|3.5>>|<with|color|blue|point-size|4ln|<point|-2.5|3.5>>|<with|color|blue|point-size|4ln|<point|-2|3.5>>|<with|color|blue|point-size|4ln|<point|-1.5|3.5>>|<with|color|red|point-size|4ln|<point|-4|4>>|<with|color|red|point-size|4ln|<point|-3|4>>|<with|color|red|point-size|4ln|<point|-2.5|4>>|<with|color|red|point-size|4ln|<point|-2|4>>|<with|color|red|point-size|4ln|<point|-1.5|4>>|<with|color|red|point-size|4ln|point-style|round|<point|-3.5|4>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-7|2>|<point|-0.5|2.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-4|2>|<point|-4.0|3.0>>>|<with|color|blue|point-size|4ln|<point|-4|2>>|<with|color|blue|point-size|4ln|<point|-3.5|2.5>>|<with|color|blue|point-size|4ln|<point|-3|2>>|<with|color|blue|point-size|4ln|<point|-2.5|2>>|<with|color|blue|point-size|4ln|<point|-2|2>>|<with|color|blue|point-size|4ln|<point|-1.5|2>>|<with|color|red|point-size|4ln|<point|-4|2.5>>|<with|color|red|point-size|4ln|<point|-4.5|2.5>>|<with|color|red|point-size|4ln|<point|-5|2.5>>|<with|color|red|point-size|4ln|<point|-5.5|2.5>>|<with|color|red|point-size|4ln|<point|-6|2.5>>|<with|color|red|point-size|4ln|<point|-6.5|2.5>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-7|0.5>|<point|-0.5|0.5>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-4|0.5>|<point|-4.0|1.5>>>|<with|color|blue|point-size|4ln|<point|-4|0.5>>|<with|color|blue|point-size|4ln|<point|-3.5|1>>|<with|color|blue|point-size|4ln|<point|-3|0.5>>|<with|color|blue|point-size|4ln|<point|-2.5|0.5>>|<with|color|blue|point-size|4ln|<point|-2|0.5>>|<with|color|blue|point-size|4ln|<point|-1.5|0.5>>|<with|color|blue|point-size|4ln|<point|-1|0.5>>|<with|color|red|point-size|4ln|<point|-6|1>>|<with|color|red|point-size|4ln|<point|-5.5|1>>|<with|color|red|point-size|4ln|<point|-5|1>>|<with|color|red|point-size|4ln|<point|-4.5|1>>|<with|color|red|point-size|4ln|<point|-4|1>>|<with|color|red|point-size|4ln|point-style|round|<point|-3.5|1>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-7|-1>|<point|-0.5|-1.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-4|-1>|<point|-4.0|0.0>>>|<with|color|blue|point-size|4ln|<point|-4|-1>>|<with|color|blue|point-size|4ln|<point|-3.5|-0.5>>|<with|color|blue|point-size|4ln|<point|-3|-1>>|<with|color|blue|point-size|4ln|<point|-2.5|-1>>|<with|color|blue|point-size|4ln|<point|-2|-1>>|<with|color|blue|point-size|4ln|<point|-1.5|-1>>|<with|color|blue|point-size|4ln|<point|-1|-1>>|<with|color|red|point-size|4ln|<point|-5.5|-0.5>>|<with|color|red|point-size|4ln|<point|-5|-0.5>>|<with|color|red|point-size|4ln|<point|-4.5|-0.5>>|<with|color|red|point-size|4ln|<point|-4|-0.5>>|<with|color|red|point-size|4ln|<point|-3|-0.5>>|<with|color|red|point-size|4ln|point-style|round|<point|-3.5|-0.5>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-7|-2.5>|<point|-0.5|-2.5>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-4|-2.5>|<point|-4.0|-1.5>>>|<with|color|blue|point-size|4ln|<point|-4|-2.5>>|<with|color|blue|point-size|4ln|<point|-3.5|-2>>|<with|color|blue|point-size|4ln|<point|-3|-2.5>>|<with|color|blue|point-size|4ln|<point|-2.5|-2.5>>|<with|color|blue|point-size|4ln|<point|-2|-2.5>>|<with|color|blue|point-size|4ln|<point|-1.55|-2.5>>|<with|color|blue|point-size|4ln|<point|-1|-2.5>>|<with|color|red|point-size|4ln|<point|-4|-2>>|<with|color|red|point-size|4ln|<point|-3|-2>>|<with|color|red|point-size|4ln|<point|-2.5|-2>>|<with|color|red|point-size|4ln|<point|-4.5|-2>>|<with|color|red|point-size|4ln|<point|-5|-2>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-7|-4>|<point|-0.5|-4.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-4|-4>|<point|-4.0|-3.0>>>|<with|color|blue|point-size|4ln|<point|-4|-4>>|<with|color|blue|point-size|4ln|<point|-3.5|-3.5>>|<with|color|blue|point-size|4ln|<point|-3|-4>>|<with|color|blue|point-size|4ln|<point|-2.5|-4>>|<with|color|blue|point-size|4ln|<point|-2|-4>>|<with|color|blue|point-size|4ln|<point|-1.5|-4>>|<with|color|blue|point-size|4ln|<point|-1|-4>>|<with|color|red|point-size|4ln|<point|-4.5|-3.5>>|<with|color|red|point-size|4ln|<point|-4|-3.5>>|<with|color|red|point-size|4ln|<point|-3|-3.5>>|<with|color|red|point-size|4ln|<point|-2.5|-3.5>>|<with|color|red|point-size|4ln|<point|-2|-3.5>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-7|-5.5>|<point|-0.5|-5.5>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-4|-5.5>|<point|-4.0|-4.5>>>|<with|color|red|point-size|4ln|<point|-4|-5>>|<with|color|red|point-size|4ln|<point|-3|-5>>|<with|color|red|point-size|4ln|<point|-2.5|-5>>|<with|color|red|point-size|4ln|<point|-2|-5>>|<with|color|red|point-size|4ln|<point|-1.5|-5>>|<with|color|red|point-size|4ln|<point|-1|-5>>|<with|color|blue|point-size|4ln|<point|-4|-5.5>>|<with|color|blue|point-size|4ln|<point|-3.5|-5>>|<with|color|blue|point-size|4ln|<point|-3|-5.5>>|<with|color|blue|point-size|4ln|<point|-2.5|-5.5>>|<with|color|blue|point-size|4ln|<point|-2|-5.5>>|<with|color|blue|point-size|4ln|<point|-1.5|-5.5>>|<with|color|blue|point-size|4ln|<point|-1|-5.5>>|<with|color|red|point-size|4ln|point-style|round|<point|-3.5|-5>>|<with|color|red|point-size|4ln|point-style|round|<point|-3.5|-3.5>>|<with|color|red|point-size|4ln|point-style|round|<point|-3.5|-2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-4|2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-4|0.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-3.5|1>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-4|-1>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-3.5|-0.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-3|-0.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-4|-2.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-3.5|-2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-3|-2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-2.5|-2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-4|-4>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-3.5|-3.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-3|-3.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-2.5|-3.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-2|-3.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-4|-5.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-3.5|-5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-3|-5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-2.5|-5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-2|-5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-1.5|-5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-1|-5>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|0.5|3.5>|<point|7.5|3.5>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|3.5|3.5>|<point|3.5|4.5>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|0.5|2>|<point|7.5|2.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|3|2>|<point|3.0|3.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|0.5|0.5>|<point|7.5|0.5>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|2.5|0.5>|<point|2.5|1.5>>>|<with|color|blue|point-size|4ln|<point|3.5|3.5>>|<with|color|blue|point-size|4ln|<point|4|4>>|<with|color|blue|point-size|4ln|<point|4.5|3.5>>|<with|color|blue|point-size|4ln|<point|5|3.5>>|<with|color|blue|point-size|4ln|<point|5.5|3.5>>|<with|color|blue|point-size|4ln|<point|6|3.5>>|<with|color|blue|point-size|4ln|<point|3|2>>|<with|color|blue|point-size|4ln|<point|3.5|2.5>>|<with|color|blue|point-size|4ln|<point|4|2>>|<with|color|blue|point-size|4ln|<point|4.5|2>>|<with|color|blue|point-size|4ln|<point|5|2>>|<with|color|blue|point-size|4ln|<point|5.5|2>>|<with|color|blue|point-size|4ln|<point|2.5|0.5>>|<with|color|blue|point-size|4ln|<point|3|1>>|<with|color|blue|point-size|4ln|<point|3.5|0.5>>|<with|color|blue|point-size|4ln|<point|4|0.5>>|<with|color|blue|point-size|4ln|<point|4.5|0.5>>|<with|color|blue|point-size|4ln|<point|5|0.5>>|<with|color|red|point-size|4ln|<point|4.5|4>>|<with|color|red|point-size|4ln|<point|5|4>>|<with|color|red|point-size|4ln|<point|5.5|4>>|<with|color|red|point-size|4ln|<point|6|4>>|<with|color|red|point-size|4ln|<point|6.5|4>>|<with|color|red|point-size|4ln|<point|4|2.5>>|<with|color|red|point-size|4ln|<point|4.5|2.5>>|<with|color|red|point-size|4ln|<point|5|2.5>>|<with|color|red|point-size|4ln|<point|5.5|2.5>>|<with|color|red|point-size|4ln|<point|6|2.5>>|<with|color|red|point-size|4ln|<point|6.5|2.5>>|<with|color|red|point-size|4ln|<point|4|1>>|<with|color|red|point-size|4ln|<point|4.5|1>>|<with|color|red|point-size|4ln|<point|5|1>>|<with|color|red|point-size|4ln|<point|5.5|1>>|<with|color|red|point-size|4ln|<point|6|1>>|<with|color|red|point-size|4ln|<point|6.5|1>>|<with|color|red|point-size|4ln|point-style|round|<point|4|4>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|0.5|-1>|<point|7.5|-1.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|2|-1>|<point|2.0|0.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|0.5|-2.5>|<point|7.5|-2.5>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|1.5|-2.5>|<point|1.5|-1.5>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|0.5|-4>|<point|7.5|-4.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|1|-4>|<point|1.0|-3.0>>>|<with|color|blue|point-size|4ln|<point|2|-1>>|<with|color|blue|point-size|4ln|<point|2.5|-0.5>>|<with|color|blue|point-size|4ln|<point|3|-1>>|<with|color|blue|point-size|4ln|<point|3.5|-1>>|<with|color|blue|point-size|4ln|<point|4|-1>>|<with|color|blue|point-size|4ln|<point|4.5|-1>>|<with|color|blue|point-size|4ln|<point|1.5|-2.5>>|<with|color|blue|point-size|4ln|<point|2|-2>>|<with|color|blue|point-size|4ln|<point|2.5|-2.5>>|<with|color|blue|point-size|4ln|<point|3|-2.5>>|<with|color|blue|point-size|4ln|<point|3.5|-2.5>>|<with|color|blue|point-size|4ln|<point|4|-2.5>>|<with|color|red|point-size|4ln|<point|4|-0.5>>|<with|color|red|point-size|4ln|<point|4.5|-0.5>>|<with|color|red|point-size|4ln|<point|5|-0.5>>|<with|color|red|point-size|4ln|<point|5.5|-0.5>>|<with|color|red|point-size|4ln|<point|6|-0.5>>|<with|color|red|point-size|4ln|<point|6.5|-0.5>>|<with|color|red|point-size|4ln|<point|4|-2>>|<with|color|red|point-size|4ln|<point|4.5|-2>>|<with|color|red|point-size|4ln|<point|5|-2>>|<with|color|red|point-size|4ln|<point|5.5|-2>>|<with|color|red|point-size|4ln|<point|6|-2>>|<with|color|red|point-size|4ln|<point|6.5|-2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3.5|3.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4|4>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4.5|4>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5|4>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5.5|4>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6|4>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6.5|4>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3|2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3.5|2.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4|2.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4.5|2.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5|2.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5.5|2.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6|2.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6.5|2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|2.5|0.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3|1>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3.5|1>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4|1>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4.5|1>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5|1>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5.5|1>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6|0.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6.5|0.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|2|-1>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|2.5|-0.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3|-0.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3.5|-0.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4|-0.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4.5|-0.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5|-0.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5.5|-1>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6|-1>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6.5|-1>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|1.5|-2.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|2|-2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|2.5|-2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3|-2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3.5|-2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4|-2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4.5|-2>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5|-2.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5.5|-2.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6|-2.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6.5|-2.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|1|-4>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|1.5|-3.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|2|-3.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|2.5|-3.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3|-3.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3.5|-3.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4|-3.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4.5|-4>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5|-4>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5.5|-4>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|6|-4>>|<with|color|blue|point-size|4ln|<point|1|-4.75>>|<with|color|red|point-size|4ln|<point|1|-5.25>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|1|-5.75>>|<text-at|<math|x<rsub|1>>|<point|1.2|-4.8>>|<text-at|<math|x<rsub|2>>|<point|1.2|-5.3>>|<text-at|<math|x<rsub|1>\<ast\>x<rsub|2>>|<point|1.25|-5.85>>|<with|color|red|<line|<point|-4|4>|<point|-4.0|4.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-7|3.5>|<point|-4.0|3.5>|<point|-0.5|3.5>>>|<with|color|blue|<line|<point|-3.89877112486158|3.5>|<point|-4.0|3.5>|<point|-4.0|3.5>|<point|-4.0|3.5>>>>>

  \;

  <paragraph|Exercise 2>

  Manually convolve the functions <math|h<around*|(|n|)>=\<delta\><around*|(|n|)>+2\<delta\><around*|(|n-1|)>+3\<delta\><around*|(|n-2|)>>
  with the function <math|x<around*|(|n|)>=\<delta\><around*|(|n|)>+\<delta\><around*|(|n+1|)>+\<delta\><around*|(|n-1|)>+\<delta\><around*|(|n-2|)>>:

  <with|gr-mode|<tuple|edit|point>|gr-frame|<tuple|scale|1cm|<tuple|0.5gw|0.190002gh>>|gr-geometry|<tuple|geometry|1par|0.393342par|center>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|0.5>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|0.5>|gr-arrow-end|\<gtr\>|gr-line-width|2ln|gr-point-size|4ln|gr-point-style|triangle|gr-color|none|gr-fill-color|orange|<graphics||<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-7|2>|<point|-1.0|2.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-4|2>|<point|-4.0|4.0>>>|<with|color|blue|point-size|4ln|<point|-4|2.5>>|<with|color|blue|point-size|4ln|<point|-3.5|3>>|<with|color|blue|point-size|4ln|<point|-3|3.5>>|<with|color|red|point-size|4ln|<point|-4.5|2.5>>|<with|color|red|point-size|4ln|<point|-3.5|2.5>>|<with|color|red|point-size|4ln|<point|-3|2.5>>|<with|color|red|point-size|4ln|point-style|round|<point|-4|2.5>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-7|0>|<point|-1.0|0.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|-4|0>|<point|-4.0|1.5>>>|<with|color|blue|point-size|4ln|<point|-4|0.45>>|<with|color|blue|point-size|4ln|<point|-3.5|1>>|<with|color|blue|point-size|4ln|<point|-3|1.5>>|<with|color|red|point-size|4ln|<point|-3.5|0.5>>|<with|color|red|point-size|4ln|<point|-4.5|0.5>>|<with|color|red|point-size|4ln|<point|-5|0.5>>|<with|color|red|point-size|4ln|point-style|round|<point|-4|0.45>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|1|0>|<point|6.5|0.0>>>|<with|arrow-end|\<gtr\>|line-width|2ln|<line|<point|2|0>|<point|2.0|3.0>>>|<with|color|none|point-size|4ln|point-style|triangle|<point|2|1.5>>|<with|color|none|point-size|4ln|point-style|triangle|<point|2|1.5>>|<with|color|none|point-size|4ln|point-style|triangle|<point|2|1.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-4.0|0.45>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|-3.5|1.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|2|0.55>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|2.5|1.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3|3>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|3.5|3>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4|2.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|4.5|1.5>>|<with|color|none|point-size|4ln|fill-color|orange|point-style|triangle|<point|5|0>>>>

  <section|Spatial Filtering>

  <paragraph|Exercise 1: Low Pass Filtering>

  After implementing the <with|font-shape|italic|averaging filter>:

  <\equation*>
    h=<frac|1|9><around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|1>>>>>|)>
  </equation*>

  I tested it on the image <with|font-shape|italic|peppers.png>:

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|peppers_gray_avg3.png|383px|287px||>>|<cell|<image|peppers_gray_avg6.png|383px|287px||>>>>>>|<with|font-shape|italic|peppers.png>
  convolved with averaging filter (size <math|3\<times\>3> and
  <math|6\<times\>6>)>

  The result is a blurred image of the original version where the high
  frequency components of the original image are removed from the results.
  More the filter is big more the result is accentuate (more blur and less
  high frequency components preserved).

  Similary for the gaussian filter:

  <\equation*>
    h=<frac|1|16><around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|1>>|<row|<cell|2>|<cell|4>|<cell|2>>|<row|<cell|1>|<cell|2>|<cell|1>>>>>|)>
  </equation*>

  <big-figure|<image|peppers_gray_gauss3.png|575px|431px||>|<with|font-shape|italic|peppers.png>
  convolved with gauss filter size <math|3\<times\>3>>

  Similarly to increase the effect both in the spatial and frequency domain
  it's enaugh to increase the filter kernel size.

  <paragraph|Exercise 2: Order-Statistics Filtering>

  In this second exercise we will try to use different filters to suppress
  some <with|font-shape|italic|salt and pepper> noise.

  <big-figure|<image|peppers_sp.png|575px|431px||>|<with|font-shape|italic|peppers.png>
  with <with|font-shape|italic|salt and pepper> noise>

  The first filter used is the averaging filter with both size
  <math|3\<times\>3> and <math|5\<times\>5>.

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|peppers_sp_avg.png|383px|287px||>>|<cell|<image|peppers_sp_avg_5x5.png|383px|287px||>>>>>>|Convulition
  of the averaging filter (<math|3\<times\>3> and <math|5\<times\>5>) with
  the noisy image>

  The quality of the image after an avereaging filter doesn't improve much,
  event if the local effect of the noise is less important (now there are no
  more pixels at 255 or at 0) the noise has been distributed to the
  neighborhood. With bigger windows the image becomes to blur to be used.

  The second filter used is the median filter:

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|peppers_sp_median.png|383px|287px||>>|<cell|<image|peppers_sp_median_5x5.png|383px|287px||>>>>>>|onvulition
  of the median filter (<math|3\<times\>3> and <math|5\<times\>5>) with the
  noisy image>

  In this case the result is muche better and the filtered image with the
  <math|3\<times\>3> window size give very good results, however increasing
  the size f the windows results in some color artifict and loss in the
  sharpness. This high quality results are due the fact that the filter is
  taking in account the ranking of the neighnorhood pixels avoiding the
  distribution of the original noise.

  <paragraph|Exercise 3: High Pass Filtering>

  Before starting to really use the high pass filter we were asked to
  determine the first and second derivative of the discrete signal:

  <\equation*>
    f=<around*|[|5, 7, 6, 5, 4, 3, 2, 1, 0, 5, 4, 3, 2, 1, 0, 0, 0, 6, 0, 0,
    0, 0, 1, 3, 1, 0, 0, 0, 0, 7, 7, 7, 7|]>
  </equation*>

  The first and second discrete derivate are defined as:

  <\equation*>
    <frac|\<partial\>f|\<partial\>x>=f<around*|(|x+1|)>-f<around*|(|x|)>
  </equation*>

  <\equation*>
    <frac|\<partial\><rsup|2>f|\<partial\>x<rsup|2>>=f<around*|(|x+1|)>+f<around*|(|x-1|)>-2f<around*|(|x|)>
  </equation*>

  So in our case the first derivate is:

  <\equation*>
    <frac|\<partial\>f|\<partial\>x>=2,-1,-1,-1,-1,-1,-1,-1,5,-1,-1,-1,-1,-1,0,0,6,-6,0,0,0,1,2,-2,-1,0,0,0,7,0,0,0
  </equation*>

  <\equation*>
    <frac|\<partial\><rsup|2>f|\<partial\>x<rsup|2>>=-3,0,0,0,0,0,0,6,-9,0,0,0,0,1,0,6,-12,6,0,0,1,2,-4,1,1,0,0,7,-7,0,0
  </equation*>

  <big-figure|<with|gr-mode|<tuple|edit|point>|gr-frame|<tuple|scale|1.41424cm|<tuple|0.76169gw|0.460007gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|0.2>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|0.2>|gr-arrow-end|\<gtr\>|magnify|1.41421356236662|<graphics||<with|color|blue|<point|-6|0.98>>|<with|color|blue|<point|-5.8|1.4>>|<with|color|blue|<point|-5.6|1.2>>|<with|color|blue|<point|-5.4|1>>|<with|color|blue|<point|-5.2|0.8>>|<with|color|blue|<point|-5|0.6>>|<with|color|blue|<point|-4.8|0.4>>|<with|color|blue|<point|-4.6|0.2>>|<with|color|blue|<point|-4.4|0>>|<with|color|blue|<point|-4.2|1>>|<with|color|blue|<point|-4|0.8>>|<with|color|blue|<point|-3.8|0.6>>|<with|color|blue|<point|-3.6|0.4>>|<with|color|blue|<point|-3.4|0.2>>|<with|color|blue|<point|-3.18|0>>|<with|color|blue|<point|-3|0>>|<with|color|blue|<point|-2.8|0>>|<with|color|blue|<point|-2.6|1.2>>|<with|color|blue|<point|-2.4|0>>|<with|color|blue|<point|-2.2|0>>|<with|color|blue|<point|-2|0>>|<with|color|blue|<point|-1.8|0>>|<with|color|blue|<point|-1.6|0.2>>|<with|color|blue|<point|-1.4|0.6>>|<with|color|blue|<point|-1.2|0.2>>|<with|color|blue|<point|-1|0>>|<with|color|blue|<point|-0.8|0>>|<with|color|blue|<point|-0.6|0>>|<with|color|blue|<point|-0.4|0>>|<with|color|blue|<point|0|1.4>>|<with|color|blue|<point|0.2|1.4>>|<with|color|blue|<point|0.4|1.4>>|<with|color|red|<point|-6|0.4>>|<with|color|red|<point|-5.8|-0.2>>|<with|color|red|<point|-5.6|-0.2>>|<with|color|red|<point|-5.4|-0.2>>|<with|color|red|<point|-5.2|-0.2>>|<with|color|red|<point|-5|-0.2>>|<with|color|red|<point|-4.8|-0.2>>|<with|color|red|<point|-4.6|-0.2>>|<with|color|red|<point|-4.4|1>>|<with|color|red|<point|-4.2|-0.2>>|<with|color|red|<point|-4|-0.2>>|<with|color|red|<point|-3.8|-0.2>>|<with|color|red|<point|-3.6|-0.2>>|<with|color|red|<point|-3.4|-0.2>>|<with|color|red|<point|-2.8|1.2>>|<with|color|red|<point|-2.6|-1.2>>|<with|color|red|point-style|round|<point|-3.18|0>>|<with|color|red|point-style|round|<point|-3|0>>|<with|color|red|point-style|round|<point|-2.4|0>>|<with|color|red|point-style|round|<point|-2.2|0>>|<with|color|red|point-style|round|<point|-2|0>>|<with|color|red|<point|-1.8|0.2>>|<with|color|red|<point|-1.6|0.4>>|<with|color|red|<point|-1.4|-0.4>>|<with|color|red|<point|-1.2|-0.2>>|<with|color|red|point-style|round|<point|-1|0>>|<with|color|red|point-style|round|<point|-0.8|0>>|<with|color|red|point-style|round|<point|-0.6|0>>|<with|color|red|<point|-0.4|1.4>>|<with|color|blue|<point|-0.2|1.4>>|<with|color|red|<point|-0.2|0>>|<with|color|red|<point|0|0>>|<with|color|red|<point|0.2|0>>|<with|color|magenta|<point|-5.8|-0.6>>|<with|color|magenta|<point|-5.6|0>>|<with|color|magenta|<point|-5.4|0>>|<with|color|magenta|<point|-5.2|0>>|<with|color|magenta|<point|-5|0>>|<with|color|magenta|<point|-4.8|0>>|<with|color|magenta|<point|-4.6|0>>|<with|color|magenta|<point|-4.4|1.2>>|<with|color|magenta|<point|-4.2|-1.8>>|<with|color|magenta|<point|-4|0>>|<with|color|magenta|<point|-3.8|0>>|<with|color|magenta|<point|-3.58|0>>|<with|color|magenta|<point|-3.4|0>>|<with|color|magenta|<point|-3.2|0.2>>|<with|color|magenta|point-style|round|<point|-2.8|1.2>>|<with|color|magenta|<point|-2.6|-2.4>>|<with|color|magenta|<point|-2.4|1.2>>|<with|color|magenta|<point|-1.4|-0.8>>|<with|color|magenta|point-style|round|<point|-1.2|0.2>>|<with|color|magenta|<point|-1|0.2>>|<with|color|magenta|<point|-0.2|-1.4>>|<with|arrow-end|\<gtr\>|<line|<point|-7.0|0.0>|<point|1.2|0.0>>>|<with|arrow-end|\<gtr\>|<line|<point|-6.0|-2.8>|<point|-6.0|3.0>>>|<with|color|blue|<point|0.65215881467762|3.13477088948787>>|<text-at|<math|f>|<point|0.76972533196633|3.04658277247697>>|<text-at|<math|f<rprime|'>>|<point|0.76972533196633|2.44658277247697>>|<with|color|red|<point|0.65215881467762|2.54412713111636>>|<text-at|<math|f<rprime|''>>|<point|0.76972533196633|1.84658277247697>>|<with|color|magenta|<point|0.65215881467762|1.94412382385527>>>>|<math|f,f<rprime|'>
  and f<rprime|''>> displayed on single plot>

  As previsible the first derivative shows the direction of the trend (ex: if
  it decrease of one every step it will have value -1) while the second
  derivative shows the changment in direction (ex:
  <math|<around*|[|\<ldots\>,0,0,6,0,0,\<ldots\>|]>\<rightarrow\><around*|[|\<ldots\>,6,-6,0,\<ldots\>|]>>).
  The second derivative can be especially usefull when looking for borders as
  detect discontiuities.

  <paragraph|Exercise 4: The Laplacian>

  A first implementation of the laplacian based on the equation:

  <\equation*>
    \<nabla\><rsup|2>f=(f (x + 1, y) + f (x \<minus\> 1, y) + f (x, y + 1) +
    f (x, y \<minus\> 1)) \<minus\> 4f (x, y)
  </equation*>

  that has kernel matrix:

  <\equation*>
    h=<around*|(|<tabular|<tformat|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|-1|cell-halign|r>|<cwith|1|-1|1|-1|cell-width|>|<cwith|1|-1|1|-1|cell-hmode|auto>|<cwith|1|-1|1|-1|cell-height|>|<cwith|1|-1|1|-1|cell-vmode|auto>|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|-4>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>|)>
  </equation*>

  The results on the image <with|font-shape|italic|peppers.png> is the
  following:

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|peppers_laplacian_1.png|383px|287px||>>|<cell|<image|peppers_laplacian_1_withneg.png|383px|287px||>>>>>>|first
  implementation of the Laplacian on the image (without and with negative
  components)>

  As expected the borders of the objects are well evidencied.

  Then after implementing the others 3 possible variants, I get the following
  results:

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|peppers_laplacian_2.png|280px|210px||>>|<cell|<image|peppers_laplacian_3.png|280px|210px||>>|<cell|<image|peppers_laplacian_3.png|280px|210px||>>>>>>|alternative
  implementations of the Laplacian filter>

  The first alternative give similar results of the previus method (as the
  kernel matrix is the same but negative) the third and forth method (as well
  very similar togheter) shows more details and borders than the other two
  methods as they take account as well of the diagonal neighboors.

  The difference of the sign of the kernel impact only as 1 pixel shift in
  the visualization.

  We can use the Laplacian filter to sharpen the image:

  <\equation*>
    g<around*|(|x,y|)>=f<around*|(|x,y|)>\<pm\>\<nabla\><rsup|2>f<around*|(|x,y|)>
    <space|1em><text|(+ if the kernel is positive, <math|-> otherwise)>
  </equation*>

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|peppers_sharp.png|383px|287px||>>|<cell|<image|peppers_super_sharp.png|383px|287px||>>>>>>|<with|font-shape|italic|peppers.png>
  with 2 version of Laplacian filter as sharpener filter>

  Has expected the diagonal version have a very strong effect on the image
  (image on the rigth) while the first filter is more soft and has more
  realistic results (image on the left).

  The kernels of the used sharpering filters are:\ 

  <\equation*>
    h<rsub|1>=<around*|(|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|r>|<table|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|-1>|<cell|5>|<cell|-1>>|<row|<cell|0>|<cell|-1>|<cell|0>>>>>|)><space|2em>h<rsub|2>=<around*|(|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|r>|<table|<row|<cell|-1>|<cell|-1>|<cell|-1>>|<row|<cell|-1>|<cell|9>|<cell|-1>>|<row|<cell|-1>|<cell|-1>|<cell|-1>>>>>|)>
  </equation*>

  <paragraph|Exercise 5: Unsharp masking>

  The <with|font-shape|italic|Unsharp masking> is a process used to enhance
  the quality of the picture and increasing the sharpness of it. The filter
  is:

  <\equation*>
    f<rsub|um><around*|(|x,y|)>=f<around*|(|x,y|)>-<wide|f|\<bar\>><around*|(|x,y|)>
  </equation*>

  where <math|<wide|f|\<bar\>>> is a blurred version of the original image.

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|peppers_unsh_1.png|383px|287px||>>|<cell|<image|peppers_unsh_2.png|383px|287px||>>>>>>|<with|font-shape|italic|peppers.png>
  after unsharping mask with averaging and gaussian filter>

  As it possible to see the resulting images have a much more natural look
  than the previous one (figure 9), and the differences between the two
  version (using averaging or gaussian) is very small.

  <section|The Covariance Matrix and the Eigenvectors>

  In this exercise we were asked to generate <math|100> realization of two
  random variable with pdf <math|\<cal-N\><around*|(|0,1|)>>:

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|e3_e1_x1.png|383px|287px||>>|<cell|<image|e3_e1_x2.png|383px|287px||>>>>>>|Realization
  of two random variable <math|X<rsub|1>> and <math|X<rsub|2>>>

  Its expectations are:

  <\equation*>
    E<around*|[|X<rsub|1>|]>=0.0081620<space|2em>E<around*|[|X<rsub|2>|]>=0.063321
  </equation*>

  and its variances are:

  <\equation*>
    var<around*|[|X<rsub|1>|]>=0.91647<space|2em>var<around*|[|X<rsub|2>|]>=
    1.0173
  </equation*>

  This results will become more close to the real mean and variance of the
  pdf with more realizations of the two variables, with infinite samples we
  will have the exact values.

  The <with|font-shape|italic|covariance> matrix of this to variables is:

  <\equation*>
    C<rsub|Y>=<around*|(|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|r>|<table|<row|<cell|0.9165>|<cell|-0.1587>>|<row|<cell|-0.1587>|<cell|1.0173>>>>>|)>
  </equation*>

  And the plot of it will result in:

  <big-figure|<image|e3_e1_plotcov.png|575px|431px||>|<with|font-shape|italic|plotcov>
  of <math|C<rsub|Y>>>

  As expected the covariance between <math|X<rsub|1>> and <math|X<rsub|2>> is
  close to 0 as they are indipendent.

  After applying a linear transformation <math|A=<around*|(|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|r>|<table|<row|<cell|<sqrt|2>>|<cell|0>>|<row|<cell|0>|<cell|1/<sqrt|3>>>>>>|)>>
  to <math|Y=<around*|[|X<rsub|1>;X<rsub|2>|]>> we obtain the following
  results:

  <\big-figure|<tabular|<tformat|<table|<row|<cell|<image|e3_e1_g.png|383px|287px||>>|<cell|<image|e3_e1_cov_g.png|383px|287px||>>>>>>>
    <math|G<rsub|1>>, <math|G<rsub|2>> and its
    <with|font-shape|italic|plotcov>\ 
  </big-figure>

  As expected both the signal and the covariance matrix has been deformed by
  the matrix <math|A>, now the ellipse has <math|x> axis bigger than the
  <math|y> axis as the transformation has increased the amplitude of
  <math|X<rsub|1>> and decreased the one of <math|X<rsub|2>>. This means that
  the expected values have not changed while the variances have been
  multiplied by the scale factor.

  We were asked to applay a second linear transformation:\ 

  <\equation*>
    A=<around*|(|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|r>|<table|<row|<cell|cos<around*|(|<frac|\<pi\>|6>|)>>|<cell|-sin<around*|(|<frac|\<pi\>|6>|)>>>|<row|<cell|sin<around*|(|<frac|\<pi\>|6>|)>>|<cell|cos<around*|(|<frac|\<pi\>|6>|)>>>>>>|)>
  </equation*>

  <\big-figure|<tabular|<tformat|<table|<row|<cell|<image|e3_e1_e.png|383px|287px||>>|<cell|<image|e3_e1_cov_e.png|383px|287px||>>>>>>>
    <math|E<rsub|1>>, <math|E<rsub|2>> and its
    <with|font-shape|italic|plotcov>\ 
  </big-figure>

  This second linear transformation has different results as is mixing the
  values of the two signal (as the matrix is not diagonal).\ 

  The eigen vectors and eigen values of <math|G> are:

  <\equation*>
    V<rsub|G>=<around*|(|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<table|<row|<cell|-0.998>|<cell|0.059>>|<row|<cell|-0.059>|<cell|-0.998>>>>>|)><space|2em>D<rsub|G>=<around*|(|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|r>|<table|<row|<cell|1.850>|<cell|0>>|<row|<cell|0>|<cell|0.427>>>>>|)>
  </equation*>

  In this case we have quite high separation between the two components.

  \ While for <math|E> are:

  <\equation*>
    V<rsub|E>=<around*|(|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|2|2|1|-1|cell-halign|r>|<table|<row|<cell|-0.269>|<cell|-0.963>>|<row|<cell|0.963>|<cell|-0.269>>>>>|)><space|2em>D<rsub|E>=<around*|(|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|r>|<table|<row|<cell|1.323>|<cell|0>>|<row|<cell|0>|<cell|0.986>>>>>|)>
  </equation*>

  The eigen values in this case are more similar meaning that the information
  is more uniformly distribuited, meaning it would be harder to extract.

  <section|Feature Detector>

  In this last part we were asked to implement a simple corner detector based
  on the derivative filters:

  <\equation*>
    A<rsub|x>=<around*|(|<tabular|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|1>>|<row|<cell|-1>|<cell|0>|<cell|1>>|<row|<cell|-1>|<cell|0>|<cell|1>>>>>|)><space|2em>A<rsub|y>=<around*|(|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|r>|<table|<row|<cell|-1>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>>>>>|)>
  </equation*>

  I tested this filter first on the image <with|font-shape|italic|im02.jpg>
  (shown in figure 15) provided.

  <big-figure|<image|e4_im02.png|575px|431px||>|<with|font-shape|italic|im02.jpg>>

  In particular we were supposed to compute the corner response matrix
  <math|r> as:

  <\equation*>
    r=<frac|L<rsub|x x> .\<ast\>L<rsub|y y>-<around*|(|L<rsub|x
    y>|)><rsup|2>|L<rsub|x x>+L<rsub|y y>>
  </equation*>

  Where the matrix <math|L<rsub|x x>,L<rsub|y y> and L<rsub|x y>> are the
  blurred version (using a gaussian filter) of the derivative products
  (<math|I<rsub|x x>,I<rsub|y y> and I<rsub|x y>>):

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|L<rsub|x x>=G<rsub|\<sigma\> <rsup|w>
    >\<ast\> I<rsub|x x>>>|<row|<cell|L<rsub|y y>=G<rsub|\<sigma\> <rsup|w>
    >\<ast\> I<rsub|y y>>>|<row|<cell|L<rsub|x y>=G<rsub|\<sigma\> <rsup|w>
    >\<ast\> I<rsub|x y>>>>>>
  </equation*>

  \;

  Where <math|G<rsub|\<sigma\><rsup|w>>> is the kernel of a gaussian filter
  with <math|\<sigma\>=3> for this first part of the exercise.

  The results of such operation is the following:

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|e4_im02_r.png|383px|287px||>>|<cell|<image|e4_im02_evid.png|383px|287px||>>>>>>|<math|r>
  of the image <with|font-shape|italic|im02.jpg> and <math|r> overposed to
  the original image>

  \;

  A we can see the matrix <math|r> evedinciate the reagion of the image where
  a corner is present, with a simple algorithm (segmenting the image in
  smaller reagion and finding the local max) it is possible to find this
  corners:

  <big-figure|<image|e4_im02_corners.png|575px|431px||>|Simple corner
  detector>\ 

  The corner identifier algorithm is very simple and I'm sure that can be
  vastly improved in the future.

  In the second part of the exercise we were asked to try different values of
  <math|\<sigma\>> on the image <with|font-shape|italic|square.jpg>:

  <\big-figure|<image|e4_square.png|575px|431px||>>
    <with|font-shape|italic|square.jpg>
  </big-figure>

  The results are the follwing:

  <\big-figure|<tabular|<tformat|<cwith|1|1|1|-1|cell-halign|c>|<cwith|4|4|1|-1|cell-halign|c>|<cwith|3|3|1|-1|cell-width|5pt>|<cwith|3|3|1|-1|cell-hmode|exact>|<cwith|3|3|2|2|cell-width|>|<cwith|3|3|2|2|cell-hmode|auto>|<cwith|3|3|1|-1|cell-height|5pt>|<cwith|3|3|1|-1|cell-vmode|exact>|<table|<row|<cell|<math|\<sigma\>=1>>|<cell|<math|\<sigma\>=2>>>|<row|<cell|<image|e4_square_r1.png|268px|215px||>>|<cell|<image|e4_square_r2.png|268px|215px||>>>|<row|<cell|>|<cell|>>|<row|<cell|<math|\<sigma\>=3>>|<cell|<math|\<sigma\>=4>>>|<row|<cell|<image|e4_square_r.png|268px|215px||>>|<cell|<image|e4_square_r4.png|268px|215px||>>>>>>>
    Matrix <math|r> for different values of <math|\<sigma\>>
  </big-figure>

  As expected with bigger values of <math|\<sigma\>> the results is more
  pricse as the high frequency components (the paper structure in this case)
  is attenuated by the gaussian filter.\ 
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4|4>>
    <associate|auto-11|<tuple|5|5>>
    <associate|auto-12|<tuple|5|5>>
    <associate|auto-13|<tuple|6|6>>
    <associate|auto-14|<tuple|6|6>>
    <associate|auto-15|<tuple|7|6>>
    <associate|auto-16|<tuple|8|7>>
    <associate|auto-17|<tuple|9|7>>
    <associate|auto-18|<tuple|7|7>>
    <associate|auto-19|<tuple|10|8>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|3|8>>
    <associate|auto-21|<tuple|11|8>>
    <associate|auto-22|<tuple|12|9>>
    <associate|auto-23|<tuple|13|9>>
    <associate|auto-24|<tuple|14|10>>
    <associate|auto-25|<tuple|4|10>>
    <associate|auto-26|<tuple|15|?>>
    <associate|auto-27|<tuple|16|?>>
    <associate|auto-28|<tuple|17|?>>
    <associate|auto-29|<tuple|18|?>>
    <associate|auto-3|<tuple|2|2>>
    <associate|auto-30|<tuple|19|?>>
    <associate|auto-4|<tuple|2|2>>
    <associate|auto-5|<tuple|3|2>>
    <associate|auto-6|<tuple|1|3>>
    <associate|auto-7|<tuple|2|3>>
    <associate|auto-8|<tuple|4|3>>
    <associate|auto-9|<tuple|3|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<with|font-shape|<quote|italic>|peppers.png> convolved
      with averaging filter (size <with|mode|<quote|math>|3\<times\>3> and
      <with|mode|<quote|math>|6\<times\>6>)|<pageref|auto-6>>

      <tuple|normal|<with|font-shape|<quote|italic>|peppers.png> convolved
      with gauss filter size <with|mode|<quote|math>|3\<times\>3>|<pageref|auto-7>>

      <tuple|normal|<with|font-shape|<quote|italic>|peppers.png> with
      <with|font-shape|<quote|italic>|salt and pepper>
      noise|<pageref|auto-9>>

      <tuple|normal|Convulition of the averaging filter
      (<with|mode|<quote|math>|3\<times\>3> and
      <with|mode|<quote|math>|5\<times\>5>) with the noisy
      image|<pageref|auto-10>>

      <tuple|normal|onvulition of the median filter
      (<with|mode|<quote|math>|3\<times\>3> and
      <with|mode|<quote|math>|5\<times\>5>) with the noisy
      image|<pageref|auto-11>>

      <tuple|normal|<with|mode|<quote|math>|f,f<rprime|'> and f<rprime|''>>
      displayed on single plot|<pageref|auto-13>>

      <tuple|normal|first implementation of the Laplacian on the image
      (without and with negative components)|<pageref|auto-15>>

      <tuple|normal|alternative implementations of the Laplacian
      filter|<pageref|auto-16>>

      <tuple|normal|<with|font-shape|<quote|italic>|peppers.png> with 2
      version of Laplacian filter as sharpener filter|<pageref|auto-17>>

      <tuple|normal|<with|font-shape|<quote|italic>|peppers.png> after
      unsharping mask with averaging and gaussian filter|<pageref|auto-19>>

      <tuple|normal|Realization of two random variable
      <with|mode|<quote|math>|X<rsub|1>> and
      <with|mode|<quote|math>|X<rsub|2>>|<pageref|auto-21>>

      <tuple|normal|<with|font-shape|<quote|italic>|plotcov> of
      <with|mode|<quote|math>|C<rsub|Y>>|<pageref|auto-22>>

      <\tuple|normal>
        <with|mode|<quote|math>|G<rsub|1>>,
        <with|mode|<quote|math>|G<rsub|2>> and its
        <with|font-shape|<quote|italic>|plotcov>\ 
      </tuple|<pageref|auto-23>>

      <\tuple|normal>
        <with|mode|<quote|math>|E<rsub|1>>,
        <with|mode|<quote|math>|E<rsub|2>> and its
        <with|font-shape|<quote|italic>|plotcov>\ 
      </tuple|<pageref|auto-24>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>On
      Spatial Filtering> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|4tab>|Exercise 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Spatial
      Filtering> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|4tab>|Exercise 1: Low Pass Filtering
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 2: Order-Statistics Filtering
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 3: High Pass Filtering
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 4: The Laplacian
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 5: Unsharp masking
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>The
      Covariance Matrix and the Eigenvectors>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Feature
      Detector> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>