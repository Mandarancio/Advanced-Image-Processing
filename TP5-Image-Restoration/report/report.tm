<TeXmacs|1.99.5>

<style|generic>

<\body>
  <doc-data|<doc-title|Image Restoration>|<doc-author|<\author-data|<author-name|Martino
  Ferrari>>
    \;
  <|author-data>
    \;

    \;
  </author-data>>>

  <subsection|Simple Inversion><label|simple-inversion>

  <paragraph|Exercise 1.1><label|exercise-1.1>

  In this exercise we will first blur out the image <em|Cameraman> using a
  circular blur filter of radius 4 and then we will restore it using the
  pseudo inverse of the filter.

  <big-figure|<with|par-mode|center|<image|output_2_0.png|200pt|||>
  >|<em|Cameraman> original image>

  <big-figure|<with|par-mode|center|<image|output_5_0.png||200pt||> >|Filter
  and Image in frequency domain>

  The blurred image is created:

  <\equation*>
    G=H\<cdot\>F
  </equation*>

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|output_6_0.png||200pt||>>|<cell|<image|output_7_0.png|200pt|||>>>>>><with|par-mode|center|>|Resulting
  image in both spatial and frequency domain>

  By inverting <math|H> is possible to reconstruct the original image:

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|output_8_0.png||200pt||>>|<cell|<image|output_9_0.png||200pt||>
  >>>>><with|par-mode|center|>|Reconstructed image in both spatial and
  frequency domain>

  <\verbatim>
    mse: 5.39e-33
  </verbatim>

  Using the inversion in this simple case where the <math|f> image is only
  modified by the filter <math|h>, <math|g=h\<ast\>f>, is very effective and
  the reconstruction is perfect.

  <paragraph|Exercise 1.2><label|exercise-1.2>

  In this exercise however we will add some small Gaussian noise <math|z> to
  <math|g>, the resulting PSNR is 40dB, meaning that the noise is really
  small compared to the original image (<math|\<sigma\><rsup|2><rsub|n*o*i*s*e>=0.01>)
  and it is not visible (at least for me).

  <\verbatim>
    \;

    PSNR: 40.01dB

    \;
  </verbatim>

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|output_12_1.png||200pt||>>|<cell|<image|output_13_0.png||200pt||>>>>>>|Blurred
  and noisy image>

  Reconstructing the image by inversion:

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|output_14_0.png||200pt||>>|<cell|<image|output_15_0.png||200pt||>>>>>><with|par-mode|center|
  >|Reconstruction in frequency domain>

  The result of the reconstruction is totally wrong, even with such small
  noise. This is due the fact the <math|H> has many singular point (where its
  value is very close or equal to 0), as the noise is equally distributed in
  the frequency domain when reconstructing the image the noise present in the
  singular point of the filter is amplified of many order of magnitudes. This
  amplification is very well visible in the plot of
  <math|l*o*g<around|(|<around|\||<wide|F|^>|\|>|)>>.

  <paragraph|Exercise 1.3><label|exercise-1.3>

  To avoid the noise explosion a simple solution is to threshold the filter
  <math|H> to bigger values:

  <big-figure|<with|par-mode|center|<image|output_17_0.png||200pt||>
  >|<math|<around|\||H|\|>> in 3D>

  To begin I start to tresholding all values of <math|H> smaller than
  <math|\<tau\>=0.1>:

  <big-figure|<with|par-mode|center|<tabular|<tformat|<table|<row|<cell|<image|output_19_0.png||200pt||>>|<cell|<image|output_20_0.png||200pt||>
  >>>>>>|Reconstruction using treshold>

  <\verbatim>
    mse: 1.45e-02
  </verbatim>

  As it possible to see the reconstruction is already much better than the
  noise pattern of before, however I tried different configuration of the
  threshold <math|\<tau\>> to see what was the best one:

  <\verbatim>
    tau optimal: 0.27 - 8.9e-03
  </verbatim>

  <big-figure|<with|par-mode|center|<image|output_22_1.png||200pt||>
  >|<em|mse> depending on <math|\<tau\>>>

  The optimal threshold seems to be <math|\<tau\>=0.27> with an <em|mse> of
  only <math|8.9*e<rsup|-3>> this the result reconstruction:

  <big-figure|<with|par-mode|center|<image|output_24_0.png||200pt||>
  >|\PBest\Q reconstruction>

  <\verbatim>
    mse: 8.87e-03
  </verbatim>

  Even if the <em|mse> is smaller I still prefer the reconstruction with
  <math|\<tau\>=0.1>.

  <subsection|Regularization><label|regularization>

  Another simple way to avoid the noise amplification is to regularize the
  filter <math|H> by adding some small value <math|\<lambda\>> that avoid
  (too) small values:

  <\equation*>
    H<rsub|\<lambda\>>=<frac|H<rsup|\<ast\>>|<around|\||H|\|><rsup|2>+\<lambda\><rsup|2>>
  </equation*>

  Note that <math|H<rsub|\<lambda\>>> is already inverted respect to
  <math|H>.

  My first experiment is again with <math|\<lambda\>=0.1>:

  <big-figure|<with|par-mode|center|<image|output_27_0.png||200pt||>
  >|Reconstruction filter>

  <big-figure|<with|par-mode|center|<tabular|<tformat|<table|<row|<cell|<image|output_28_0.png||200pt||>>|<cell|<image|output_29_0.png||200pt||>>>>>>>|Reconstruction
  by regularization>

  As before I looked which <math|\<lambda\>> minimize the error:

  <\verbatim>
    Lambda optimal: 0.10 - 3.9e-03
  </verbatim>

  <big-figure|<with|par-mode|center|<image|output_31_1.png||200pt||>
  >|<em|mse> depending on <math|\<lambda\>>>

  In this case appear that <math|\<lambda\>=0.1> is already the best solution
  with an <em|mse> of only <math|3.9*e<rsup|-3>>, while the best
  reconstruction by treshold was capable to optain <math|8.91*e<rsup|-3>>,
  more or less the double. As well the visual reconstruction is much more
  pleasant.

  <subsection|The Wiener Filter><label|the-wiener-filter>

  The Wiener filter use some prior information, so is a statistical approach,
  on the signal to reconstruct it in such way to minimize the <em|mse>. In
  particular it use the hypothetical power spectrum of noise
  (<math|S<rsub|z>>) and signal (<math|S<rsub|f>>) to do such reconstruction:

  <\equation*>
    <wide|F|^>=<frac|H<rsup|\<ast\>>|<around|\||H|\|><rsup|2>+S<rsub|z>/S<rsub|f>>*G
  </equation*>

  I recall that <math|<around|\||H|\|><rsup|2>=H\<cdot\>H<rsup|\<ast\>>> and
  the block <math|<frac|<around|\||H|\|><rsup|2>|H>> as been replaced by only
  <math|H<rsup|\<ast\>>>.\ 

  <paragraph|Exercise 3.1>

  By using the real power spectrum of the signal and of the noise the result
  is the following:

  <big-figure|<tabular|<tformat|<table|<row|<cell|<image|output_35_0.png||200pt||>>|<cell|<image|output_36_0.png||200pt||>>>>>><with|par-mode|center|>|Reconstruction
  using the Weiner filter>

  <\verbatim>
    mse: 2.7e-03
  </verbatim>

  The resulting reconstruction is slightly better than using the
  regularization. However we used the original image to obtain such
  reconstruction, and in real application we don't have access to this
  information, but it's possible to use the power spectrum of another natural
  image (as most of real images have similar spectrum) to do such
  reconstruction:

  <big-figure|<with|par-mode|center|<tabular|<tformat|<table|<row|<cell|<image|output_39_0.png||200pt||>>|<cell|<image|output_40_0.png||200pt||>>>>>>>|Reconstruction
  using the Weiner filter but different <math|S<rsub|f>>>

  <\verbatim>
    mse: 3.5e-03
  </verbatim>

  Even in this case the reconstruction is slightly better then using a simple
  regularization. The lost of performance against using the original
  <math|S<rsub|f>> are around <math|\<sim\>>30%.\ 

  Then I try to use the wiener filter implemented in the <em|skimage> python
  package, this implementation doesn't ask for any prior <math|S<rsub|f>> or
  <math|S<rsub|n>> so I suppose is some how coded or extracted from <math|G>
  directly:

  <big-figure|<with|par-mode|center|<image|output_43_0.png||200pt||>
  >|Reconstruction by using <with|font-shape|italic|skimage> Wiener filter>

  <\verbatim>
    mse: 1.1e-03
  </verbatim>

  The result of such reconstruction is even better then the previous ones
  (<math|\<sim\>>3 times better than using the original <math|S<rsub|f>>).\ 

  After a quick look at their code to understand what is difference, their
  implementation is very close to our:

  <\python-code>
    reg, _ = uft.laplacian(image.ndim, image.shape, is_real=is_real)

    wiener_filter = np.conj(H) / (np.abs(H) ** 2 + balance * np.abs(reg) **
    2)

    return uft.uifft2(wiener_filter * uft.ufft2(image))
  </python-code>

  Where <with|font-family|tt|reg> replace our <math|S<rsub|z>/S<rsub|f>> and
  is computed using a laplacian filter (<math|H<rsub|L>>, second derivate of
  the image), and the \Pbalance\Q (<math|\<lambda\>>) constant is a constant
  to improve the balance between the data adaquacy and the restoration.\ 

  The results is:

  <\equation*>
    <wide|F|^>=<frac|H<rsup|\<ast\>>|<around|\||H|\|><rsup|2>+\<lambda\><around*|\||H<rsub|L>\<cdot\>G|\|><rsup|2>>*G
  </equation*>

  <paragraph|Exercise 3.2>

  Another way to compute the <math|S<rsub|f>> without having access to the
  original image is to compute it from the noisy image itself:

  <\equation*>
    r<around*|(|x,y|)>=\<sigma\><rsub|f><rsup|2>\<rho\><rsup|-<sqrt|x<rsup|2>+y<rsup|2>>>+\<mu\><rsub|f>
  </equation*>

  where <math|\<sigma\><rsub|f><rsup|2>> is the variance of the image and
  <math|\<mu\><rsub|f>> its mean. While <math|\<rho\>> is the local
  correlation:

  <\code>
    <\code*>
      var : 4.92e-02

      mu \ : 4.66e-01

      rho : 9.82e-01
    </code*>
  </code>

  <big-figure|<image|output_47_1.png|269pt|200pt||>|Computed <math|r>>

  The resulting reconstrution has <em|mse> (and visual result) very similar
  to the reconstruction with <math|S<rsub|f>> from a different image:

  <big-figure|<image|output_48_0.png|195pt|200pt||>|Reconstruction using
  <math|r> instead of <math|S<rsub|z>/S<rsub|f>>>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|3|4>>
    <associate|auto-11|<tuple|7|4>>
    <associate|auto-12|<tuple|8|4>>
    <associate|auto-13|<tuple|9|5>>
    <associate|auto-14|<tuple|10|5>>
    <associate|auto-15|<tuple|2|5>>
    <associate|auto-16|<tuple|11|6>>
    <associate|auto-17|<tuple|12|6>>
    <associate|auto-18|<tuple|13|7>>
    <associate|auto-19|<tuple|3|7>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-20|<tuple|4|7>>
    <associate|auto-21|<tuple|14|7>>
    <associate|auto-22|<tuple|15|8>>
    <associate|auto-23|<tuple|16|8>>
    <associate|auto-24|<tuple|5|14>>
    <associate|auto-25|<tuple|17|15>>
    <associate|auto-26|<tuple|18|16>>
    <associate|auto-27|<tuple|21|?>>
    <associate|auto-28|<tuple|22|?>>
    <associate|auto-29|<tuple|23|?>>
    <associate|auto-3|<tuple|1|1>>
    <associate|auto-30|<tuple|24|?>>
    <associate|auto-31|<tuple|24|?>>
    <associate|auto-32|<tuple|25|?>>
    <associate|auto-4|<tuple|2|1>>
    <associate|auto-5|<tuple|3|2>>
    <associate|auto-6|<tuple|4|2>>
    <associate|auto-7|<tuple|2|2>>
    <associate|auto-8|<tuple|5|3>>
    <associate|auto-9|<tuple|6|3>>
    <associate|exercise-1.1|<tuple|1|1>>
    <associate|exercise-1.2|<tuple|2|2>>
    <associate|exercise-1.3|<tuple|3|4>>
    <associate|exercise-3.2|<tuple|4|?>>
    <associate|regularization|<tuple|2|5>>
    <associate|simple-inversion|<tuple|1|1>>
    <associate|the-wiener-filter|<tuple|3|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<with|font-shape|<quote|italic>|Cameraman> original
      image|<pageref|auto-3>>

      <tuple|normal|Filter and Image in frequency domain|<pageref|auto-4>>

      <tuple|normal|Resulting image in both spatial and frequency
      domain|<pageref|auto-5>>

      <tuple|normal|Reconstructed image in both spatial and frequency
      domain|<pageref|auto-6>>

      <tuple|normal|Blurred and noisy image|<pageref|auto-8>>

      <tuple|normal|Reconstruction in frequency domain|<pageref|auto-9>>

      <tuple|normal|<with|mode|<quote|math>|<around|\||H|\|>> in
      3D|<pageref|auto-11>>

      <tuple|normal|Reconstruction using treshold|<pageref|auto-12>>

      <tuple|normal|<with|font-shape|<quote|italic>|mse> depending on
      <with|mode|<quote|math>|\<tau\>>|<pageref|auto-13>>

      <tuple|normal|\PBest\Q reconstruction|<pageref|auto-14>>

      <tuple|normal|Reconstruction filter|<pageref|auto-16>>

      <tuple|normal|Reconstruction by regularization|<pageref|auto-17>>

      <tuple|normal|<with|font-shape|<quote|italic>|mse> depending on
      <with|mode|<quote|math>|\<lambda\>>|<pageref|auto-18>>

      <tuple|normal|Reconstruction using the Weiner filter|<pageref|auto-21>>

      <tuple|normal|Reconstruction using the Weiner filter but different
      <with|mode|<quote|math>|S<rsub|f>>|<pageref|auto-22>>

      <tuple|normal|Reconstruction by using
      <with|font-shape|<quote|italic>|skimage> Wiener
      filter|<pageref|auto-23>>
    </associate>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1<space|2spc>Simple Inversion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|4tab>|Exercise 1.1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 1.2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|Exercise 1.3
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.15fn>>

      <with|par-left|<quote|1tab>|2<space|2spc>Regularization
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|3<space|2spc>The Wiener Filter
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|4tab>|Exercise 3.1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20><vspace|0.15fn>>
    </associate>
  </collection>
</auxiliary>