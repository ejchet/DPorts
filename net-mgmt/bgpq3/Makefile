# Created by: Alexandre Snarskii <snar@snar.spb.ru>
# $FreeBSD: net-mgmt/bgpq3/Makefile 318587 2013-05-20 08:59:26Z miwi $

PORTNAME=	bgpq3
PORTVERSION=	0.1.19
CATEGORIES=	net-mgmt
MASTER_SITES=	http://snar.spb.ru/prog/bgpq3/
EXTRACT_SUFX=	.tgz

MAINTAINER=	snar@snar.spb.ru
COMMENT=	Lightweight prefix-list generator for Cisco and Juniper routers

MAN8=		bgpq3.8
PLIST_FILES=	bin/bgpq3
HAS_CONFIGURE=	yes

CONFIGURE_ARGS+=--prefix=${PREFIX}

.include <bsd.port.mk>
