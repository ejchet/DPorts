# Created by: matusita@jp.FreeBSD.org
# $FreeBSD: net/jwhois/Makefile 317503 2013-05-06 10:22:41Z bapt $

PORTNAME=	jwhois
PORTVERSION=	4.0
#PORTREVISION=	0
PORTREVISION=	3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	jwhois

MAINTAINER=	ports@FreeBSD.org
COMMENT=An improved WHOIS client capable of selecting server to query

GNU_CONFIGURE=	yes
USES=		gettext
USE_GMAKE=	yes
CPPFLAGS+=	-I${PREFIX}/include
LDFLAGS+=	-L${PREFIX}/lib
CONFIGURE_ARGS=	--localstatedir=${PREFIX}/var/jwhois

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
PLIST_SUB=	NLS=""
.else
CONFIGURE_ARGS+=	--disable-nls
PLIST_SUB=	NLS="@comment "
.endif

INSTALL_TARGET=	install-strip

MANLANG=	"" sv
MAN1=	jwhois.1
INFO=	jwhois

.include <bsd.port.pre.mk>

.if exists(${FILESDIR}/jwhois.conf)
JWHOIS_CONF_SRC=${FILESDIR}/jwhois.conf
.else
JWHOIS_CONF_SRC=${WRKSRC}/example/jwhois.conf
.endif

post-install:
	${MKDIR} ${PREFIX}/var/jwhois
	${CHOWN} :nogroup ${PREFIX}/var/jwhois
	${CHMOD} g+w ${PREFIX}/var/jwhois
	${CHOWN} :nogroup ${PREFIX}/bin/jwhois
	${CHMOD} g+s ${PREFIX}/bin/jwhois
	${INSTALL_DATA} ${JWHOIS_CONF_SRC} ${PREFIX}/etc/jwhois.conf.sample
	if [ ! -f ${PREFIX}/etc/jwhois.conf ]; then ${INSTALL_DATA} ${PREFIX}/etc/jwhois.conf.sample ${PREFIX}/etc/jwhois.conf; fi

.include <bsd.port.post.mk>
