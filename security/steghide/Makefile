# New ports collection makefile for:	steghide
# Date created:				26 February 2001
# Whom:					RaRa Rasputin <rasputin@submonkey.net>
#
# $FreeBSD: security/steghide/Makefile 316464 2013-04-24 18:10:30Z ak $
#

PORTNAME=	steghide
PORTVERSION=	0.5.1
PORTREVISION=	4
CATEGORIES=	security
MASTER_SITES=	SF
DISTNAME=	${PORTNAME}-${PORTVERSION:S/.b/b/}

MAINTAINER=	arved@FreeBSD.org
COMMENT=	Steganography tool to hide data in binary files

LIB_DEPENDS=	mcrypt.8:${PORTSDIR}/security/libmcrypt \
		mhash.2:${PORTSDIR}/security/mhash

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

USES=		gettext
USE_PERL5=	yes
USE_AUTOTOOLS=	libtool
USE_GMAKE=	yes
CONFIGURE_ENV=	LIBS="-L${LOCALBASE}/lib -lintl -lmcrypt"
CPPFLAGS+=	${CFLAGS} -I${LOCALBASE}/include -fpermissive

MAN1=		steghide.1

post-patch:
.ifdef(NOPORTDOCS)
	${REINPLACE_CMD} -e 's|install-data-am\: install-docDATA||' \
		${WRKSRC}/Makefile.in
.endif
	${REINPLACE_CMD} -e 's,SHELL) libtool,SHELL) ${LIBTOOL} --tag=CXX,' \
		${WRKSRC}/src/Makefile.in
	${REINPLACE_CMD} -e 's,-O2,${CFLAGS},' ${WRKSRC}/configure

.include <bsd.port.mk>
