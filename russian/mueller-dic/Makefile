# Created by: Igor Pokrovsky <tiamat@comset.net>
# $FreeBSD: russian/mueller-dic/Makefile 320918 2013-06-14 13:51:04Z bsam $

PORTNAME=	mueller-dic
PORTVERSION=	1.2
PORTREVISION=	3
CATEGORIES=	russian
MASTER_SITES=	http://www.dindin.ru/download/ \
		http://mueller-dic.chat.ru/
DISTFILES=	Mueller7accentGPL.tgz yusupov_mf.tgz
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Mueller English-Russian dictionary

USE_GMAKE=	yes
USES=		iconv
SUB_FILES=	mueller

WRKSRC=		${WRKDIR}/mf
WRKSRC_DIC=	${WRKDIR}/usr/local/share/dict
WRKSRC_DOC=	${WRKDIR}/usr/local/share/mova

OPTIONS_DEFINE=	DOCS

post-build:
# convert dictionary to other charsets
	${MV} ${WRKSRC_DIC}/Mueller7accentGPL.koi ${WRKSRC_DIC}/Mueller7accentGPL.ru_RU.KOI8-R
	iconv -f koi8-r -t cp1251 -c ${WRKSRC_DIC}/Mueller7accentGPL.ru_RU.KOI8-R > \
			${WRKSRC_DIC}/Mueller7accentGPL.ru_RU.CP1251 || ${TRUE}
	iconv -f koi8-r -t utf-8 -c ${WRKSRC_DIC}/Mueller7accentGPL.ru_RU.KOI8-R > \
			${WRKSRC_DIC}/Mueller7accentGPL.ru_RU.UTF-8 || ${TRUE}
# rebuild dictionary hash
	${WRKSRC}/mf -d ${WRKSRC_DIC}/Mueller7accentGPL.ru_RU.KOI8-R -hash
	${WRKSRC}/mf -d ${WRKSRC_DIC}/Mueller7accentGPL.ru_RU.CP1251 -hash
	${WRKSRC}/mf -d ${WRKSRC_DIC}/Mueller7accentGPL.ru_RU.UTF-8 -hash

.include <bsd.port.options.mk>

do-install:
	# install program with different name (it conflicts with teTeX)
	${INSTALL_PROGRAM} ${WRKSRC}/mf ${PREFIX}/bin/muellerfind
	${INSTALL_SCRIPT} ${WRKDIR}/mueller ${PREFIX}/bin/

	@${MKDIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC_DIC}/Mueller7accentGPL.ru_RU.* ${DATADIR}

.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC_DOC}/Mueller7.txt ${DOCSDIR}/Mueller7.txt
.endif

post-install:
	@${ECHO_CMD} "==============================================="
	@${ECHO_CMD} " You can look up words in dictionary with:     "
	@${ECHO_CMD} " ${PREFIX}/bin/mueller word"
	@${ECHO_CMD} "==============================================="

.include <bsd.port.mk>
