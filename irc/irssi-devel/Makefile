# Created by: Vsevolod Stakhov <vsevolod@highsecure.ru>
# $FreeBSD: irc/irssi-devel/Makefile 316344 2013-04-23 10:51:39Z bapt $

PORTNAME=	irssi
PORTVERSION=	20120624
PORTREVISION=	1
CATEGORIES=	irc
MASTER_SITES=	http://bsdcrew.de/distfiles/
PKGNAMESUFFIX=	-devel

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	A modular IRC client with many features

LIB_DEPENDS=	glib-2.0:${PORTSDIR}/devel/glib20

CONFLICTS=	irssi-0.8*

GNU_CONFIGURE=	yes
USES=		pkgconfig
USE_GMAKE=	yes
WANT_PERL=	yes
MAKE_JOBS_SAFE=	yes

MAN1=		irssi.1

OPTIONS_DEFINE=	PERL PROXY SOCKS IPV6 BOT SSL
SOCKS_DESC=	Socks proxy support
BOT_DESC=	Bot support
OPTIONS_DEFAULT=	PERL IPV6 SSL

WRKSRC=		${WRKDIR}/${PORTNAME}-0.8.15-svn

.include <bsd.port.options.mk>

# Process options.

.if ${PORT_OPTIONS:MSSL}
USE_OPENSSL=	yes
.else
CONFIGURE_ARGS+=	--disable-ssl
.endif

.if ${PORT_OPTIONS:MPERL}
USE_PERL5=	yes
CONFIGURE_ARGS+=	--with-perl-lib=site
PLIST_SUB+=	WITH_PERL=""
.else
CONFIGURE_ARGS+=	--without-perl
PLIST_SUB+=	WITH_PERL="@comment "
.endif

.if ${PORT_OPTIONS:MPROXY}
CONFIGURE_ARGS+=	--with-proxy
PLIST_SUB+=	WITH_PROXY=""
.else
PLIST_SUB+=	WITH_PROXY="@comment "
.endif

.if ${PORT_OPTIONS:MSOCKS}
CONFIGURE_ARGS+=	--with-socks
.endif

.if ${PORT_OPTIONS:MIPV6}
CONFIGURE_ARGS+=	--enable-ipv6
CATEGORIES+=	ipv6
.else
CONFIGURE_ARGS+=	--disable-ipv6
.endif

.if ${PORT_OPTIONS:MBOT}
CONFIGURE_ARGS+=	--with-bot
PLIST_SUB+=	WITH_BOT=""
.else
CONFIGURE_ARGS+=	--without-bot
PLIST_SUB+=	WITH_BOT="@comment "
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|/usr|${PREFIX}|' -e 's|/etc|${PREFIX}&|' \
		${WRKSRC}/docs/irssi.1

post-configure:
	@${MV} ${WRKSRC}/irssi.conf ${WRKSRC}/irssi.conf.sample

post-install:
	@if [ ! -f ${PREFIX}/etc/irssi.conf ]; then \
		${ECHO} "Installing default configuration file."; \
		${INSTALL_DATA} ${WRKSRC}/irssi.conf.sample ${PREFIX}/etc/irssi.conf ; \
	fi

.include <bsd.port.mk>
