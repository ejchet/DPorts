# Created by: Jie Gao	<gaoj@cpsc.ucalgary.ca>
# $FreeBSD: chinese/scim-tables/Makefile 316310 2013-04-23 06:34:47Z bapt $

PORTNAME=	scim-tables
PORTVERSION=	0.5.10
PORTREVISION=	1
CATEGORIES=	chinese
MASTER_SITES=	SF/scim/${PORTNAME}/${PORTVERSION}

MAINTAINER=	lx@FreeBSD.org
COMMENT=	SCIM table based Chinese input methods

BUILD_DEPENDS=	scim-make-table:${PORTSDIR}/textproc/scim-table-imengine
RUN_DEPENDS=	scim-make-table:${PORTSDIR}/textproc/scim-table-imengine

USES=		pkgconfig
USE_GMAKE=	yes
GNU_CONFIGURE=	yes

.include <bsd.port.pre.mk>

CPPFLAGS+=	-I${LOCALBASE}/include -D__STDC_ISO_10646__

CONFIGURE_ENV+=	SCIM_DATADIR=${PREFIX}/share/scim \
		SCIM_ICONDIR=${PREFIX}/share/scim/icons
LDFLAGS+=	-L${LOCALBASE}/lib -lintl

CONFIGURE_ARGS+=	--disable-skim-support

post-install:
	@${CAT} ${PKGMESSAGE}
	@${ECHO}
	@${ECHO} To display this message again, type \`pkg_info -D ${PKGNAME}\'
	@${ECHO}

.include <bsd.port.post.mk>
