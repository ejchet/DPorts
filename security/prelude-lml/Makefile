# Created by: Clement Laforet <sheepkiller@cultdeadsheep.org>
# $FreeBSD: security/prelude-lml/Makefile 322061 2013-06-29 21:35:45Z antoine $

PORTNAME=	prelude-lml
PORTVERSION=	1.0.1
PORTREVISION=	4
CATEGORIES=	security
MASTER_SITES=	https://www.prelude-ids.org/attachments/download/242/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Prelude Network Intrusion Detection System Log Monitoring Lackey

LIB_DEPENDS=	icuuc:${PORTSDIR}/devel/icu \
		pcre:${PORTSDIR}/devel/pcre \
		gmp:${PORTSDIR}/math/gmp \
		gnutls:${PORTSDIR}/security/gnutls \
		gcrypt:${PORTSDIR}/security/libgcrypt \
		gpg-error:${PORTSDIR}/security/libgpg-error \
		prelude:${PORTSDIR}/security/libprelude \
		nettle:${PORTSDIR}/security/nettle \
		p11-kit:${PORTSDIR}/security/p11-kit

USE_GMAKE=	yes
USE_AUTOTOOLS=	libltdl
GNU_CONFIGURE=	yes
USE_RC_SUBR=	prelude-lml
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc
USES=		charsetfix gettext iconv pkgconfig

OPTIONS_DEFINE=	FAM

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MFAM}
USE_FAM=	yes
CONFIGURE_ARGS+=	--enable-fam
.else
CONFIGURE_ARGS+=	--disable-fam
.endif

post-install:
	@if [ ! -f ${PREFIX}/etc/prelude-lml/prelude-lml.conf ]; then \
	   ${CP} -p ${PREFIX}/etc/prelude-lml/prelude-lml.conf-dist \
	      ${PREFIX}/etc/prelude-lml/prelude-lml.conf ; \
	fi
	@if [ ! -f ${PREFIX}/etc/prelude-lml/plugins.rules ]; then \
	   ${CP} -p ${PREFIX}/etc/prelude-lml/plugins.rules-dist \
	      ${PREFIX}/etc/prelude-lml/plugins.rules ; \
	fi

.include <bsd.port.mk>
