# Created by: Dmitry Marakasov <amdmi3@amdmi3.ru>
# $FreeBSD: sysutils/iat/Makefile 321132 2013-06-17 15:27:58Z amdmi3 $

PORTNAME=	iat
PORTVERSION=	0.1.7
CATEGORIES=	sysutils
MASTER_SITES=	BERLIOS

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	Converter of many types of CD-ROM image file formats into ISO-9660

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
MAKE_JOBS_SAFE=	yes

PLIST_FILES=	bin/iat
MAN1=		iat.1

post-patch:
	@${REINPLACE_CMD} -e '/install-data-am:/ s|install-includeHEADERS||' \
		${WRKSRC}/src/Makefile.in

.include <bsd.port.mk>
