.. contents::
   :depth: 3
..

Start Here
==========

Somehow you have arrived here. We don’t know exactly what your interest
in our software, services and documentation may have been. But, we can
provide you some direction as to how to dig deeper towards your goal.

Almost the entirety of the repositories here have been created and are
mainatained by Mohsen Banan. If you are here to do some form of due
diligence on him and look at some the software and documents as his
sample code, we suggest that you continue at Section XX.

If you are interested in obtaining the sources for one or more of our
python pip packages that are published at PYPI, we suggest that you
clone the appropraite repository from bisos-pip, unisos-pip, blee-pip or
roPerf-pip.

Most of the repositories here are related to ByStar. If you want to
install and try out ByStar, we suggest that you continue at
bisos.genesis.

If you are interested in BISOS, we suggest that you continue at
bisos.overview.

If you are interested in cloning all of Organization and all of their
repositories so that you can process them all locally, we suggest that
you continue at `3 <#sec:CloningTheWholeThing>`__.

Sample Code
===========

Most of Mohsen’s BISOS and ByStar related code is written COMEEGA
https://github.com/bx-blee/comeega. Think of COMEEGA (Collaborative
Org-Mode Enhanced Emacs Generalized Authorship) as inverse of Literate
Programming.

Many prefer to consider traditional Python code as sample code. For that
purpose, there is a somewhat involved Web Scraping example at:
https://github.com/bxexamples/webServicesScraping.

.. _sec:CloningTheWholeThing:

Cloning The Whole Thing
=======================

Our usage model for structuring multiple Git repositories is not that of
the usual models of submodules or subtrees. Instead we use gitMaps.

.. _sec:ModelAndConceptOfgitMaps:

Model And Concept Of gitMaps
----------------------------

The basic concept is that the structure of the remote git respoistories
and the structure of the local git respoistories are independent of each
other.

The model is similar to how hardware engineers (electrical engineers)
build circuit boards. Each circuit board has a parts list. The parts
each have a number/pointer that refernces them in stock room (remote
repository). The parts are then organized on the circuit board (local
repository) – independent of how they were organized in the stock room.

The gitMap model is implemented in bisos.bx-bases.

.. _sec:BISOSDevelopersgitMaps:

BISOS Developers gitMaps
------------------------

To get a mapping of BISOS Remote Repositories to your local /bisos bases
follow the steps in the bisos.bootstrap module.
