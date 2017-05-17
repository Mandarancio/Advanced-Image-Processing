<TeXmacs|1.99.5>

<style|generic>

<\body>
  <doc-data|<doc-title|Wavelets>|<doc-author|<author-data|<author-name|Martino
  Ferrari>>>>

  <subsubsection|Introduction><label|introduction>

  <paragraph|Exercise 1.1><label|exercise-1.1>

  Give a manual decomposition of <math|g<around|(|x|)>=<around|[|9,7,3,5|]>>
  in 2 scales.

  First we perform a mean, representing the low frequency component:

  <\equation*>
    g<rsub|\<mu\><rsub|1>><around|(|x|)>=<frac|9+7|2>,<frac|3+5|2>=<around|[|8,4|]>
  </equation*>

  Then we can compute the <em|high frequency> component:

  <\equation*>
    g<rsub|d<rsub|1>><around|(|x|)>=9-8,3-4=<around|[|1,-1|]>
  </equation*>

  Then the decomposition is represented by the two vectors:

  <\equation*>
    d<rsub|1>=<around|[|8,4;1,-1|]>
  </equation*>

  We can apply the same operation to compute the decomposition at the second
  scale:

  <\equation*>
    g<rsub|\<mu\><rsub|2>><around|(|x|)>=<frac|8+4|2>=<around|[|6|]>
  </equation*>

  <\equation*>
    g<rsub|d<rsub|2>><around|(|x|)>=8-6=2
  </equation*>

  <\equation*>
    d<rsub|2>=<around|[|6;2;1,-1|]>
  </equation*>

  <paragraph|Exercise 1.2><label|exercise-1.2>

  Given the Discrete Wavelet Transform at scale 3:

  <\equation*>
    d<rsub|3>=<around|[|36,11,22,9,2,0,2,0|]>
  </equation*>

  <\equation*>
    d<rsub|3><around|[|1|]>=<frac|d<rsub|2><around|[|1|]>+d<rsub|2><around|[|2|]>|2>
  </equation*>

  <\equation*>
    d<rsub|3><around|[|2|]>=d<rsub|2><around|[|1|]>-d<rsub|3><around|[|1|]>=d<rsub|2><around|[|1|]>-<frac|d<rsub|2><around|[|1|]>+d<rsub|2><around|[|2|]>|2>
  </equation*>

  Compute the inverse transformation <math|f<rprime|'>>:

  <\equation*>
    d<rsub|2><around|[|1|]>=d<rsub|3><around|[|2|]>+d<rsub|3><around|[|1|]>
  </equation*>

  <\equation*>
    d<rsub|2><around|[|2|]>=d<rsub|3><around|[|1|]>\<cdot\>2-d<rsub|2><around|[|1|]>=d<rsub|3><around|[|1|]>-d<rsub|3><around|[|2|]>
  </equation*>

  And so we can compute:

  <\equation*>
    d<rsub|2>=<around|[|36+11,36-11,22,9,2,0,2,0|]>=<around|[|47,25,22,9,2,0,2,0|]>
  </equation*>

  Then

  <\equation*>
    d<rsub|1>=<around|[|47+22,47-22,25+9,25-9,2,0,2,0|]>=<around|[|69,25,34,16,2,0,2,0|]>
  </equation*>

  And finally:

  <\equation*>
    f<rprime|'>=<around|[|69+2,69-2,25,25,34+2,34-2,16,16|]>=<around|[|71,67,25,25,36,32,16,16|]>
  </equation*>

  Due to the fact that the negative components of <math|d<rsub|3>> were lost
  the reconstruction is not perfect (yet similar).

  <\big-figure>
    <image|output_5_0.png|300pt|||>

    \;
  </big-figure|<math|f> and <math|f<rprime|'>>>

  <subsubsection|The 1D Haar Wavelet><label|the-1d-haar-wavelet>

  <paragraph|Exercise 2.1><label|exercise-2.1>

  Draw all box functions for vector-space <math|V<rsub|0>> and
  <math|V<rsub|1>>:

  <\big-figure>
    <image|output_7_0.png|300pt|||>

    \;
  </big-figure|plot of <math|\<phi\><rsub|0><rsup|0>>>

  <\big-figure>
    <image|output_7_1.png|300pt|||>

    \;
  </big-figure|plot of <math|\<phi\><rsub|0><rsup|1>>>

  <\big-figure>
    <image|output_7_2.png|300pt|||>

    \;
  </big-figure|plot of <math|\<phi\><rsub|1><rsup|1>>>

  <paragraph|Exercise 2.2><label|exercise-2.2>

  Give the normalized coefficients of the Haar wavelet decomposition of
  <math|f<around|(|x|)>> into <math|V<rsub|0>>, <math|W<rsub|0>> and
  <math|W<rsub|1>>:

  <\equation*>
    \<phi\><rsup|0><rsub|0><around|(|x|)>=1*\<phi\><around|(|x|)>
  </equation*>

  <\equation*>
    \<psi\><rsup|0><rsub|0><around|(|x|)>=1*\<psi\><around|(|x|)>
  </equation*>

  <\equation*>
    \<psi\><rsup|1><rsub|0><around|(|x|)>=<sqrt|2>*\<psi\>*<around|(|2*x|)>
  </equation*>

  <\equation*>
    \<psi\><rsup|1><rsub|1><around|(|x|)>=<sqrt|2>*\<psi\>*<around|(|2*x-1|)>
  </equation*>

  <\big-figure>
    <image|output_9_0.png|300pt|||>

    \;
  </big-figure|plot of normalized <math|\<psi\><rsup|0><rsub|0>,\<psi\><rsub|0><rsup|1>>
  and <math|\<psi\><rsub|1><rsup|1>>>

  <subsubsection|Imaging><label|imaging>

  <paragraph|Exercise 3.1><label|exercise-3.1>

  In this exercise I computed the <em|dwt> transform of <em|Cameraman.bmp>
  and display the four components:

  <\big-figure>
    <image|output_11_0.png|300pt|||>

    \;
  </big-figure|original <with|font-shape|italic|Cameraman.bmp>>

  <\big-figure>
    <image|output_11_1.png|300pt|||>

    \;
  </big-figure|<with|font-shape|italic|DWT> transform of
  <with|font-shape|italic|Cameraman.png>>

  <paragraph|Exercise 3.2><label|exercise-3.2>

  Using the function <em|wavedec> is possible to compute the wavelet
  decomposition of the image. After computing the components we were asked to
  order it by magnitude:

  <\big-figure>
    <image|output_13_0.png|300pt|||>

    \;
  </big-figure|ordered wavelet components of
  <with|font-shape|italic|Cameraman.bmp> >

  Is very interesting to see that few components have most of the energy and
  information (around 10000) while the most of the others have magnitude
  around 0.

  <paragraph|Exercise 3.3><label|exercise-3.3>

  Using the information gathered previously I was able to compress (by
  nullify the value of some components) the image. To do so first I
  decomposed the image, than I nullify each component lower than a fixed
  threshold <math|\<tau\>> that I fixed to 10 (after few tests):

  <\verbatim-code>
    Treshold: 10

    percentual of zeros: 79.20%

    PSNR: 39.36

    MSE: 7.541
  </verbatim-code>

  <\big-figure>
    <image|output_15_2.png|300pt|||>

    \;
  </big-figure|79% compressed version of <with|font-shape|italic|Cameraman.bmp>>

  <\big-figure>
    <image|output_15_3.png|300pt|||>

    \;
  </big-figure|error between reconstructed and original version>

  The results is very interesting, the reconstructed image is very close to
  the original, with a <math|M*S*E=7.761> and a <math|P*S*N*R=39.23>. As
  possible to see in the previous figure the difference is as well very small
  and mostly in the high-frequency (and high variance) areas.

  To understand better the quality and capacity of the compression I chose to
  variate the threshold from 1 to 1600 (with a step of 10) and plot the
  results:

  <\big-figure>
    <image|output_18_0.png|300pt|||>

    \;
  </big-figure|<with|font-shape|italic|PSNR> and percentage of zeros vs
  threshold <math|\<tau\>>>

  <\big-figure>
    <image|output_18_1.png|300pt|||>

    \;
  </big-figure|<with|font-shape|italic|PSNR> vs percentage of zeros>

  In the fist figure I plotted the <em|PSNR> and the percentage of nullified
  components against the threshold. The percentage of zeros reach values
  close to the 100% very quickly and at the same time the <em|PSNR> decrease
  at first very quickly and then more linearly. With a threshold

  For this reason the second plot is probably more interesting as instead of
  using the threshold as <math|x> axis I used the percentage of zeros.

  In this way is possible to see that the <em|PSNR> decrease linearly with
  the percentage of zeros (as both have similar trend in the against the
  threshold) till 90% and the implode quickly.

  This results is very good, as it told us that even with high compression
  80-90% we can get a good quality image. However I'm expecting some kind
  phase transition close to 0% of zeros to visualize it I chose to focus on
  the toehold range <math|\<tau\>\<in\><around|[|0,0.5|]>>:

  <\big-figure>
    <image|output_21_0.png|300pt|||>

    \;
  </big-figure|<with|font-shape|italic|PSNR> for very small threshold>

  As expected with few percentage of zeros there is no relevant loss of
  information. The decrease of quality in the picture starts only from around
  9% of zeros.
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.2|3>>
    <associate|auto-11|<tuple|5|4>>
    <associate|auto-12|<tuple|3|4>>
    <associate|auto-13|<tuple|3.1|4>>
    <associate|auto-14|<tuple|6|4>>
    <associate|auto-15|<tuple|7|5>>
    <associate|auto-16|<tuple|3.2|5>>
    <associate|auto-17|<tuple|8|5>>
    <associate|auto-18|<tuple|3.3|6>>
    <associate|auto-19|<tuple|9|6>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|10|7>>
    <associate|auto-21|<tuple|11|7>>
    <associate|auto-22|<tuple|12|8>>
    <associate|auto-23|<tuple|13|8>>
    <associate|auto-24|<tuple|14|12>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1|2>>
    <associate|auto-5|<tuple|2|2>>
    <associate|auto-6|<tuple|2.1|2>>
    <associate|auto-7|<tuple|2|2>>
    <associate|auto-8|<tuple|3|3>>
    <associate|auto-9|<tuple|4|3>>
    <associate|exercise-1.1|<tuple|1.1|1>>
    <associate|exercise-1.2|<tuple|1.2|1>>
    <associate|exercise-2.1|<tuple|2.1|2>>
    <associate|exercise-2.2|<tuple|2.2|3>>
    <associate|exercise-3.1|<tuple|3.1|4>>
    <associate|exercise-3.2|<tuple|3.2|5>>
    <associate|exercise-3.3|<tuple|3.3|6>>
    <associate|imaging|<tuple|3|4>>
    <associate|introduction|<tuple|1|1>>
    <associate|the-1d-haar-wavelet|<tuple|2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<with|mode|<quote|math>|f> and
      <with|mode|<quote|math>|f<rprime|'>>|<pageref|auto-4>>

      <tuple|normal|plot of <with|mode|<quote|math>|\<phi\><rsub|0><rsup|0>>|<pageref|auto-7>>

      <tuple|normal|plot of <with|mode|<quote|math>|\<phi\><rsub|0><rsup|1>>|<pageref|auto-8>>

      <tuple|normal|plot of <with|mode|<quote|math>|\<phi\><rsub|1><rsup|1>>|<pageref|auto-9>>

      <tuple|normal|plot of normalized <with|mode|<quote|math>|\<psi\><rsup|0><rsub|0>,\<psi\><rsub|0><rsup|1>>
      and <with|mode|<quote|math>|\<psi\><rsub|1><rsup|1>>|<pageref|auto-11>>

      <tuple|normal|original <with|font-shape|<quote|italic>|Cameraman.bmp>|<pageref|auto-14>>

      <tuple|normal|<with|font-shape|<quote|italic>|DWT> transform of
      <with|font-shape|<quote|italic>|Cameraman.png>|<pageref|auto-15>>

      <tuple|normal|ordered wavelet components of
      <with|font-shape|<quote|italic>|Cameraman.bmp> |<pageref|auto-17>>

      <tuple|normal|79% compressed version of
      <with|font-shape|<quote|italic>|Cameraman.bmp>|<pageref|auto-19>>

      <tuple|normal|error between reconstructed and original
      version|<pageref|auto-20>>

      <tuple|normal|<with|font-shape|<quote|italic>|PSNR> and percentage of
      zeros vs treshold <with|mode|<quote|math>|\<tau\>>|<pageref|auto-21>>

      <tuple|normal|<with|font-shape|<quote|italic>|PSNR> vs percentage of
      zeros|<pageref|auto-22>>

      <tuple|normal|<with|font-shape|<quote|italic>|PSNR> for very small
      treshold|<pageref|auto-23>>
    </associate>
    <\associate|toc>
      <with|par-left|<quote|2tab>|1<space|2spc>Introduction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|4tab>|Exercise 1.1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 1.2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.15fn>>

      <with|par-left|<quote|2tab>|2<space|2spc>The 1D Haar Wavelet
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|4tab>|Exercise 2.1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 2.2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.15fn>>

      <with|par-left|<quote|2tab>|3<space|2spc>Imaging
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|4tab>|Exercise 3.1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 3.2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 3.3
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.15fn>>
    </associate>
  </collection>
</auxiliary>