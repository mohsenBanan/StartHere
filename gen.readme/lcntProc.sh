#!/bin/bash

IimBriefDescription="lcntProc.sh based on seedLcntProc.sh"

ORIGIN="
* Revision And Libre-Halaal CopyLeft -- Part Of ByStar -- Best Used With Blee
"

####+BEGIN: bx:dblock:bash:top-of-file :vc "cvs" partof: "bystar" :copyleft "halaal+minimal"
typeset RcsId="$Id: dblock-iim-bash.el,v 1.4 2017-02-08 06:42:32 lsipusr Exp $"
# *CopyLeft*
#  This is a Halaal Poly-Existential. See http://www.freeprotocols.org

####+END:

__author__="
* Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
"

####+BEGIN: bx:dblock:lsip:bash:seed-spec :types "seedLcntProc.sh"
SEED="
*  /[dblock]/ /Seed/ :: [[file:/opt/public/osmt/bin/seedLcntProc.sh]] | 
"
FILE="
*  /This File/ :: /bisos/git/auth/bxRepos/mohsenBanan/ReposOverview/gen.readme/lcntProc.sh 
"
if [ "${loadFiles}" == "" ] ; then
    /opt/public/osmt/bin/seedLcntProc.sh -l $0 "$@" 
    exit $?
fi
####+END:


_CommentBegin_
####+BEGIN: bx:dblock:global:file-insert-cond :cond "./blee.el" :file "/libre/ByStar/InitialTemplates/software/plusOrg/dblock/inserts/topControls.org"
*      ================
*  /Controls/ ::  [[elisp:(org-cycle)][| ]]  [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[file:Panel.org][Panel]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] | [[elisp:(bx:org:run-me-eml)][RunEml]] | [[elisp:(delete-other-windows)][(1)]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]] 
####+END:
_CommentEnd_


_CommentBegin_
*      ================
*  [[elisp:(beginning-of-buffer)][Top]] ################ [[elisp:(delete-other-windows)][(1)]] CONTENTS-LIST ################
*  [[elisp:(org-cycle)][| ]]  Notes         :: *[Current-Info]*  Status, Notes (Tasks/Todo Lists, etc.) [[elisp:(org-cycle)][| ]]
_CommentEnd_

_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  vis_moduleDescription    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function vis_moduleDescription {  cat  << _EOF_
*  [[elisp:(org-cycle)][| ]]  Xrefs         :: *[Related/Xrefs:]*  <<Xref->>  -- External Documents  [[elisp:(org-cycle)][| ]]
**  [[elisp:(org-cycle)][| ]]  BxPanel      ::  [[elisp:(find-file "/de/bx/nne/dev-py/bin/iimBeamerImpressiveEmacs.py")][iimBeamerImpressiveEmacs.py]]   [[elisp:(find-file "/opt/public/osmt/bin/bx-desktopCapture")][bx-desktopCapture]] lcntProc.sh  [[elisp:(find-file "/libre/ByStar/InitialTemplates/activeDocs/blee/bystarContinuum/videoProc/fullUsagePanel-en.org")][VideoProc Pannel]] [[elisp:(org-cycle)][| ]]
*  [[elisp:(org-cycle)][| ]]  Info          :: *[Module Description:]* [[elisp:(org-cycle)][| ]]
**  [[elisp:(org-cycle)][| ]]  SysD         :: BISOS Customizations [[elisp:(org-cycle)][| ]]
    Based on the generic SysD (systemd) init daemon Start/Stop/Restart.
    This facility only manages the start/stop of daemon.

_EOF_
}

_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  vis_describe    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function vis_describe { vis_moduleDescription; }


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  Extensions    :: Seed Hooks [[elisp:(org-cycle)][| ]]
_CommentEnd_


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  buildPre    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function buildPre {
    #if [[ ! -d tables ]] ; then ln -s ../Q1-2007-BusPlan/tables tables; fi    
    #lcntSourceTypeBaseDir="${lcntBaseDir}${lcntAttrGenPub}/${lcntAttrSource}/${lcntAttrPermanence}"
    lcntSourceTypeBaseDir="${lcntBaseDir}${lcntAttrGenPub}/bystar/${lcntAttrPermanence}"
    if [[ ! -d figures ]] ; then ln -s ${lcntSourceTypeBaseDir}/common/figures figures; fi
    return
}

_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  buildPost    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function buildPost {
  #if [[ -L tables ]] ; then /bin/rm tables; fi
  return
}


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  cleanPost    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function cleanPost {
  #if [[ -L tables ]] ; then /bin/rm tables; fi
  #if [[ -L figures ]] ; then /bin/rm figures; fi
  return
}

