# New ports collection makefile for:    o2sms
# Date created:				June 13th, 2006
# Whom:	      				Conor McDermottroe <ports@mcdermottroe.com>
#
# $FreeBSD: ports/comms/o2sms/Makefile,v 1.20 2012/11/17 05:55:00 svnexp Exp $
#

PORTNAME=	o2sms
PORTVERSION=	3.36
CATEGORIES=	comms perl5
MASTER_SITES=	CPAN \
		http://www.mackers.com/projects/o2sms/releases/
MASTER_SITE_SUBDIR=	WWW/MACKERS

MAINTAINER=	sylvio@FreeBSD.org
COMMENT=	Send SMS messages via the websites of Irish mobile operators

BUILD_DEPENDS=	p5-Crypt-SSLeay>=0:${PORTSDIR}/security/p5-Crypt-SSLeay \
		p5-IO-Socket-SSL>=0:${PORTSDIR}/security/p5-IO-Socket-SSL \
		p5-Lingua-EN-Squeeze>=0:${PORTSDIR}/textproc/p5-Lingua-EN-Squeeze \
		p5-TestGen4Web-Runner>=0:${PORTSDIR}/www/p5-TestGen4Web-Runner
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN1=		aftsms.1 \
		o2sms.1 \
		meteorsms.1 \
		threesms.1 \
		vodasms.1
MAN3=		WWW::SMS::IE::aftsms.3 \
		WWW::SMS::IE::iesms.3 \
		WWW::SMS::IE::o2sms.3 \
		WWW::SMS::IE::meteorsms.3 \
		WWW::SMS::IE::threesms.3 \
		WWW::SMS::IE::vodasms.3

.include <bsd.port.mk>
