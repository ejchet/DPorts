# Created by: thierry@thomas.as
# $FreeBSD: misc/libmcal/Makefile 318984 2013-05-24 15:52:20Z thierry $

PORTNAME=	libmcal
PORTVERSION=	0.7
PORTREVISION=	2
CATEGORIES=	misc
MASTER_SITES=	SF
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} mcaldrivers-0.9.tar.gz

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Modular Calendar Access Library

DEPRECATED=	No more used and development discontinued
EXPIRATION_DATE=2013-12-31

USE_AUTOTOOLS=	libltdl
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS=	--with-mstore --with-icap \
		--prefix=${PREFIX} --exec-prefix=${PREFIX}
USE_LDCONFIG=	yes
USES=		bison

WRKSRC=		${WRKDIR}/${PORTNAME}
WRKSRCDRV=	${WRKDIR}/mcal-drivers

DOCS=		CHANGELOG FAQ-MCAL FEATURE-IMPLEMENTATION FUNCTION-REF.html \
		HOW-TO-MCAL LICENSE README mstore/README.mstore

PKGMESSAGE=	${WRKDIR}/pkg-message
SUB_FILES=	pkg-message

post-extract:
	${CP} -pR ${WRKSRCDRV}/mstore ${WRKSRC}
	${CP} -pR ${WRKSRCDRV}/icap ${WRKSRC}
	${MV} ${WRKSRC}/mstore/Makefile ${WRKSRC}/mstore/Makefile.dist
	${MV} ${WRKSRC}/mstore/Makefile.FreeBSD ${WRKSRC}/mstore/Makefile
	${MV} ${WRKSRC}/icap/Makefile ${WRKSRC}/icap/Makefile.dist
	${MV} ${WRKSRC}/icap/Makefile.FreeBSD ${WRKSRC}/icap/Makefile
	${MV} ${WRKSRC}/configure ${WRKSRC}/configure.dist
	${MV} ${WRKSRC}/configure.FreeBSD ${WRKSRC}/configure
	${CHMOD} u+x ${WRKSRC}/configure
	${MV} ${WRKSRC}/mstore/README ${WRKSRC}/mstore/README.mstore

pre-configure:
	${REINPLACE_CMD} -e "s:/etc/mpasswd:${PREFIX}/etc/mpasswd:" ${WRKSRC}/mstore/mstore.c
	@${ECHO_MSG} "===>  Building the driver mstore"
	cd ${WRKSRC}/mstore ; \
		${MAKE}
	@${ECHO_MSG} "===>  Building the driver icap"
	cd ${WRKSRC}/icap ; \
		${MAKE}

post-install:
.if !defined(NOPORTDOCS)
	${REINPLACE_CMD} -e "s:/etc/mpasswd:${LOCALBASE}/etc/mpasswd:" \
		${WRKSRC}/FAQ-MCAL
	${REINPLACE_CMD} -e "s:/etc/mpasswd:${LOCALBASE}/etc/mpasswd:" \
		${WRKSRC}/mstore/README.mstore
	${MKDIR} ${DOCSDIR}
.for FILE in ${DOCS}
	@${INSTALL_DATA} ${WRKSRC}/${FILE} ${DOCSDIR}
.endfor
	@${ECHO_MSG} "===>  Documentation installed in ${DOCSDIR}."
.endif
	@${ECHO}
	@${CAT} ${PKGMESSAGE}
	@${ECHO}

.include <bsd.port.mk>
