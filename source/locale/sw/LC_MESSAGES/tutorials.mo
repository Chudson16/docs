��    `                      �     A   �     �  2     �  K  �   	  q   �	  %  B
  ;   h  �   �     Y  �  p  �       �      �  �  �  ,  �  !   �  !     �   >     �  �     �   �  �   .  "   �  G   �  �   @  X     �   i  l    ]   x  �   �  �   m  �   -  �          �   b   �      !  M  )!  �   w"  �  B#  V  1%  �   �&  G   K'  B  �'  �   �)    �*  �   �,  J   �-     �-  �   �-  "   �.  �  �.  E   Y0  L  �0  �  �1    �3  .   �4     �4  �   �4  S   �5  +  �5    7  �   39  1  :  �   3;  n   	<  �   x<  �   =  	   �=  5   �=      >  %   ->  h   S>  q   �>  H   .?  R   w?  c   �?     .@  �   N@  �   A  �   �A  �  *B  �   D  R   �D  �   OE  �   *F  �   �F  d   VG  �   �G  �   �H  �   I  B   �I  �   J  L  �J  �  N  �   �O  B   �P     �P  +   �P  �  Q  �   �R  L   �S  0  �S  7   U  �   KU     �U    V  �  �X     =Z  "   YZ  �  |Z    '\  #   8^  "   \^  �   ^     <_  �  M_  �   �`  �   aa     �a  >   b  �   Ub  X    c  �   yc  ^  d  b   df  �   �f  �   Xg  �   h  �   �h     bi  ^   ki     �i  E  �i  �   'k  �  �k  [  �m  �   o  :   �o    p  �   r  �  �r  �   �t  ?   Ku     �u  �   �u  '   Iv  �  qv  /   x  #  Cx  �  gy    �z  7   |     C|  �   H|  E   }    N}    ]~  �   s�  '  D�  �   l�  c   1�  �   ��  �   �     Մ  5   ڄ     �  +   �  \   K�  �   ��  O   8�  J   ��  _   ӆ     3�  �   I�  �   �  w   �  �  ��  �   �  Q   ��  �   �  �   �  z   ��  _   �  �   b�  �   9�  �   ˏ  E   r�  �   ��  �  m�   *Bowling effect on point cloud over 13,000+ image dataset collected by World Bank Tanzania over the flood prone Msimbasi Basin, Dar es Salaam, Tanzania.* A few simple commands can make our docker experience much better. Accessing logs on the instance After it finishes (assuming you survive that long) Alternately you can use GNU screen to launch the process from a screen session which won’t stop if your connection is interrupted; launch ``screen``, and use ``<ctrl> a <ctrl> d`` to detach, ``screen -r`` to re-attach. But using screen won’t get you a log file of all of the console output unless you do something specific to capture that, while nohup gives you a file with all of the console output, including error messages, for free. Alternatively, the following experimental method can be applied: fly with much lower overlap, but two *crossgrid* flights (sometimes called crosshatch) separated by 20° with a 5° forward facing camera. As soon as processing is done, shut down the machine and resize it back down to the inexpensive minimum capacity. As this approach to flying can be take longer than typical flights, a pilot or team can fly a small area using the above approach. OpenDroneMap will generate a calibration file called cameras.json that then can be imported to be used to calibrate another flight that is more efficiently flown. Below you will find instructions for some common use cases. By default ODM does not create DEMs. To create a digital terrain model, make sure to pass the ``--dtm`` flag. To create a digital surface model, be sure to pass the ``--dsm`` flag. Calibrating the Camera Camera calibration is a special challenge with commodity cameras. Temperature changes, vibrations, focus, and other factors can affect the derived parameters with substantial effects on resulting data. Automatic or self calibration is possible and desirable with drone flights, but depending on the flight pattern, automatic calibration may not remove all distortion from the resulting products. James and Robson (2014) in their paper `Mitigating systematic error in topographic models derived from UAV and ground‐based image networks <https://onlinelibrary.wiley.com/doi/full/10.1002/esp.3609>`_ address how to minimize the distortion from self-calibration. Changing these options can affect the result of DTMs significantly. The best source to read to understand how the parameters affect the output is to read the original paper `An improved simple morphological filter for the terrain classification of airborne LIDAR data <https://www.researchgate.net/publication/258333806_An_Improved_Simple_Morphological_Filter_for_the_Terrain_Classification_of_Airborne_LIDAR_Data>`_ (PDF freely available). Cleaning up after Docker Command line access to instances Create a Digital Ocean droplet with at least 4GB of RAM. That’ll cost about $20/month. Less than 4GB of RAM and the install will probably fail. When we actually run the ODM process we’ll resize it to a much larger—and more expensive—cloud machine, but between runs you can downsize it between runs to the second-cheapest droplet which costs only $10/month (the cheapest droplet, at $5/month, comes with such a small drive that you can’t downsize back to it). Create a user with sudo privileges. `Digital Ocean’s insanely good documentation <https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-18-04>`__ can help you figure this out. In our case we set up a user called ``odm``, so connecting to it is via the command ``ssh odm@xxx.xxx.xxx.xxx`` (where the x’s stand for the IPv4 address of your server). If you want to follow this example closely, *do* use the username ``odm``; then your install path will be ``/home/odm/ODM/`` and will match all of the examples in this document. Creating Digital Elevation Models Creating High Quality Orthophotos Crossgrid overlap percentages can be lower than parallel flights. To get good 3D results, you will require 68% overlap and sidelap for an equivalent 83% overlap and sidelap. Directory structure Docker has a lamentable use of space and by default does not clean up excess data and machines when processes are complete. This can be advantageous if we need to access a process that has since terminated, but carries the burden of using increasing amounts of storage over time. Maciej Łebkowski has an `excellent overview of how to manage excess disk usage in docker <https://lebkowski.name/docker-volumes/>`_. Download and install ODM on it from the `ODM Github <https://github.com/OpenDroneMap/ODM>`__ (regular, not WebODM) with the following commands: Download using scp: ``scp odm@xxx.xxx.xxx.xxx:/mnt/odmdata/myproject/odm_orthophoto/odm_orthophoto.tif`` (or grab the compressed version you created in the last step) Example of how to generate a DTM:: Follow the progress using tail (so that you’ll know when it’s done) For DTM generation, a Simple Morphological Filter (smrf) is used to classify points in ground vs. non-ground and only the ground points are used. The ``smrf`` filter can be controlled via several parameters: From James and Robson (2014), `CC BY 4.0 <https://creativecommons.org/licenses/by/4.0>`_ Go ahead and execute ``sudo apt update`` and ``sudo apt upgrade`` to ensure your server isn’t dangerously without updates. Make sure to stay with Ubuntu 18.04. Here we present a tricky but workable process to create an OpenDroneMap cloud machine (*not* CloudODM, mind you, just a cloud-based instance of ODM that you run from the command line) and use it to remotely process large photo sets. It requires familiarity with Unix command line use, ssh, a Digital Ocean account (Amazon AWS would work as well, possibly with slight differences in the setup), and a moderate level of general computer literacy. If you aren’t fairly computer-savvy and willing to fuss with a slightly tricky setup, `CloudODM <https://www.opendronemap.org/cloudodm/>`__ is what you should be looking at. If we want to see machines that may not be running but still exist, we can add the `-a` flag: If you do this from the default home folder of your user (i.e. ``odm``) the path to the install will be ``/home/odm/ODM`` (abbreviated as ``~/ODM/``). If you want to save download bandwidth, you can compress the orthophoto using GDAL. Don’t add overviews, do that on your local machine to avoid making the file bigger before downloading it. In order to prevent a crash wherein the split-merge process fails to locate its own executable, we add the following lines to ``~/.bashrc`` (adjust paths if you’ve set things up differently from our example): Individual project directories, i.e. ``/mnt/odmdata/myproject/`` contain the gcp_list.txt file, the image_groups.txt file, and the images folder for each project``\` Install Launch the ODM process via ssh using nohup (so that if you’re cut off, processing will continue) Listing Docker Machines Modify settings.yaml to specify the parent directory of the project folder (in this case the Volume we created, ``/mnt/odmdata/``). Make sure the images are in the correct spot, i.e. ``/mnt/odmdata/myproject/images`` and the other ancillary files (gcp_list.txt and image_groups.txt) are in the root folder ``/mnt/odmdata/myproject/`` Note that the ODM github readme contains a slight error, the install directory name will be ODM, not OpenDroneMap (you’ll see this if you compare the above instructions to the ones on the ODM GitHub). Note that this assumes you have an image_groups.txt file. If not, this ``-split-overlap 0`` will probably fuck things up, and the ``--split 1`` is literally a random number that will be ignored after the image_groups.txt file is loaded (I think it normally controls how many groups it splits a set of images into, but in our case we’re assuming the images are already grouped sensibly). If you don’t have a large dataset (>1000 images), omit the ``--split`` and ``--split-overlap`` options. Note: as of 2020-03 the normal incantation ``python run.py -i /path/to/image/folder project_name`` seems *not* to work; the ``-i`` or ``--image`` parameter causes a weird error. So we drop the -i parameter, and rely on the project directory line in the settings.yaml file to direct ODM to the right place. Now using (including a split-merge): Now push your images onto the server. You can use `Secure Copy (scp) <https://en.wikipedia.org/wiki/Secure_copy>`__ like so: ``scp -r /path/to/my/imagefolder odm@xxx.xxx.xxx.xxx:/mnt/odmdata/``. Now we are logged into our docker instance and can explore the machine. Now you’ll need a second cloud hard drive (a “Volume” in Digital Ocean jargon) big enough to manage your project. Rule of thumb seems to be 10 times the size of your raw image set; we’ve got a 100GB image set and set up a 1000GB volume (once the run is done you should be able to get rid of most of this expensive drive capacity, but it’s needed to complete the process). Set up the volume, attach it to your droplet, and `configure its mount point <https://www.digitalocean.com/docs/volumes/how-to/mount/>`__ (in this example we’re setting it to ``/mnt/odmdata/``). ODM requires the directories on the machine to be set up just so. The critical bits are the install folder (if you installed as above, it’s ``/home/odm/ODM/``) and the project folder (i.e. ``/mnt/odmdata/myproject/``) ODM’s settings.yaml file specifies a single parent directory containing all projects. This is what goes in the project path line of the settings.yaml file (slightly confusingly, this is actually the *parent* directory of the individual project directories, which are specified by the project name parameter when calling ODM). Edit settings.yaml and set the project_path parameter to (as per our example setup) ``/mnt/odmdata/``, which in this case points to the Volume we created. Individual project directories are created within that. Once you get the file on your local computer, you can use QGIS to add overviews (“pyramids”) or use the GDAL command ``gdaladdo -r average /path/to/image.tif 2 4 8 16 32 64 128 256 512 1024``. Overall the ``--smrf-threshold`` option has the biggest impact on results. Prep data and project Pressing `Enter` or `Space`, arrow keys or `Page Up` or `Page Down` keys will now help us navigate through the logs. The lower case letter `Q` will let us escape back to the command line. Resize droplet, pull pin, run away SMRF is good at avoiding Type I errors (small number of ground points mistakenly classified as non-ground) but only "acceptable" at avoiding Type II errors (large number non-ground points mistakenly classified as ground). This needs to be taken in consideration when generating DTMs that are meant to be used visually, since objects mistaken for ground look like artifacts in the final DTM. Should be an Ubuntu 18.04 instance to ensure dependency compatibility Shut down and resize your machine to an appropriately monstrous number of CPUs and amount of memory. I use the memory-optimized machine with 24 dedicated vCPUs and 192GB of RAM (which costs about $1.60/hr—which adds up fast, it’s over $1000/month). Restart, and get to work quickly so as not to waste expensive big-droplet time. Since many users employ docker to deploy OpenDroneMap, it can be useful to understand some basic commands in order to interrogate the docker instances when things go wrong, or we are curious about what is happening. Docker is a containerized environment intended, among other things, to make it easier to deploy software independent of the local environment. In this way, it is similar to virtual machines. Sometimes we need to go a little deeper in our exploration of the process for OpenDroneMap. For this, we can get direct command line access to the machines. For this, we can use `docker exec` to execute a `bash` command line shell in the machine of interest as follows: Start the machine back up, and log in via ssh. Steps The images folder, i.e. ``/mnt/odmdata/myproject/images/`` contains all of the images. If you set it up like this, the images don’t get re-copied because they’re already in the directory that ODM wants them in. The value `-5` tells the tail command to give us just the last 5 lines of the logs. The whole process is mostly targeted at someone flying substantial missions in an African or similar location looking to process data ASAP while still in a field setting. Therefore it emphasizes a workflow intended to reduce bandwidth/data transfer, rather than just the simplest way of running ODM. There are some environmental variables that need to be set. Open the ~/.bashrc file on your machine and add the following 3 lines at the end (From `the ODM github <https://github.com/OpenDroneMap/ODM>`__). The file can be opened with ``nano ~/.bashrc`` (or whatever text editor you use in lieu of nano). Be sure to replace ``/home/odm/`` with the correct path to the location where you extracted OpenDroneMap if you didn’t do everything exactly as in our example (for example if you used a different username in your server setup): This is likely to be unwieldy large, but we can use a pipe `|` character and other tools to extract just what we need from the logs. For example we can move through the log slowly using the `more` command: This points ODM at the folder (in this example) ``/mnt/odmdata/myproject/``. Provided the image_groups.txt and gcp_list.txt are in this folder, the images are in ``/mnt/odmdata/myproject/images/``, and the project path in settings.yaml is ``/mnt/odmdata/`` it will not waste time and space copying images. This pushes the entire folder full of images (that’s what the ``-r`` option does, “recursive”) into the remote location (in our example, into the volume we attached to the cloud machine at ``/mnt/odmdata/``. This will take some bandwidth. No way around the size of the files.\ `1 <#footnote1>`__, \ `2 <#footnote2>`__\ To get good 2D and 2.5D (digital elevation model) results, you will require 42% overlap and sidelap for an equivalent 70% overlap and sidelap. To mitigate this effect, there are a few options but the simplest are as follows: fly two patterns separated by 20°, and rather than having a nadir (straight down pointing) camera, use one that tilts forward by 5°. Tutorials Two other important parameters affect DEM generation: Using Docker Using ODM from low-bandwidth location Using either the `CONTAINER ID` or the name, we can access any logs available on the machine as follows: Vertically separated flight lines also improve accuracy, but less so than a camera that is forward facing by 5°. Via `Ivan Gayton's repo <https://github.com/ivangayton/GDAL_scripts/>`_. We can also extract just the end of the logs using the `tail` commmand as follows: We can start by listing available docker machines on the current machine we are running as follows: What is this and who is it for? Without any parameter tweaks, ODM chooses a good compromise between quality, speed and memory usage. If you want to get higher quality results, you need to tweak some parameters: You can archive the odm_texturing, odm_georeferencing, and odm-dem folders using tar to make them easier to download in one piece (and maybe smaller). You may want to keep an eye on htop (to get a sense of the resource usage so that in future you can only spin up a machine as large as necessary) `OpenDroneMap <https://www.opendronemap.org/>`__ can’t always be effectively set up locally—it takes a fairly powerful machine to process large datasets—so a cloud machine can sometimes be the answer for people in the field. However, bandwidth is a problem in many low-income settings. This constraint can’t be solved completely, but the following method does a reasonable job of reducing the bandwidth needed to process drone imagery datasets on the cloud from African locations. ``--dem-gapfill-steps`` which determines the number of progressive DEM layers to use. For urban scenes increasing this value to `4-5` can help produce better interpolation results in the areas that are left empty by the SMRF filter. ``--dem-resolution`` which sets the output resolution of the DEM raster (cm/pixel) ``--ignore-gsd`` is a flag that instructs ODM to skip certain memory and speed optimizations that directly affect the orthophoto. Using this flag will increase runtime and memory usage, but may produce sharper results. ``--mesh-size`` should be increased to ``300000-600000`` and ``--mesh-octree-depth`` should be increased to ``10-11`` in urban areas to recreate better buildings / roofs. ``--orthophoto-resolution`` is the resolution of the orthophoto in cm/pixel. Decrease this value for a higher resolution result. ``--smrf-scalar`` scaling value. Increase this parameter for terrains with lots of height variation. ``--smrf-slope`` slope parameter, which is a measure of "slope tolerance". Increase this parameter for terrains with lots of height variation. Should be set to something higher than 0.1 and not higher than 1.2. ``--smrf-threshold`` elevation threshold. Set this parameter to the minimum height (in meters) that you expect non-ground objects to be. ``--smrf-window`` window radius parameter (in meters) that corresponds to the size of the largest feature (building, trees, etc.) to be removed. Should be set to a value higher than 10. ``--texturing-data-term`` should be set to `area` in forest areas. ``--texturing-nadir-weight`` should be increased to ``29-32`` in urban areas to reconstruct better edges of roofs. It should be decreased to ``0-6`` in grassy / flat areas. if you have the images in separate folders for individual AOI blocks or flights (which you will if your flight management was organized), you can create an image_groups.txt file with the incantations ``for i in *; do cd $i; for j in *; do echo "$j $i" >> ../$i.txt; done; cd ../; done;`` and ``cd ../``, ``for i in myproject/*.txt; do cat $i >> image_groups.txt; done;``. That should create a file with the correct structure: a list of all image files and a “group name” after each one (which in this case will simply be the name of the folder it came from). Then move all of the image files into a single directory called images in the project root dir (so ``/mnt/odmdata/myproject/images/``). The image_groups.txt file will allow ODM to keep track of which images belong to the same batch, even though they’re all in a single directory. Project-Id-Version: OpenDroneMap 2.4.7
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-03-17 15:56-0400
PO-Revision-Date: 2020-07-21 21:10+0000
Last-Translator: danbjoseph <danbjoseph@gmail.com>, 2020
Language: sw
Language-Team: Swahili (https://www.transifex.com/americanredcross/teams/111882/sw/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 *Athatri za shimo katika point cloud kwa makundi ya picha zaidi ya 13,000 zilizokusanywa na benki ya dunia katika eneo la mafuriko Msimbasi Basin, Dar es Salaam, Tanzania.* Comand chache rahisi zinaweza kufanya docker yetu kwa nzuri zaidi. Tumia logs kwenye instance Baada kumaliza (kisia utachukua mda mkubwa) Badala ya kutumia kioo cha GNU kuzindua mchakato kutoka kwenye kioo ambayo haitasimama hana mawasiliano yakikatika; Zindua ``screen``, na tumia ``<ctrl> a <ctrl> d`` kwenye detach, ``screen -r`` hadi re-attach. Lakini kutumia haitakupa file la log ya muonekano wa console isipokuwa utafanya kitu maalum kusanifu hili, ikiwa nohup itakupa file pamoja na muonekano wote wa console, ikiwemo ujumbe wa makosa, bure. Vyenginevyo, njia za majaribio yafuatayo zinaweza kutumika: rusha drone kwa kupishanisha picha kidogo, lakini miruko crossgrid miwili (wakati mwengine huitwa crosshatch) iliotenganishwa kwa 20° na 5° moja kwa moja ikiangalia camera. Mara tu processing ikimaliza, zima mashine na rudisha chini kwa uwezo mdogo. Kama itafikia kuruka drone itachukua muda mrefu kuliko kuruka kwa kawaida, rubani au kikundi kinaweza kurusha drone kwa kumia njia hio hapo juu. OpenDroneMap itatengeneza file lilorekebishwa linaloitwa cameras.json ambayo baadae itachukuliwa kutumika kwa mruko mwengine, itakua ni mruko wa ufanisi zaidi. Hapo chini utapata maelezo kwa baadhi ya mifano muhimu. Chaguo msingi ODM haitengenezi DEMs. Kutengeneza digital terrain model, hakikisha unatumia ``--dtm`` flag. Kutengeneza digital surface model, hakikisha unatumia ``--dsm`` flag. Kurekebisha Camera Kurekebisha Camera ni changamoto maalum pamoja na thamani ya camera. mabadiliko ya hali joto, mtetemeko, muelekeo, na na vitu vyengine vinavyoweza kuathiri data itakayopatikana. Automatic au matengenezo binafsi yanaweza kufanywa na kutakiwa na drone ukiruka, lakini inategemea na njia itakayopita ndege, marekebisho ya automatic haiwezi kuondosha njia zote kutoka mwanzo. James and Robson (2014) katika kitabu chao `Mitigating systematic error in topographic models derived from UAV and ground‐based image networks <https://onlinelibrary.wiley.com/doi/full/10.1002/esp.3609>`_ imeonyesha jinsi kupunguza makosa kweye marekebisho binafsi. Kubadilisha njia hizi kunaweza kubadilisha maana ya matokeo ya DTM. Mwanzo mzuri kusoma kwa kufahamu vipi paramita zinabadilisha matokeo ni kusoma pepa ya awali  `An improved simple morphological filter for the terrain classification of airborne LIDAR data <https://www.researchgate.net/publication/258333806_An_Improved_Simple_Morphological_Filter_for_the_Terrain_Classification_of_Airborne_LIDAR_Data>`_ (Inapatikana bure PDF). Safisha juu baada ya Docker Matumizy ya camand line kwa mifano Tengeneza Digital Ocean droplet yenye ukubwa angalau 4GB ya RAM. Ambayo makisio gharama ni $20/mwezi, chini ya 4GB na haitakubali kuingia. Wakati ukiwasha ODM process tutapunguza kuwa ukubwa na cloud mashine ya gharama, Lakini wakati ikitumika unaweza kupunguza kwa droplet ya pili rahisi zaidi ambayo ina gharama ya $10/mwezi (ni droplet rahisi zaidi, at $5/mwezi , utatumia kwa nafasi ndogo ambayo huwezi kuirudisha mwanzo). Tengeneza mtumiaji kwa sudo privileges" `Digital Ocean’s insanely good documentation <https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-18-04>`__ itasaidia kujua. Katika kesi yetu tutaandaa mtumiaji aneitwa ``odm``, unganisha na kupitia camand ``ssh odm@xxx.xxx.xxx.xxx`` ( ambapo x's ina maana IPv4 anuani katika server yako). Ikiwa unataka kufata huu mfano kwa karibu , *do* tumia tumia jina ``odm``; kisha path yako itakuwa ``/home/odm/ODM/`` na itafanana na mifano yote katika kitabu hichi. Kutengeneza Digital Elevation Model Tengeneza Orthophotos ya kitaalamu Crossgrid asilimia za kupishana zinaweza kuwa ndogo kuliko flight sambamba. Kwa kupata matukio mazuri ya 3D, utatakiwa 68% za kupishana na ubavuni kushabihiana na 83% kupishana na ubavuni. Muundo wa Anuani Docker haina msaada kutumia nafasi na kawaida haiondoi kufanya kazi data na mashine mchakato ukimaliza. Hii inaweza kuwa faida ikiwa tunahitaji kutumia mchakato ambao ulikatika, lakini unachukua matatizo ya kuengeza matumizi ya nafasi kwa mda. Maciej Łebkowski ana `mtazamo mzuri ya vipi kuongoza kutumia nafasi iliotumika kutumia ndani ya docker <https://lebkowski.name/docker-volumes/>`_. Pakua na uingize ODM ndani yake kutoka `ODM GitHub <https://github.com/OpenDroneMap/ODM>`__ (regular, not WebODM) kutumia camand zifuatazo: Pakua tumia scp: ``scp odm@xxx.xxx.xxx.xxx:/mnt/odmdata/myproject/odm_orthophoto/odm_orthophoto.tif`` (au chukua compressed version uliotengeneza mwisho) Mfano wa kutengeneza DEM:: Fuata muoendelezo kwa kutumia tail (ili uweze kujua ikimaliza) Kizazi cha DTM, Simple Morphological Filter (smrf) inatumika kugawa point katika ground na non-ground pia ground point pekee inatumika. Ni ``smrf`` kichujo kinaweza kidhibitiwa kutumia mihimili tofauti: Kutoka James na Robson (2014),`CC BY 4.0 <https://creativecommons.org/licenses/by/4.0>`_ Nenda kutumia ``sudo apt update`` na ``sudo apt upgrade`` kuhakikisha server sio hatari wila kuapdate, lakini endelea kutumia Ubuntu 18.04. Hapa tutawakilisha wepesi lakini mchakato unaofanya kazi wa kutengeneza OpenDroneMap cloud mashine (*sio* CloudODM, kumbuka, ni cloud-based instance ya ODM ambayo unaweza kutumia kutoka kwa camand line) na tumia kuprocess kundi picha nyingi ukiwa mbali. Inahitaji ujuzi wa matumizi ya Unix camand line, ssh, Digital Ocean account (Amazon AWS inafanya kazi pia, inawezekana ni tofauti ndogo katika mpangilio), njia ya kati na kati ya usomaji Computer kwa ujumla. Ikiwa huna computer nzuri na unataka kutumia njia ya slightly setup, `CloudODM <https://www.opendronemap.org/cloudodm/>`__ ni lazima kuiangalia. Ikiwa tunataka kuona mashine ambayo haifanyi kazi lakini docker inapatikana, tunaingiza `-a` flag: Ikiwa utafanya hivi kuanzia kawaida home folder ya user yako (i.e ``odm``) sehemu ya kuingiza itakua ``/home/odm/ODM`` (kiufupikama ``~/ODM/``). Ikiwa unataka kuhifadhi nafasi uliopakua, unaweza compress orthophoto kutumia GDAL. Usiingize muonekano, fanya hivyo kwenye computer yako kuepusha kufanya file kuwa kubwa kabla ya kupakua. Kwa ajili ya kuepusha kutofanya kazi ikiwa split-merge itakataa kuonesha file lake, tunaengeza mistari ifuatayo kwa ``~/.bashrc`` ( weka sawa kama uliweka tofauti na mfano wetu): Anuani ya project husika, i.e ``/mnt/odmdata/myproject/`` imekusanya gcp_list.txt file, image_groups.txt file, na na folder la picha kwa kila project``\` Kuingiza Zindua mchakato wa ODM kupitia ssh kutumia nohup (kwa hiyo ikiwa utaikata, mchakato utakatika) Kutumia Docker mashine Badilisha settings.yaml kurahisisha anuani kuu ya file project (katika kesi kama hii nafasi tuliotengeneza, ``/mnt/odmdata/``). Hakikisha picha zipo katika sehemu husika, i.e ``/mnt/odmdata/myproject/images`` na mafile mengine ya ziada (gcp_list.txt and image_groups.txt) imo katika semu ya folder ``/mnt/odmdata/myproject/`` Zingatia kwamba ODM github readme imekusanya makosa mepesi, ingiza anuani jina itakuwa ODM, sio OpenDroneMap (utaona hiyvo ukiwa utalinganisha na maeleza hapo juu kwa moja ndani ya ODM GitHub). Zingatia kwamba unakisia utakua na file image_groups.txt. Ukikosa hilo``-split-overlap 0`` litaleta athari, na ``--split l`` bila shaka mchanganyiko halisi wa namba utakataliwa baada ya image_groups.txt file kuonekana (Nafikiria ni kawaida kuzuiya makundi mangapiyatavunjwa kwa seti ya picha ndani yake, lakini kwa kesi yetu tunajaaliapicha zishapangwa kwa uweledi). Ikiwa huna data seti nyingi (>1000 picha). Acha kuchagua ``--split`` na ``--split-overlap``. Zingatia kama 2020-03 maneno ya kawaida ``python run.py -i /path/to/image/folder project_name`` seems *not* to work; the ``-i`` or ``--image`` parameter inasababisha kosa la ajabu. Kwa hio tunafuta -i paramiter, na kutegemea mstari wa anuani ya project katika folder settings.yaml kuongoza ODM katika nafsi husika.Sasa tumia (ikiwemo split-merge): Sasa peleka picha zako ndani ya server. Unaweza kutumia `Secure Copy (scp) <https://en.wikipedia.org/wiki/Secure_copy>`__ Mfano: ``scp -r /path/to/my/imagefolder odm@xxx.xxx.xxx.xxx:/mnt/odmdata/``. Sasa tumeingia ndani ya kundi docker na mashine itaonesha. Sasa utahitaji hard drive ya pili ("nafasi" katika Digital Ocean jargon) inatosha kutengeneza project yako. Sheria ya thumb inaonesha kuwa mara 10 ya nafasi ya data picha, tumepata 100GB hadi kufikia ukubwa wa 1000GB (ukimaliza kurun unaweza kusafisha nafasi kubwa , lakini inahitajika kumaliza mchakato wote). Panga hadi nafasi ikifika, weka katika droplet yako, na `configure hio nafasi uitakayo <https://www.digitalocean.com/docs/volumes/how-to/mount/>`__ (katika mfano huu tunapanga ndani ya ``/mnt/odmdata/``). ODM inahitaji kuandaliwa nafasi ya orodha ndani ya mshine. Nafasi ngumu ni kuingiza folder (Ikiwa utahifadhi kama hapo juu ni "``/home/odm/ODM/``) na folder la project (i.e. ``/mnt/odmdata/myproject/``) ODM settings.yaml file inaonesha anuani kuu iliokusanya project yote. Hivi ndivyo ilivyo katika msatari wa anuani project settings.yaml file (inachanganya kidogo, hii ni anuani yenyewe *parent* ya anuani ya kila project, ambayo ataoneshwa na jina la project ukiita ODM). hariri settings.yaml na weka ``/mnt/odmdata/``, ambayo katika kesi hii katika nafasi tuliotengeneza. Anuani ya project husika imetengenezwa na hilo. Mara tu ukipata file kwenye computer yako, unaweza kuumia QGIS kuingiza muonekano (“pyramids”) au tumia GDAL command ``gdaladdo -r average /path/to/image.tif 2 4 8 16 32 64 128 256 512 1024``. Majumuisho ya njia ``smrf-threshold`` yanaleta matokeo makubwa. Kuandaa data na project Kubonyeza `Enter` or `Space`, arrow key au `Page Up` or `Page Down` key itatusaidia kuelekeza kupitia log. Herufu ndogo ya `Q` itaturejesha nyuma kwenye comand line. Kubadilisha droplet, kuvuta pini, pekua SMRF ni nzuri kwa kupunguza makosa ya uwandishi (nambari ndogo ya makosa ya groundpoint imegawanywa kama non-ground) lakini \"acceptable\" pekee kuepuka makosa Type II (nambari kubwa ya non grond point kimakosa imegaiwa kama ground). Mahitaji haya yanachukuwa kwa uwangalifu wakati inatengenezwa DTM ambayo ilikusudiwa kutumika kuonekana, tangu makosa ya kitu kwa muonekano wa ground mfano mdogo katika DTM ya mwisho. Lazima Ubuntu 18.04 instance kuhakikisha uwiano Zima na badilisha mashine yako kwa mpangilio maalum wa CPU na lkiasi cha kumbukumbu. Natumia memory-optimized mashine kiasi 24 vCPUs na 192GB ya RAM (ghara yake ni kiasi $1.60/hr ambayo itaengeza haraka, ni juu $1000/mwezi). Washa upya na fanya kazi kwa haraka ili usipoteze mda big-droplet. Tangu watumiaji wengi kutumia docker kuingiza OpenDroneMap itakua ni vizuri kufanhamu camandi za msingi kuitathmini mifano ya docker wakati ikitokea makosa, au tukiwa na wasiwasi wa matokeo. Docker ni mkusanyiko wa muonekano uliopangwa, miongoni mwa vitu vyengine kufanya urahisi wa kuingiza software kwa kujitegemea kwenye mazingira ya nyumbani. Kwa njia hii ni sawa na virtual mashine. Baadhi ya wakati tunataka kuenda ndani kidogo katika mchakato wa utafiti wa OpenDroneMap. Kwa hilitunaweza kupata kutumia mistari ya camand moja kwa moja kwenye mashine. Kwa hili, tunawza kutumia `docker exec` kufikia na camand line `bash` muonekano ndani ya mashine kwa umuhimu ufuatao: Washa mashine ya kuhifadhi, na ingia ndani kutumia ssh. Njia Folder la picha, i.e ``/mnt/odmdata/myproject/images/`` linakuwa na picha zote. Ikiwa utarekebisha kama hivi, picha hazitakopiwa tena kwa sababu tayari zipo kwenye anuani ambayo ODM inaitaka. Nambari `-5` inaiambia tail camand kutupa mistari 5 ya mwisho ya log. Mchakato wote huo umekusudiwa kwa mtu anerusha ndege nyuki eneo kubwa ndani ya Afrika au eneo linalofanana kutaka kuprocess data haraka wakati yupo eneo la kazi. Kwa hio itasaidia kazi iliopangwa kwa kupunguza nafasi/ kusafirisha data, kuliko njia rahisi ya kutumia ODM. Kuna baadhi ya kibadilika mazingira zinatakiwa kuwekwa. Fungua ~/.bashrc file katika mashine yako na uingize mistari 3 ifuatayo mwisho (From `the ODM github <https://github.com/OpenDroneMap/ODM>`__). File linaweza kufunguka pamoja na ``nano ~/.bashrc`` (au katika programu unayochapa ndani lieu of nano). Kuwa na ukahika kuweka ``/home/odm/`` kwa anuani sahihi hadi katika eneo ambayo itaichambua OpenDroneMap ikiwa hukufanya kila kitu kwa uhakika kama kwenye mfano wetu (Mfano ukitumia jina la mtumiaji katika mipangilio ya server). Hii inategemewa kuwa kubwa, lakini tunaweza kutumia pipe `|` character na tools nyengine kuondosha kile tunachotaka kutoka kwenye log. Kwa mfano tunaweza kuondosha kupitia log kidogo kwa kutumia more command. Alama ODM katika folder (kwa Mfano) ``/mnt/odmdata/myproject/``. Kutoa image_groups.txt na gcp_list.txt zinapatikana ndani ya folder, picha zinapatikana ``/mnt/odmdata/myproject/images/``, na anuani project ndani ya settings.yaml ni ``/mnt/odmdata/`` haitapoteza muda na nafasi ya kukupia picha. Hii inapelekea folder lilojaa picha (ambayo itafanya njia ``r``, "recursive") ndani ya eneo lililoondolewa ( Katika mfano wetu, ndani ya nafasi tulioweka katika cloud mashine ya ``/mnt/odmdata/``. Hii itachukua nafasi. Hakuna njia katika ukubwa wa file.\ `1 <#footnote1>`__, \ `2 <#footnote2>`__\ Kupata matokeo ya 2D na 2.5D (digital elevation model), unatakiwa 42% mpishano na msimamo kwa mshabihiano 70% overlap na sidelap. Kupunguza athari,kuna njia kidogo lakini njia rahisi ni kama: rusha njia mbili tofauti kwa 20°, kuliko kutumia nadir kamera (kuelekeza pont chini), tumia ambayo itainamisha camera kwa 5°. Somo Paramita nyengine mbili zinabadilisha kizazi cha DEM: Kutumia Docker Tumia ODM kutoka eneo lenye  low-bandwidth  Au tumia `CONTAINER ID` au jina, tunamia logs pekee inapatika kwenye mashine kama ifuatavyo: Mistari ya kusimama iliyopishana ya njia ya kupitisha ndege pia inaongeza usahihi, lakini kidogo kwa hiyo camera iangalie moja kwa moja na 5°. Kutoka kwa `Ivan Gayton's repo <https://github.com/ivangayton/GDAL_scripts/>`_. Tunaweza kuondosha mwisho wa log kwa kutumia `tail` camand kama ifuatavyo: Tunaweza kuanza kwa kusikiliza docker zilizopo katika mashine ulionayo tunaanza kama ifuatavyo: Nini hiki na kwa nani Bila ya kuengeza paramiter, ODM inachagua nzuri baina ya ubora, kasi na nafasi ya kutumia. Ikiwa unataka kupata matokeo bora zaidi, utadadafua baadhi ya paramiter: Unaweza kuhifadhi odm_texturing, odm_georeferencing, na odm-dem Mafile tumia tar kwa urahisi wa kupakua kwa sehemu moja (na pengine ndogo zaidi). Unaweza kuangalia htop (ili kupata kujua matumizi uliotumia kwa maana siku za usoni unaweza kuongeza ukubwa wa mashine) `OpenDroneMap <https://www.opendronemap.org/>`__ haiwezi kuwa kawada kuingizwa local inataka mashine yenye nguvu kwa mchakato wa data nyingi—kwa hivyo cloud mashine inaweza baadhi ya wakati kujibu kwa watu wanotaka kutumia. Hata hivyo nafasi ni tatizo kwa marekebisho ya kiwango cha chini. Kizuwizi hiki hakiwezi kuondoa tatizo moja kwa moja, bali njia zifuatazo zinaweza kuwa sababu za kupunguza mahitaji ya nafasi kwa kuchakata picha za ndege nyuki katika claud kutoka maeneo ya Afrika. ``--dem-gapfill-steps`` inayotambua namba ya maendeleo ya matabaka ya DEM kutumika. Katika maeneo ya miji engeza idadi hii hadi `4-5` inaweza kusaidia kutoa matokeo katika eneo lililoachwa wazi kwa SMRF mchujo. ``--dem-resolution`` ambayo inaseti muonekano wa matokeo ya rasta DEM  (cm/pixel) ``--ignore-gsd`` ni bendera inayoagiza ODM kuacha nafasi na kasi ya matumaini ya kuathiri orthophoto. Kutumia hii bendera itaengeza uwezo wa kufanya kazi na matumizi ya nafasi, lakini yanaweza kuleta matokeo ya haraka. ``--mesh-size`` lazima iongezeke hadi ``300000-600000`` na ``--mesh-octree-depth`` lazima iongezeke hadi ``10-11`` mjini kwa kutengeneza upya majengo mazuri/ mapaa. ``--orthophoto-resolution`` ni muonekano wa orthophoto ndani ya cm/pixel. Kupunguza hii thamani kwa muonekano mzuri zaidi. ``--smrf-scalar`` kipimo halisi. engeza hii paramiter kwa terrain kwa badiliko la urefu mkubwa. ``--smrf-slope`` mteremko parameter, ambayo imepimwa kwa "slope tolerance". Increase inaengeza parameter kwa terrain kwa urefu mwingi variation. Lazima ipangwe kwa kitu kikubwa kuliko 0.1 na isiwe kubwa kuliko 1.2. ``--smrf-threshold`` elevation threshold. Weka hii parameter kwa kiwango cha chini cha urefu (cha mita) ambayo unategemea kuwa non-ground object. ``--smrf-window`` window radius paramita (ya mita) ambayo inashabihiana na ukubwa wa kitu (jengo, mti, n.k) kwa kuondolewa. lazima lipangwe nambari kubwa zaidi ya 10. ``--texturing-data-term`` lazima itegeshwe hadi `area` katika misitu. ``--texturing-nadir-weight`` lazima iongezeke hadi kufikia ``29-32`` kwa maeneo ya mjini ili kupata picha nzuri ya juu. Lazima ipunguzwe hadi ``0-6`` katika majani/ eneo tambarare. Ikiwa una picha katika mafolder tofauti kwa kila mabloki AOI au flight (ikiwa mpangilio wa flight zako utapangika) unaweza kutengeneza picha kwenye file image_groups.txt pamoja na ``for i in *; do cd $i; for j in *; do echo \"$j $i\" >> ../$i.txt; done; cd ../; done;`` and ``cd ../``, ``for i in myproject/*.txt; do cat $i >> image_groups.txt; done;``. Hio itatengenea file na "group name" baada kila moja (kwa kesi hii itakuwa rahisi kuandika jina la folder llkotoka). Kisha ondosha file zote za picha katika anuani moja inayoitwa images ndani ya anuani ya project dir (kwa ``/mnt/odmdata/myproject/images/``). file la image_groups.txt litaruhusu ODM kujua kila picha itokapo kutoka kundi moa,hata ikiwa zimetoka katika anuani moja. 