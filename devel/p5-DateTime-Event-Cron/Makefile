# Created by: Mathieu Arnold <m@absolight.net>
# $FreeBSD: devel/p5-DateTime-Event-Cron/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	DateTime-Event-Cron
PORTVERSION=	0.08
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	DateTime extension for generating recurrence sets from crontab

BUILD_DEPENDS=	p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime \
		p5-DateTime-Set>=0:${PORTSDIR}/devel/p5-DateTime-Set \
		p5-Set-Crontab>=0:${PORTSDIR}/devel/p5-Set-Crontab
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		DateTime::Event::Cron.3

.include <bsd.port.mk>
