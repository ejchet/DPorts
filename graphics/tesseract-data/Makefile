# Created by: bf <bf@FreeBSD.org>
# $FreeBSD: graphics/tesseract-data/Makefile 316029 2013-04-18 08:37:38Z bf $

PORTNAME=	tesseract-data
PORTVERSION=	3.02
PORTREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}
DISTFILES=	${TESSERACT_LANGS_300:O:u:S|$|.traineddata.gz|} \
		${TESSERACT_LANGS_301:O:u:S|^|tesseract-ocr-3.01.|:S|$|.tar.gz|} \
		${TESSERACT_LANGS_302:O:u:S|^|tesseract-ocr-3.02.|:S|$|.tar.gz|}
EXTRACT_ONLY=	#empty

MAINTAINER=	bf@FreeBSD.org
COMMENT=	Trained language data for the Tesseract OCR engine

LICENSE=	AL2

DIST_SUBDIR=	tesseract
PROJECTHOST=	tesseract-ocr

NO_BUILD=	yes

LANGS_300=	dan-frak deu-frak swe-frak
LANGS_301=	osd slk-frak
LANGS_302=	afr ara aze bel ben bul cat ces chi_sim chi_tra chr dan deu \
		ell eng enm epo epo_alt equ est eus fin fra frk frm glg grc heb hin \
		hrv hun ind isl ita ita_old jpn kan kor lav lit mal mkd mlt \
		msa nld nor pol por ron rus slk slv spa spa_old sqi srp swa \
		swe tam tel tgl tha tur ukr vie

.if make(makesum)
TESSERACT_LANGS=	${LANGS_300} ${LANGS_301} ${LANGS_302}
.else
TESSERACT_LANGS ?=	${LANGS_300} ${LANGS_301} ${LANGS_302}
.endif

.for l in ${TESSERACT_LANGS}
.for n in 0 1 2
.if ${LANGS_30${n}:M${l}}
TESSERACT_LANGS_30${n}+= ${LANGS_30${n}:M${l}}
.endif
.endfor
.endfor

.ifndef NOPORTDATA
DATADIR=	${PREFIX}/share/tessdata
PORTDATA=	${TESSERACT_LANGS:O:u:S|$|.traineddata|}
.endif

pre-fetch:
	@${ECHO_MSG} ""
	@${ECHO_MSG} "The choice of language data to be installed may"
	@${ECHO_MSG} "be overridden by defining TESSERACT_LANGS. "
	@${ECHO_MSG} ""

do-install:
.ifndef NOPORTDATA
	@${MKDIR} ${DATADIR}
.for l in ${TESSERACT_LANGS_300:O:u:S|$|.traineddata|}
	@${GUNZIP_CMD} -c ${_DISTDIR}/${l}.gz > ${DATADIR}/${l}
.endfor
.for n in 1 2
.for l in ${TESSERACT_LANGS_30${n}:O:u}
	@${TAR} --strip-components 2 -C ${DATADIR} \
	-xf ${_DISTDIR}/tesseract-ocr-3.0${n}.${l}.tar.gz *.traineddata
.endfor
.endfor
	@cd ${DATADIR} ; ${CHOWN} ${SHAREOWN}:${SHAREGRP} ${PORTDATA} ; \
	${CHMOD} ${BINMODE} ${PORTDATA}
.endif

.include <bsd.port.mk>
