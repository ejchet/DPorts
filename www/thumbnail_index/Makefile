# Created by: Yoshiro MIHIRA <sanpei@FreeBSD.org>
# $FreeBSD: ports/www/thumbnail_index/Makefile,v 1.14 2013/01/26 16:56:14 svnexp Exp $

PORTNAME=	thumbnail_index
PORTVERSION=	1998.08.10
PORTREVISION=	4
CATEGORIES=	www
MASTER_SITES=	http://www.acme.com/software/thumbnail_index/
DISTNAME=	${PORTNAME}_10aug1998

MAINTAINER=	dinoex@FreeBSD.org
COMMENT=	Make an HTML index file for a bunch of images

RUN_DEPENDS=	djpeg:${PORTSDIR}/graphics/jpeg \
		pnmscale:${PORTSDIR}/graphics/netpbm

WRKSRC=		${WRKDIR}/${PORTNAME}
MAN1=		thumbnail_index.1

NO_BUILD=	yes

.include <bsd.port.mk>
