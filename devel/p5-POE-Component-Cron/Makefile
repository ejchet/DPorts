# Created by: mat
# $FreeBSD: devel/p5-POE-Component-Cron/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	POE-Component-Cron
PORTVERSION=	0.021
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Schedule POE Events using a cron spec

BUILD_DEPENDS=	p5-Test-Simple>=0:${PORTSDIR}/devel/p5-Test-Simple \
		p5-POE>=0:${PORTSDIR}/devel/p5-POE \
		p5-POE-Component-Schedule>=0:${PORTSDIR}/devel/p5-POE-Component-Schedule \
		p5-DateTime-Event-Random>=0:${PORTSDIR}/devel/p5-DateTime-Event-Random \
		p5-DateTime-Event-Cron>=0:${PORTSDIR}/devel/p5-DateTime-Event-Cron
RUN_DEPENDS=	p5-POE>=0:${PORTSDIR}/devel/p5-POE \
		p5-POE-Component-Schedule>=0:${PORTSDIR}/devel/p5-POE-Component-Schedule \
		p5-DateTime-Event-Random>=0:${PORTSDIR}/devel/p5-DateTime-Event-Random \
		p5-DateTime-Event-Cron>=0:${PORTSDIR}/devel/p5-DateTime-Event-Cron

USES=		perl5
USE_PERL5=	configure

MAN3=		POE::Component::Cron.3

.include <bsd.port.mk>
