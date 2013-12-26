Second Attempt - A P? and a Square
####################################################
:date: 2013-12-26 22:00
:tags: toast, foil

Following on from the first attempt. I decided to go back to basics and see if any heat shielding could create a pattern on toast.

The first pattern, look really good. 

.. figure:: {filename}/images/second-attempt/IMG_20131225_223321.jpg
    :alt: pattern
    :align: center

Alas is does not produce any good or noticeable pattern burnt on the the bread. (I skipped the photo of a slice of bread).

Time for some more simple patterns. 

.. figure:: {filename}/images/second-attempt/IMG_20131226_205647.jpg
    :alt: new pattern
    :align: center

.. figure:: {filename}/images/second-attempt/IMG_20131226_205727.jpg
    :alt: new pattern
    :align: center

.. figure:: {filename}/images/second-attempt/IMG_20131226_205804.jpg
    :alt: new pattern
    :align: center

.. figure:: {filename}/images/second-attempt/IMG_20131226_205816.jpg
    :alt: new pattern
    :align: center


Results are a little better, but still the resolution is very low. 

.. figure:: {filename}/images/second-attempt/IMG_20131226_210041.jpg
    :alt: new pattern
    :align: center

.. figure:: {filename}/images/second-attempt/IMG_20131226_210048.jpg
    :alt: new pattern
    :align: center

.. figure:: {filename}/images/second-attempt/IMG_20131226_210220.jpg
    :alt: new pattern
    :align: center

.. figure:: {filename}/images/second-attempt/IMG_20131226_210228.jpg
    :alt: new pattern
    :align: center

The wavelength appears to be high, `although this would be wrong <http://en.wikipedia.org/wiki/Infrared#Heat>`_. Looks like the heat protection, or insulator is not much good. Rather than thinking about Infra-red and heat http://en.wikipedia.org/wiki/Infrared#Heat, I need to be thinking about isolating. 


Note commands used in this post::

    $ ls content/images/second-attempt/* -l | cut  -d' ' -f9
    $ mogrify *.jpg -resize 600x *.jpg

