<TeXmacs|1.99.5>

<style|generic>

<\body>
  <doc-data|<doc-title|Fourier>|<doc-author|<author-data|<author-name|Martino
  Ferrari>>>>

  <paragraph|Exercise 1>

  Show that the <with|font-shape|italic|DC> component of a signal
  <math|f<around*|(|x|)>> with zero mean is 0:

  <\equation*>
    E<around*|[|f<around*|(|x|)>|]>=0=<frac|1|M><big|sum><rsub|x=0><rsup|M-1>f<around*|(|x|)>=0
  </equation*>

  <\equation*>
    \<cal-F\><around*|(|u|)>=<frac|1|M><big|sum><rsub|x=0><rsup|M-1>f<around*|(|x|)>e<rsup|-<frac|i2\<pi\>u*x|M>>
  </equation*>

  The <with|font-shape|italic|DC> component stands for the continuous
  components (or with frequency 0) and is equivalent to
  <math|\<cal-F\><around*|(|0|)>>:

  <\equation*>
    \<cal-F\><around*|(|0|)>=<frac|1|M><big|sum><rsub|x=0><rsup|M-1>f<around*|(|x|)>e<rsup|-<frac|i2\<pi\>0*x|M>>=<frac|1|M><big|sum><rsub|x=0><rsup|M-1>f<around*|(|x|)>\<cdot\>1\<equiv\>E<around*|[|f<around*|(|x|)>|]>=0
  </equation*>

  <paragraph|Exercise 2>

  Given <math|f<around*|(|x|)>=<around*|[|5,4,3,2,1|]>>:

  <\itemize>
    <item>manually compute the <with|font-shape|italic|DFT> of
    <with|font-shape|italic|f(x)>:

    <\equation*>
      \<cal-F\><around*|(|u|)>=<frac|1|5>*<around*|(|5\<cdot\>e<rsup|0>+4\<cdot\>e<rsup|-<frac|2i\<pi\>u|5>>+3\<cdot\>e<rsup|-<frac|4i\<pi\>u|5>>+2\<cdot\>e<rsup|-<frac|6i\<pi\>u|5>>+1\<cdot\>e<rsup|-<frac|8i\<pi\>u|5>><rsup|>|)>
    </equation*>

    <\equation*>
      \<cal-F\><around*|(|<around*|[|0,1,2,3,4|]>|)>=<around*|[|3,0.5-0.69i,0.5-0.16i,0.5+0.16i,0.5+0.69i|]>
    </equation*>

    <item>this gave me the same result that using the
    <with|font-shape|italic|fft> function of <with|font-shape|italic|numpy>,
    however I had to normalize the results dividing the output for the number
    of samples.

    <item>if <math|f<around*|(|x|)>=<around*|[|5,4,3,2,1,5,4,3,2,1|]>> the
    <with|font-shape|italic|DFT> becomes:

    <\equation*>
      \<cal-F\><around*|(|u|)>=<frac|1|10><around*|(|5\<cdot\>e<rsup|0>+4\<cdot\>e<rsup|-<frac|2i\<pi\>u|10>>+3\<cdot\>e<rsup|-<frac|4i\<pi\>u|10>>+2\<cdot\>e<rsup|-<frac|6i\<pi\>u|10>>+1\<cdot\>e<rsup|-<frac|8i\<pi\>u|10>>+5e<rsup|-<frac|10i\<pi\>u|10>>+\<ldots\>.|)>
    </equation*>

    <\equation*>
      \<cal-F\><around*|(|<around|[|0,1,2,\<ldots\>,9|]>|)>=<around*|[|3,0,0.5+0.69i,0,0.5+0.16i,0,0.5+0.16i,0,0.5+0.69i,0|]>
    </equation*>

    As the frequence of each signal doubled the <with|font-shape|italic|DFT>
    has now 0 between each component.

    <\equation*>
      \<cal-F\><around*|(|u|)>=<frac|1|10><around*|(|5\<cdot\>e<rsup|0>+4\<cdot\>e<rsup|-<frac|2i\<pi\>u|10>>+3\<cdot\>e<rsup|-<frac|4i\<pi\>u|10>>+2\<cdot\>e<rsup|-<frac|6i\<pi\>u|10>>+1\<cdot\>e<rsup|-<frac|8i\<pi\>u|10>>+5e<rsup|-<frac|10i\<pi\>u|10>>+\<ldots\>.|)>
    </equation*>
  </itemize>

  \;

  <paragraph|Exercise 3>

  In this exercise we were asked to analyze the magnitude and the phase of an
  image, I chose to use <with|font-shape|italic|lena.png> as source image:

  \;

  <big-figure|<image|../../../../ipynb/notebooks/lenna.png|500px|500px||><tabular|<tformat|<table|<row|<cell|>>>>>|source
  image: <with|font-shape|italic|lena.png>>

  After converting it in gray scale I transformed the image in the frequency
  domain using the function <with|font-shape|italic|fft2>:

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|plots/tp3_e3_plt1.png|400px|400px||>>|<cell|<image|plots/tp3_e3_plt2.png|400px|400px||>>>>>>|plot
  of magnitude and phase in the frequency domain>

  Then we were asked to transform back to the \ spatial domain using the
  magnitude and the phase independently:

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|plots/tp3_e3_plt3.png|400px|400px||>>|<cell|<image|plots/tp3_e3_plt4.png|400px|400px||>>>>>><strong|>|plot
  of the reconstructed images>

  From the magnitude reconstruction is impossible see any element of the
  original images, has the energy are not distribute ed in the right
  positions. From the phase one is possible to distinguish the borders of
  <with|font-shape|italic|Lena>, this because in the borders also the phase
  changes.

  <paragraph|Exercise 4>

  After implementing the correlation function in the frequency domain:

  <\equation*>
    f\<star\>g=\<cal-F\><rsup|-1><around*|(|\<cal-F\><around*|(|f|)><rsup|\<ast\>>\<cdot\>\<cal-F\><around*|(|g|)>|)>
  </equation*>

  I used it to compute the auto-correlation of the
  <with|font-shape|italic|cross.png> image:

  <\big-figure|<tabular|<tformat|<cwith|2|2|1|1|cell-halign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|3|3|cell-halign|c>|<table|<row|<cell|<image|TP3_images/cross.png|400px|400px||>>|<cell|<image|plots/tp3_e4_plt2.png|400px|400px||>>|<cell|<image|plots/tp3_e4_plt1.png|400px|400px||>>>|<row|<cell|<with|font-shape|italic|original>>|<with|font-shape|italic|fft
  corr>|<cell|<with|font-shape|italic|xcorr2>>>>>>>
    Results of the different correlation methods
  </big-figure>

  The results are quite similar however the performance of the correlation in
  the frequence domain is around 10 times the one of
  <with|font-shape|italic|xcorr2>.

  I tested the same code on <with|font-shape|italic|cameraman.bmp> to see the
  results:

  <\big-figure|<tabular|<tformat|<cwith|2|2|1|1|cell-halign|c>|<cwith|2|2|2|2|cell-halign|c>|<table|<row|<image|TP3_images/Cameraman.bmp|400px|400px||>|<cell|<image|plots/tp3_e4_plt3.png|400px|400px||>>>|<row|<cell|<with|font-shape|italic|original>>|<with|font-shape|italic|fft
  corr>>>>>>
    autocorrelation of <with|font-shape|italic|cameraman.png>
  </big-figure>

  The autocorrelation in the center is higher as the the cameraman pixels are
  highly correlated.

  <paragraph|Exercise 5>

  In this exercise we were asked to implement the
  <with|font-shape|italic|gaussian low pass filter> and the
  <with|font-shape|italic|difference of gaussian high pass filter> in the
  frequency domain:

  <\big-figure|<tabular|<tformat|<cwith|2|2|1|1|cell-halign|c>|<cwith|2|2|2|2|cell-halign|c>|<table|<row|<image|plots/tp3_e5_plt3.png|400px|400px||>|<cell|<image|plots/tp3_e5_plt7.png|400px|400px||>>>|<row|<cell|<with|font-shape|italic|low
  pass filter>>|<with|font-shape|italic|high pass filter>>>>>>
    filters in the frequency domain
  </big-figure>

  Then I chose to app lay it on the image <with|font-shape|italic|bird.png>:

  <big-figure|<image|TP3_images/bird.png|500px|500px||><tabular|<tformat|<table|<row|<cell|>>>>>|source
  image: <with|font-shape|italic|bird.png>>

  Applying the low pass filter will result as following:

  <\big-figure|<tabular|<tformat|<cwith|2|2|1|1|cell-halign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|3|3|cell-halign|c>|<table|<row|<cell|<image|plots/tp3_e5_plt2.png|400px|400px||>>|<cell|<image|plots/tp3_e5_plt5.png|400px|400px||>>|<cell|<image|plots/tp3_e5_plt4.png|400px|400px||>>>|<row|<cell|<math|I<around*|(|u|)>>>|<math|I<around*|(|u|)>\<cdot\>H<around*|(|u|)>>|<cell|<math|\<cal-F\><rsup|-1><around*|(|I<around*|(|u|)>\<cdot\>H<around*|(|u|)>|)>>>>>>>>
    low pass filter applied to <with|font-shape|italic|bird.png>
  </big-figure>

  Instead the high pass filter gave this results:

  <\big-figure|<tabular|<tformat|<cwith|2|2|1|1|cell-halign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|3|3|cell-halign|c>|<table|<row|<cell|<image|plots/tp3_e5_plt2.png|400px|400px||>>|<cell|<image|plots/tp3_e5_plt8.png|400px|400px||>>|<cell|<image|plots/tp3_e5_plt9.png|400px|400px||>>>|<row|<cell|<math|I<around*|(|u|)>>>|<math|I<around*|(|u|)>\<cdot\>H<around*|(|u|)>>|<cell|<math|\<cal-F\><rsup|-1><around*|(|I<around*|(|u|)>\<cdot\>H<around*|(|u|)>|)>>>>>>>>
    high pass filter applied to <with|font-shape|italic|bird.png>
  </big-figure>

  <paragraph|Exercise 4>

  In this exercise we were asked to recover one image of choice. In my case I
  chose the image <with|font-shape|italic|csi_1.png>:

  <\big-figure|<image|TP3_images/csi_1.png|700px|462px||><tabular|<tformat|<table|<row|<cell|>>>>>>
    source image: <with|font-shape|italic|csi_1.png>
  </big-figure>

  The first step is to transform it and display the magnitude in the
  frequency domain as there is clearly a pattern in the printing of the image
  that should be evident in the frequency domain:

  <\big-figure|<image|plots/tp3_e6_plt2.png|700px|462px||>>
    magnitude of <with|font-shape|italic|csi_1.png> in the frequency domain
  </big-figure>

  As supposed the pattern is very clear in the frequency domain however to
  identify better the frequency to filter I chose to project the magnitude on
  the <with|font-shape|italic|x> and <with|font-shape|italic|y> axis:

  <\big-figure|<image|plots/tp3_e6_filters.png|700px|462px||>>
    <with|font-shape|italic|low pass filter> and
    <with|font-shape|italic|notch filter>
  </big-figure>

  The axis normalization is done using the function
  <with|font-shape|italic|np.fft.freq()> to be able to display correctly the
  two dimension that have difference sizes. Now is much more easy to identify
  the paras site frequency and those are multiply of
  100<with|font-shape|italic|u>.

  To improve the image I chose to use a combination of filters: a
  <with|font-shape|italic|low pass filter> and a
  <with|font-shape|italic|notch filter>.\ 

  The first one is the same used in the previous exercise, the second one is
  constructed similarly:

  <\equation*>
    H<around*|(|u|)>=<around*|(|1+i|)>-<around*|(|1+i|)>A<rsup|<around*|(|-<frac|u<rsup|2>|2\<sigma\><rsup|2>>|)>>
  </equation*>

  The resulting filters are shown in the following figure:

  <\big-figure|<image|plots/tp3_e6_plt3.png|700px|506px||>>
    projection of the magnitude
  </big-figure>

  Now that the filters are defined we have to combine it together, to do so
  in the frequency domain is very simple, given <math|I<around*|(|y|)>>, the
  image transformed, <math|H<rprime|'><around*|(|u|)>>, the gaussian low pass
  filter and <math|H<rprime|''><around*|(|u|)>>, the notch filter, the
  reconstructed image in the frequency domain is computed as:

  <\equation*>
    I<rsub|r><around*|(|u|)>=I<around*|(|u|)>\<cdot\>H<rprime|'><around*|(|u|)>\<cdot\>H<rprime|''><around*|(|u|)>
  </equation*>

  The reconstructed image is shown in figure 14.

  <\big-figure>
    <image|plots/csi_1_recover.png|700px|462px||>
  <|big-figure>
    result of the reconstruction
  </big-figure>

  The improvement is huge and now is even possible to read the car plate:

  <\big-figure>
    <tabular|<tformat|<table|<row|<cell|<image|plots/csi_1_plate.png|129pt|54pt||>>|<cell|<image|plots/csi_1_recover_plate.png|129pt|54pt||>>>>>>
  <|big-figure>
    details differences between <with|font-shape|italic|csi_1.png> and the
    restored one
  </big-figure>

  <paragraph|Code>

  The code can be found in the folder <verbatim|code/> and has been written
  in <with|font-shape|italic|python 3> using
  <with|font-shape|italic|numpy,><with|font-shape|italic| scipy> and
  <with|font-shape|italic|matplotlib> libraries, using
  <with|font-shape|italic|Jupyter notebook>, as this tools are both perform
  ant, powerful, free and open-source.\ 
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|5|3>>
    <associate|auto-11|<tuple|6|3>>
    <associate|auto-12|<tuple|7|4>>
    <associate|auto-13|<tuple|8|4>>
    <associate|auto-14|<tuple|9|4>>
    <associate|auto-15|<tuple|6|4>>
    <associate|auto-16|<tuple|10|5>>
    <associate|auto-17|<tuple|11|5>>
    <associate|auto-18|<tuple|12|5>>
    <associate|auto-19|<tuple|13|6>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-20|<tuple|14|6>>
    <associate|auto-21|<tuple|15|6>>
    <associate|auto-22|<tuple|7|?>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|1|2>>
    <associate|auto-5|<tuple|2|2>>
    <associate|auto-6|<tuple|3|2>>
    <associate|auto-7|<tuple|4|2>>
    <associate|auto-8|<tuple|4|3>>
    <associate|auto-9|<tuple|5|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|source image: <with|font-shape|<quote|italic>|lena.png>|<pageref|auto-4>>

      <tuple|normal|plot of magnitude and phase in the frequency
      domain|<pageref|auto-5>>

      <tuple|normal|plot of the reconstructed images|<pageref|auto-6>>

      <\tuple|normal>
        Results of the different correlation methods
      </tuple|<pageref|auto-8>>

      <\tuple|normal>
        autocorrelation of <with|font-shape|<quote|italic>|cameraman.png>
      </tuple|<pageref|auto-9>>

      <\tuple|normal>
        filters in the frequency domain
      </tuple|<pageref|auto-11>>

      <tuple|normal|source image: <with|font-shape|<quote|italic>|bird.png>|<pageref|auto-12>>

      <\tuple|normal>
        low pass filter applied to <with|font-shape|<quote|italic>|bird.png>
      </tuple|<pageref|auto-13>>

      <\tuple|normal>
        high pass filter applied to <with|font-shape|<quote|italic>|bird.png>
      </tuple|<pageref|auto-14>>

      <\tuple|normal>
        source image: <with|font-shape|<quote|italic>|csi_1.png>
      </tuple|<pageref|auto-16>>

      <\tuple|normal>
        magnitude of <with|font-shape|<quote|italic>|csi_1.png> in the
        frequency domain
      </tuple|<pageref|auto-17>>

      <\tuple|normal>
        <with|font-shape|<quote|italic>|low pass filter> and
        <with|font-shape|<quote|italic>|notch filter>
      </tuple|<pageref|auto-18>>

      <\tuple|normal>
        projection of the magnetude
      </tuple|<pageref|auto-19>>

      <\tuple|normal>
        result of the reconstruction
      </tuple|<pageref|auto-20>>

      <\tuple|normal>
        details differences between <with|font-shape|<quote|italic>|csi_1.png>
        and the restored one
      </tuple|<pageref|auto-21>>
    </associate>
    <\associate|toc>
      <with|par-left|<quote|4tab>|Exercise 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 3
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 5
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 4
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Code <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.15fn>>
    </associate>
  </collection>
</auxiliary>