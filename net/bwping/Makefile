# $FreeBSD: ports/net/bwping/Makefile,v 1.8 2012/11/17 05:59:57 svnexp Exp $

PORTNAME=	bwping
PORTVERSION=	1.6
CATEGORIES=	net
MASTER_SITES=	SF

MAINTAINER=	oleg.derevenetz@gmail.com
COMMENT=	Tool to measure bandwidth and RTT between two hosts using ICMP

LICENSE=	BSD
LICENSE_FILE=	${WRKSRC}/COPYING

GNU_CONFIGURE=	yes
MAN8=		bwping.8

PLIST_FILES=	sbin/bwping

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MIPV6}
CONFIGURE_ENV+=	ac_cv_ipv6=yes
MAN8+=		bwping6.8
PLIST_FILES+=	sbin/bwping6
.else
CONFIGURE_ENV+=	ac_cv_ipv6=no
.endif

post-install:
	@${CHMOD} 4555 ${PREFIX}/sbin/bwping
.if ${PORT_OPTIONS:MIPV6}
	@${CHMOD} 4555 ${PREFIX}/sbin/bwping6
.endif

.include <bsd.port.mk>
