# New ports collection makefile for:	p5-Protocol-SocketIO
# Date created:		2012-01-23
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Protocol-SocketIO/Makefile,v 1.5 2012/11/17 06:02:53 svnexp Exp $
#

PORTNAME=	Protocol-SocketIO
PORTVERSION=	0.04
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:VTI
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Socket.IO protocol implementation

LICENSE=	ART20

BUILD_DEPENDS=	p5-JSON>=0:${PORTSDIR}/converters/p5-JSON
RUN_DEPENDS=	p5-JSON>=0:${PORTSDIR}/converters/p5-JSON

PERL_CONFIGURE=	yes

MAN3=		Protocol::SocketIO.3 \
		Protocol::SocketIO::Handshake.3 \
		Protocol::SocketIO::Message.3 \
		Protocol::SocketIO::Path.3

.include <bsd.port.mk>
