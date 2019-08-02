---
title: natverse packages
---



## Core natverse

<div class="package-section">
<div class="package-section-info">
  <p>The core natverse includes the packages that you're likely to use in analysis of neuroanatomical data. As of natverse x.x.x, the following packages are included in the core natverse:</p>
</div>

<div class="packages">

<div class="package">
  
  <img class="package-image" src="/images/hex-nat_logo.png" alt=""></img>
    <div class="package-info">
<h3><a href="https://github.com/natverse/nat/">nat</a></h3>


<p> 

NeuroAnatomy Toolbox (nat) enables analysis and visualisation of 3D biological image data, especially traced neurons.

</p>
      
<a href="https://github.com/natverse/nat/" aria-hidden="true">
        Learn more ...</a></p>
</div>
</div>
  
<div class="package">
    
<img class="package-image" src="/images/hex-natnblast.png" alt=""></img>
    <div class="package-info">
<h3><a href="https://github.com/jefferislab/nat.nblast/">nat.nblast</a></h3>
<p> 

Extends package 'nat' (NeuroAnatomy Toolbox) by providing a collection of NBLAST-related functions.

</p>

<a href="https://github.com/jefferislab/nat.nblast/" aria-hidden="true">Learn more ...</a></p>
      
</div>
</div>

<div class="package">
    
<img class="package-image" src="/images/hex-nattemplatebrains.png" alt=""></img>
    <div class="package-info">
<h3><a href="https://github.com/jefferislab/nat.templatebrains/">nat.templatebrains</a></h3>

<p> 

Extends package 'nat' (NeuroAnatomy Toolbox) by providing objects and functions for handling template brains.

</p>

 <a href="https://github.com/jefferislab/nat.templatebrains/" aria-hidden="true">Learn more ...</a></p>
      
</div>
</div>

<div class="package">
<img class="package-image" src="/images/hex-catmaid.png" alt=""></img>
    <div class="package-info">
<h3><a href="https://jefferis.github.io/rcatmaid/">rcatmaid</a></h3>

 <p> 

This package provide access to the API exposed by the CATMAID (C ollaborative A nnotation T oolkit for M assive A mounts of I mage D ata) web tool.

</p>
 <a href="https://jefferis.github.io/rcatmaid/" aria-hidden="true">Learn more ...</a></p>

</div>
</div>

<div class="package">
<img class="package-image" src="/images/hex-neurprintr.png" alt=""></img>
    <div class="package-info">
<h3><a href="https://jefferislab.github.io/neuprintr/">neurprintr</a></h3>

<p> 

Access to the neuprint connectome analysis service, including  functions to fetch skeletons, synapses and ROIs, query connectivity data and develop new low level queries.

</p>

<a href="https://jefferislab.github.io/neuprintr/" aria-hidden="true">Learn more ...</a></p>
    
</div>
</div>

<div class="package">
<img class="package-image" src="/images/hex-drvid.png" alt=""></img>
    <div class="package-info">
<h3><a href="https://jefferis.github.io/drvid/">drvid</a></h3>

<p> 

API access to the 'DVID' (Distributed, Versioned, Image-oriented  Dataservice).

</p>

<a href="https://jefferis.github.io/drvid/" aria-hidden="true">Learn more ...</a></p>

</div>
</div>

<div class="package">
<img class="package-image" src="/images/hex-neuromorphr.png" alt=""></img>
    <div class="package-info">
<h3><a href="https://jefferislab.github.io/neuromorphr/">neuromorphr</a></h3>

<p> 

Access to the NeuroMorpho.

</p>

<a href="https://jefferislab.github.io/neuromorphr/" aria-hidden="true">Learn more ...</a></p>

</div>

</div>

<div class="package">
<img class="package-image" src="/images/hex-elmr.png" alt=""></img>
    <div class="package-info">
<h3><a href="https://jefferis.github.io/elmr/">elmr</a></h3>

<p> 

Provides tools to move between adult brain EM and light level data, emphasising the interaction between the CATMAID web application and the R Neuroanatomy Toolbox package.

</p>


<a href="https://jefferis.github.io/elmr/" aria-hidden="true">Learn more ...</a></p>

</div>


</div>

