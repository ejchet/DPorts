# Created by: Tom McLaughlin <tmclaugh@sdf.lonestar.org>
# $FreeBSD: mail/gmime26-sharp/Makefile 318750 2013-05-22 09:04:54Z kwm $
#   $Id: Makefile,v 1.17 2006/10/26 18:37:29 tmclau02 Exp $

PORTREVISION=	0
CATEGORIES=	mail
PKGNAMESUFFIX=	-26-sharp

MAINTAINER=	mono@FreeBSD.org
COMMENT=	Mono bindings for gmime

LIB_DEPENDS=	gmime-2.6:${PORTSDIR}/mail/gmime26

MASTERDIR=	${.CURDIR}/../gmime26
BUILD_WRKSRC=	${WRKSRC}/mono
INSTALL_WRKSRC=	${BUILD_WRKSRC}
DESCR=		${.CURDIR}/pkg-descr
PLIST=		${.CURDIR}/pkg-plist

USE_GNOME+=	gtksharp20
CONFIGURE_ARGS=	--enable-mono=yes

LATEST_LINK=	gmime26-sharp

# Else we conflict with mail/gmime26
OPTIONS_EXCLUDE=	DOCS

# Done in pre-configure because master port has a post-patch target already.
pre-configure:
	@${REINPLACE_CMD} -e 's|.@GMIME_VERSION@||g' \
		${WRKSRC}/mono/gmime-sharp.dll.config.in

.include "${.CURDIR}/../../lang/mono/bsd.mono.mk"
.include "${MASTERDIR}/Makefile"
