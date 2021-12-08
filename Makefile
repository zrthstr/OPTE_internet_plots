
fetch:
	wget 'http://videobot.ash1.opte.org/content/opte/maps/raw/1069646562.2D.coords'
	wget 'http://videobot.ash1.opte.org/content/opte/maps/raw/1069646562.lgl'
	wget 'http://videobot.ash1.opte.org/content/opte/maps/raw/1069646562.edgecolors'


## size
XY = 18000

#LGL bin path
LGL = ../LGL/Java/jar/ImageMaker.jar

big:
	java \
	-Xms20G -Xmx20G \
	-jar \
	$(LGL) \
	$(XY) \
	$(XY) \
	1069646562.lgl \
	1069646562.2D.coords  \
	-c ./1069646562.edgecolors


clean:
	rm *.png