_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  Examples      :: Extension Examples [[elisp:(org-cycle)][| ]]
_CommentEnd_


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  examplesHookPost    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function examplesHookPost {
    cat  << _EOF_
$( examplesSeperatorTopLabel "EXTENSION EXAMPLES" )
ls -l ./githubReport.tex
${G_myName} ${extraInfo} -i githubApisReportMohsen batch0 batch1
${G_myName} ${extraInfo} -i githubApisReportMohsen batch2
${G_myName} ${extraInfo} -i githubApisReportMohsen batch3
${G_myName} ${extraInfo} -i githubApisReportMohsen batch4
=== LaTeX To Markdown
pandoc --from=latex -s -t rst --toc readme.ttytex -o README.rst
pandoc --from=latex -s -t rst readme.ttytex -o README.rst
_EOF_
}


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  iimParam_extent    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function iimParam_extent {
    if [ $# -eq 0 ] ; then    
	IimParam extent=(
	    [name]="extent"
	    [value]="build"
	    [type]="string"
	    [description]="Extent Specification For mmDoc build commands"
	    [enums]="my_enums" 
	)
    fi

    function my_enums { cat  << _EOF_
build
view
build+view
_EOF_
    }

    if [ $# -eq 1 ] ; then $1; lpReturn; fi
}



_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  Extensions    :: Additional Features [[elisp:(org-cycle)][| ]]
_CommentEnd_


_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  vis_lcnLcntInputPre    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function vis_lcnLcntInputPre {
    G_funcEntry
    function describeF {  cat  << _EOF_
_EOF_
    }
    #
    # NOTYET, name of articleEn... needs to be figured out
    #
    heveaHtmlBasedir=heveaHtml-articleEnFa

    lcntSourceTypeBaseDir="${lcntBaseDir}${lcntAttrGenPub}/${lcntAttrSource}/${lcntAttrPermanence}"
    if [[ ! -d figures ]] ; then ln -s ${lcntSourceTypeBaseDir}/common/figures figures; fi

    if [[ ! -d ${heveaHtmlBasedir}/figures ]] ; then opDo ln -s ../figures ${heveaHtmlBasedir}/figures; fi

    heveaHtmlBasedir=heveaHtml-artFullEnFa

    lcntSourceTypeBaseDir="${lcntBaseDir}${lcntAttrGenPub}/${lcntAttrSource}/${lcntAttrPermanence}"
    if [[ ! -d figures ]] ; then ln -s ${lcntSourceTypeBaseDir}/common/figures figures; fi

    if [[ ! -d ${heveaHtmlBasedir}/figures ]] ; then opDo ln -s ../figures ${heveaHtmlBasedir}/figures; fi


    lpReturn
}



_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || IIF       ::  vis_githubApisReportMohsen    [[elisp:(org-cycle)][| ]]
_CommentEnd_

function vis_githubApisReportMohsen {
    G_funcEntry
    function describeF {  cat  << _EOF_
_EOF_
		       }
    EH_assert [[ $# -gt 0 ]]
    

    # githubApiAccess.py  -i listOrgsOfUsers https://api.github.com/users/mohsenBanan/orgs

        function batch1 {  cat  << _EOF_
https://api.github.com/orgs/ByStar
https://api.github.com/orgs/bx-unisos
https://api.github.com/orgs/bisos
https://api.github.com/orgs/bx-blee
https://api.github.com/orgs/bxGenesis
_EOF_
		       }


        function batch2 {  cat  << _EOF_
https://api.github.com/orgs/unisos-pip
https://api.github.com/orgs/bisos-pip
_EOF_
		       }

        function batch3 {  cat  << _EOF_
https://api.github.com/orgs/roPerf-pip
https://api.github.com/orgs/blee-pip
_EOF_
		       }

	
        function batch4 {  cat  << _EOF_
https://api.github.com/orgs/efficientProtocols
https://api.github.com/orgs/rePublication
_EOF_
			}

	local eachBatch=""
	local githubApiReports="/bisos/venv/dev-py2-bisos-3/bin/githubApiReports.py"

	for eachBatch in $@; do
	    if [ "${eachBatch}" == "batch0" ] ; then
		lpDo cp /dev/null githubReport.tex
		continue
	    fi
	    lpDo eval "${eachBatch} | xargs ${githubApiReports} -i reposOfOrgsReport |  tee -a githubReport.tex"
	done
	

    lpReturn
}



_CommentBegin_
*  [[elisp:(beginning-of-buffer)][Top]] ################ [[elisp:(delete-other-windows)][(1)]]  *End Of Editable Text*
_CommentEnd_

####+BEGIN: bx:dblock:bash:end-of-file :types ""
_CommentBegin_
*  [[elisp:(org-cycle)][| ]]  Common        ::  /[dblock] -- End-Of-File Controls/ [[elisp:(org-cycle)][| ]]
_CommentEnd_
#+STARTUP: showall
#local variables:
#major-mode: sh-mode
#fill-column: 90
# end:
####+END:

