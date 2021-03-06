# Created by: jfitz
# $FreeBSD: www/analog/Makefile 324437 2013-08-09 14:05:52Z dinoex $

PORTNAME=	analog
PORTVERSION=	6.0
PORTREVISION=	9
PORTEPOCH=	1
CATEGORIES=	www
MASTER_SITES=	http://www.analog.cx/ \
		http://analog.gsp.com/ \
		http://fossies.org/unix/www/ \
		ftp://ftp.polytechnic.edu.na/pub/analog/ \
		http://analog.tzone.it/

MAINTAINER=	c.petrik.sosa@gmail.com
COMMENT=	Extremely fast program for analysing WWW logfiles

LICENSE=	GPLv2

LIB_DEPENDS=	gd:${PORTSDIR}/graphics/gd \
		jpeg:${PORTSDIR}/graphics/jpeg \
		png15:${PORTSDIR}/graphics/png

BUILD_WRKSRC=	${WRKSRC}/src

ALL_TARGET=	${PORTNAME}
MAKE_JOBS_SAFE=	yes

SUB_FILES=	pkg-message

MAN1=		analog.1

LIMGDIR?=	www/data/images
IMGDIR=		${PREFIX}/${LIMGDIR}
PLIST_SUB=	IMGDIR="${LIMGDIR}"

.include <bsd.port.pre.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/analog ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/analog.man ${MANPREFIX}/man/man1/analog.1
	${INSTALL_DATA} ${WRKSRC}/analog.cfg ${PREFIX}/etc/analog.cfg-dist
	@${MKDIR} ${DATADIR}/lang
	${INSTALL_DATA} ${WRKSRC}/lang/* ${DATADIR}/lang
	@${MKDIR} ${IMGDIR}
	${INSTALL_DATA} ${WRKSRC}/images/* ${IMGDIR}
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOCSDIR}
.endif
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.cfg ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/anlgform.html ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/anlgform.pl ${EXAMPLESDIR}
	@${MKDIR} ${EXAMPLESDIR}/css
	${INSTALL_DATA} ${WRKSRC}/examples/css/Readme.txt ${EXAMPLESDIR}/css
	${INSTALL_DATA} ${WRKSRC}/examples/css/default.css ${EXAMPLESDIR}/css
	@${MKDIR} ${EXAMPLESDIR}/css/jreeves
	${INSTALL_DATA} ${WRKSRC}/examples/css/jreeves/* ${EXAMPLESDIR}/css/jreeves
.endif
.if !exists(${PREFIX}/etc/analog.cfg)
	@cd ${PREFIX}/etc && ${CP} -f analog.cfg-dist analog.cfg
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.post.mk>
