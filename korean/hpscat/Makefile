# Created by: Junho CHOI <junho.choi@gmail.com>
# $FreeBSD: korean/hpscat/Makefile 324054 2013-07-31 14:36:21Z az $

PORTNAME=	hpscat
PORTVERSION=	1.3.1
PORTEPOCH=	1
CATEGORIES=	korean print
MASTER_SITES=	http://ftp.kaist.ac.kr/hangul/print/hpscat/ \
		ftp://ftp.kaist.ac.kr/hangul/print/hpscat/ \
		http://ftp.kaist.ac.kr/hangul/editor/ked/:ked \
		ftp://ftp.kaist.ac.kr/hangul/editor/ked/:ked \
		ftp://ftp.kr.FreeBSD.org/pub/FreeBSD-kr/distfiles/
PKGNAMESUFFIX=	-jshin
DISTNAME=	${PORTNAME}${PKGNAMESUFFIX}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ked.tar.gz:ked

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Hangul Text Printing Utility

RUN_DEPENDS=    hcode:${PORTSDIR}/korean/hcode

FONTDIR=	${PREFIX}/${FONTDIR_REL}
FONTDIR_REL=	share/fonts/ked-${PORTNAME}
FONTFILES=	Gotic Header Munjo MunjoBold PCMunjo
README_FILES=	README README.jshin README.jshin.ks
PLIST_FILES=	bin/hpscat bin/hpscat.bin
.for i in ${FONTFILES} ${README_FILES}
PLIST_FILES+=	${FONTDIR_REL}/${i}
.endfor
PLIST_DIRS=	${FONTDIR_REL}
PLIST_DIRSTRY=	share/fonts
SUB_FILES=	hpscat.sh pkg-message
SUB_LIST=	FONTDIR=${FONTDIR}
USES=		perl5

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/hpscat ${PREFIX}/bin/hpscat.bin
	@${INSTALL_SCRIPT} ${WRKDIR}/hpscat.sh ${PREFIX}/bin/hpscat
	@cd ${WRKSRC} && ${COPYTREE_SHARE} "${README_FILES}" ${FONTDIR}
	@cd ${WRKDIR}/ked && ${COPYTREE_SHARE} "${FONTFILES}" ${FONTDIR}
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
