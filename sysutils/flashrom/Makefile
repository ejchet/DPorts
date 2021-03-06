# Created by: Alexander Logvinov <ports@logvinov.com>
# $FreeBSD: sysutils/flashrom/Makefile 316355 2013-04-23 14:20:25Z bapt $

PORTNAME=	flashrom
PORTVERSION=	0.9.6.1
CATEGORIES=	sysutils
MASTER_SITES=	http://download.flashrom.org/releases/

MAINTAINER=	nukama@gmail.com
COMMENT=	Utility for reading, writing, verifying, and erasing flash ROM chips

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	pci:${PORTSDIR}/devel/libpci

OPTIONS_DEFINE=	DMIDECODE DOCS FTDI
OPTIONS_DEFAULT=	DMIDECODE DOCS

DMIDECODE_DESC=	Use dmidecode to gather DMI information
FTDI_DESC=	Enable external FT2232SPI flasher support

USE_BZIP2=	yes
USE_GMAKE=	yes
CPPFLAGS+=      -I${LOCALBASE}/include
LDFLAGS+=       -L${LOCALBASE}/lib -lc

ONLY_FOR_ARCHS=	amd64 i386

PORTDOCS=	ChangeLog COPYING README
PLIST_FILES=	bin/${PORTNAME}

.if !defined(NO_INSTALL_MANPAGES)
MAN8=		${PORTNAME}.8
.endif

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDMIDECODE}
RUN_DEPENDS+=	dmidecode:${PORTSDIR}/sysutils/dmidecode
.endif

.if ${PORT_OPTIONS:MFTDI}
USES+=		pkgconfig
LIB_DEPENDS+=	ftdi:${PORTSDIR}/devel/libftdi
.endif

post-patch:
.if ${PORT_OPTIONS:MFTDI}
	@${REINPLACE_CMD} -e 's|-lusb")|-lusb") -lz|' ${WRKSRC}/Makefile
.else
	@${REINPLACE_CMD} -e 's|2_SPI ?= yes|2_SPI ?= no|' ${WRKSRC}/Makefile
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
.if !defined(NO_INSTALL_MANPAGES)
	${MKDIR} ${MANPREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/${MAN8} ${MANPREFIX}/man/man8
.endif
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
.for i in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
