# $FreeBSD: ports/net/p5-Beanstalk-Client/Makefile,v 1.6 2012/11/17 06:00:09 svnexp Exp $

PORTNAME=	Beanstalk-Client
PORTVERSION=	1.06
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:GBARR
PKGNAMEPREFIX=	p5-

MAINTAINER=	vsevolod@FreeBSD.org
COMMENT=	Perl API for beanstalkd, a distributed queue daemon

BUILD_DEPENDS=	p5-YAML-Syck>=0:${PORTSDIR}/textproc/p5-YAML-Syck \
				p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor \
				p5-Error>=0:${PORTSDIR}/lang/p5-Error
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Beanstalk::Client.3 \
		Beanstalk::Pool.3 \
		Beanstalk::Stats.3 \
		Beanstalk::Job.3

.include <bsd.port.mk>
