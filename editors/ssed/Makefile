# Created by: verm
# $FreeBSD: editors/ssed/Makefile 317474 2013-05-06 07:01:48Z bapt $

PORTNAME=	sed
PORTVERSION=	3.62
PORTREVISION=	3
CATEGORIES=	editors textproc
MASTER_SITES=	http://sed.sourceforge.net/grabbag/ssed/
PKGNAMEPREFIX=	s

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Super-sed - a heavily enhanced version of sed

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=s

MAN1=		ssed.1

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
CONFIGURE_ARGS+=	--with-libiconv-prefix=${LOCALBASE}
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=	--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

.include <bsd.port.mk>
