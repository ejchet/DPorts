# New ports collection makefile for:	ipv6calc
# Date created:				30 January 2002
# Whom:				Edwin Groothuis <edwin@mavetju.org>
#
# $FreeBSD: net-mgmt/ipv6calc/Makefile 316597 2013-04-26 12:07:36Z edwin $
#

PORTNAME=	ipv6calc
PORTVERSION=	0.94.0
CATEGORIES=	net-mgmt ipv6
MASTER_SITES=	ftp://ftp.bieringer.de/pub/linux/IPv6/ipv6calc/

MAINTAINER=	edwin@mavetju.org
COMMENT=	Convert, change, and calculate with IPv6 addresses

USES=		gettext
USE_GMAKE=	yes
GNU_CONFIGURE=	yes

PLIST_FILES=	bin/ipv6calc bin/ipv6logconv bin/ipv6logstats bin/ipv6loganon

MAN8=		ipv6calc.8 ipv6logconv.8 ipv6logstats.8 ipv6loganon.8

.include <bsd.port.mk>
