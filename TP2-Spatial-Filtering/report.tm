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
    h=<around*|(|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|-1|cell-width|20pt>|<cwith|1|-1|1|-1|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-height|20pt>|<cwith|1|-1|1|-1|cell-vmode|exact>|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|-4>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>|)>
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

  <section|The Covariance Matrix and the Eigenvectors>

  \;

  \;

  <paragraph|>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|4|?>>
    <associate|auto-11|<tuple|5|?>>
    <associate|auto-12|<tuple|5|?>>
    <associate|auto-13|<tuple|6|?>>
    <associate|auto-14|<tuple|6|?>>
    <associate|auto-15|<tuple|7|?>>
    <associate|auto-16|<tuple|8|?>>
    <associate|auto-17|<tuple|9|?>>
    <associate|auto-18|<tuple|3|?>>
    <associate|auto-19|<tuple|7|?>>
    <associate|auto-2|<tuple|1|?>>
    <associate|auto-3|<tuple|2|?>>
    <associate|auto-4|<tuple|2|?>>
    <associate|auto-5|<tuple|3|?>>
    <associate|auto-6|<tuple|1|?>>
    <associate|auto-7|<tuple|2|?>>
    <associate|auto-8|<tuple|4|?>>
    <associate|auto-9|<tuple|3|?>>
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

      <tuple|normal||<pageref|auto-13>>
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

      <with|par-left|<quote|4tab>| <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.15fn>>
    </associate>
  </collection>
</auxiliary>