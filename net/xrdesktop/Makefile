# Created by: Andrej Zverev <az@inec.ru>
# $FreeBSD: net/xrdesktop/Makefile 315513 2013-03-29 00:59:45Z eadler $

PORTNAME=	xrdesktop
PORTVERSION=	1.2
PORTREVISION=	2
CATEGORIES=	net
MASTER_SITES=	http://luggage.linux0wnsyou.com/xrdesktop/

MAINTAINER=	eadler@FreeBSD.org
COMMENT=	p5-Gtk frontend to rdesktop

RUN_DEPENDS=	rdesktop:${PORTSDIR}/net/rdesktop \
		p5-Gtk>=0:${PORTSDIR}/x11-toolkits/p5-Gtk

NO_BUILD=	yes
USE_PERL5=	yes

PLIST_FILES=	bin/xrdesktop

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/xrdesktop ${PREFIX}/bin

.include <bsd.port.mk>