<div class="package">
<img class="package-image" src="/images/hex-natflybrains.png" alt=""></img>
    <div class="package-info">
<h3><a href="https://jefferislab.github.io/nat.flybrains/">nat.flybrains</a></h3>

<p> 

Includes 3D brain surfaces, bridging and mirroring registrations, and neuropil segmentations for various template brains.

</p>


<a href="https://jefferislab.github.io/nat.flybrains/" aria-hidden="true">Learn more ...</a></p>

</div>


</div>

<div class="package">
<img class="package-image" src="/images/hex-flycircuit.png" alt=""></img>
    <div class="package-info">
<h3><a href="http://jefferis.github.io/flycircuit/">flycircuit</a></h3>

<p> 

This package contains a small number of functions specifically designed to assist in the spatial analysis of neurons from the collection available online at http://flycircuit.

</p>


<a href="http://jefferis.github.io/flycircuit/" aria-hidden="true">Learn more ...</a></p>

</div>

</div>

<div class="package">
<img class="package-image" src="/images/hex-nabor.png" alt=""></img>
    <div class="package-info">
<h3><a href="https://github.com/jefferis/nabor/">nabor</a></h3>

<p> 

An R wrapper for 'libnabo', an exact or approximate k nearest neighbour library which is optimised for low dimensional spaces (e.

</p>


<a href="https://github.com/jefferis/nabor/" aria-hidden="true">Learn more ...</a></p>

</div>






</div>
</div>
</div>

The natverse also includes many other packages with more specialised usage. They are not loaded automatically with `library(natverse)`, so you'll need to load each one with its own call to `library()`.


## External toolboxes
The following are the external toolboxes that play well with the `natverse`:
<div class="package-section">
<div class="package-section-info">
 
</div>

<div class="packages">

<div class="package">
  
  <img class="package-image" src="" alt=""></img>
    <div class="package-info">
<h3><a href="https://r-forge.r-project.org/projects/rgl/">rgl</a></h3>


<p> 

Provides medium to high level functions for 3D interactive graphics, including functions modelled on base graphics (plot3d(), etc.

</p>
      
<a href="https://r-forge.r-project.org/projects/rgl/" aria-hidden="true">
        Learn more ...</a></p>
</div>
</div>


<div class="package">
  
  <img class="package-image" src="" alt=""></img>
    <div class="package-info">
<h3><a href="https://igraph.org/r/">igraph</a></h3>


<p> 

Routines for simple graphs and network analysis.

</p>
      
<a href="https://igraph.org/r/" aria-hidden="true">
        Learn more ...</a></p>
</div>
</div>


<div class="package">
  
  <img class="package-image" src="" alt=""></img>
    <div class="package-info">
<h3><a href="https://cran.r-project.org/web/packages/alphashape3d/index.html/">alphashape3d</a></h3>


<p> 

Implementation in R of the alpha-shape of a finite set of points in the three-dimensional space.

</p>
      
<a href="https://cran.r-project.org/web/packages/alphashape3d/index.html/" aria-hidden="true">
        Learn more ...</a></p>
</div>
</div>

<div class="package">
  
  <img class="package-image" src="" alt=""></img>
    <div class="package-info">
<h3><a href="https://github.com/zarquon42b/Rvcg/">Rvcg</a></h3>


<p> 

Operations on triangular meshes based on 'VCGLIB'.

</p>
      
<a href="https://github.com/zarquon42b/Rvcg/" aria-hidden="true">
        Learn more ...</a></p>
</div>
</div>

<div class="package">
  
  <img class="package-image" src="" alt=""></img>
    <div class="package-info">
<h3><a href="https://github.com/zarquon42b/Morpho/">Morpho</a></h3>


<p> 

A toolset for Geometric Morphometrics and mesh processing.

</p>
      
<a href="https://github.com/zarquon42b/Morpho/" aria-hidden="true">
        Learn more ...</a></p>
</div>
</div>



  
</div>
</div>

## Get help

If you’re asking for R help, reporting a bug, or requesting a new feature, you’re more likely to succeed if you include a good reproducible example, which is precisely what the [reprex](https://natverse.github.io/help/#reprex) package is meant for. You can learn more about reprex, along with other tips on how to help others help you in the [help section](https://natverse.github.io/help/).
