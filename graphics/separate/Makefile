# Created by: Pietro Cerutti <gahr@gahr.ch>
# $FreeBSD: graphics/separate/Makefile 314547 2013-03-18 09:46:49Z kwm $

PORTNAME=	separate
PORTVERSION=	0.5.8
PORTREVISION=	2
PORTEPOCH=	1
CATEGORIES=	graphics
MASTER_SITES=	SFJP
MASTER_SITE_SUBDIR=	separate-plus/47873
DISTNAME=	${PORTNAME}+-${PORTVERSION}

MAINTAINER=	gahr@FreeBSD.org
COMMENT=	A CMYK plugin for The GIMP

BUILD_DEPENDS=	gccmakedep:${PORTSDIR}/devel/gccmakedep
LIB_DEPENDS=	lcms.1:${PORTSDIR}/graphics/lcms \
		gimp-2.0:${PORTSDIR}/graphics/gimp-app

USE_ZIP=	yes
USE_GMAKE=	yes

BIN_TARGETS=	separate separate_import icc_colorspace
L10N_TARGETS=	cs es fr ja ko pl ru

.for PLUGIN in ${BIN_TARGETS}
PLIST_FILES+=	libexec/gimp/2.2/plug-ins/${PLUGIN}
.endfor
.for lang in ${L10N_TARGETS}
PLIST_FILES+=	share/locale/${lang}/LC_MESSAGES/gimp20-separate.mo
.endfor

PORTDOCS=	README*
PORTEXAMPLES=	qproof.scm qexport.scm

MAKE_ENV+=	TARGETS="${BIN_TARGETS}"

post-patch:
	@${REINPLACE_CMD} -e 's| make| ${GMAKE}|; s|lib/gimp/2.0|libexec/gimp/2.2|' ${WRKSRC}/Makefile
	@${REINPLACE_CMD} -e 's|$$(PREFIX)|${PREFIX}|g' ${WRKSRC}/Makefile ${WRKSRC}/po/Makefile

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif
.if !defined(NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/sample-scripts && \
	${INSTALL_DATA} ${PORTEXAMPLES} ${EXAMPLESDIR}
.endif
	@${CAT} pkg-message

.include <bsd.port.mk>
